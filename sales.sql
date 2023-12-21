-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 11:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsales`
--

-- --------------------------------------------------------

--
-- Table structure for table `advanced_payment`
--

CREATE TABLE IF NOT EXISTS `advanced_payment` (
  `payment_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `advanced_payment`
--

INSERT INTO `advanced_payment` (`payment_id`, `emp_id`, `payment_date`, `amount`, `fname`, `lname`) VALUES
(1, 5, '2023-12-02', 10000.00, 'SABIR PATRO', 'PAT1235');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `cat` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `cat`) VALUES
(629, 'Anti-spasmotic'),
(630, 'Antibiotics'),
(631, 'Antiprotoazol'),
(632, 'Antidiabetics'),
(633, 'Antimalaria'),
(634, 'Anti-hypertensive'),
(635, 'Anti-ulcers'),
(638, 'Anti-Vomitus'),
(639, 'Painkiller'),
(640, 'Anti-fungal'),
(641, 'Multivitamins'),
(642, 'Vitamins'),
(643, 'Antihemedics'),
(644, 'Antihaemorhaid'),
(645, 'Lazatives'),
(646, 'Antimotility'),
(647, 'PPI'),
(648, 'NA');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `creditnote`
--

CREATE TABLE `creditnote` (
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
  `amt_paid` int(11) DEFAULT NULL,
  `tme` varchar(255) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `batch_no` varchar(266) DEFAULT NULL,
  `productid` varchar(266) DEFAULT NULL,
  `total` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL,
  `quantity` varchar(266) DEFAULT NULL,
  `customer_id` varchar(266) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_payhist`
--

CREATE TABLE `credit_payhist` (
  `transaction_id` int(11) NOT NULL,
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `credit` int(11) DEFAULT 0,
  `cash` int(11) DEFAULT 0,
  `pay_type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `credit_payhist`
--

INSERT INTO `credit_payhist` (`transaction_id`, `suplier_id`, `suplier_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(1, 1, 'WHITE STAR PHARMA (U) LTD', 0, 24000, 'cash', '2023-11-14'),
(2, 1, 'WHITE STAR PHARMA (U) LTD', 0, 25000, 'cash', '2023-11-16'),
(3, 1, 'WHITE STAR PHARMA (U) LTD', 0, 17500, 'cash', '2023-11-15'),
(4, 1, 'WHITE STAR PHARMA (U) LTD', 0, 39000, 'cash', '2023-11-18'),
(5, 1, 'WHITE STAR PHARMA (U) LTD', 0, 90000, 'cash', '2023-11-18'),
(6, 1, 'WHITE STAR PHARMA (U) LTD', 0, 14000, 'cash', '2023-11-15'),
(7, 2, 'BIOGEN PHARMA LTD', 157100, 0, 'credit', '2023-11-18'),
(8, 2, 'BIOGEN PHARMA LTD', 146600, 0, 'credit', '2023-11-18'),
(9, 2, 'BIOGEN PHARMA LTD', 308500, 0, 'credit', '2023-11-17'),
(10, 2, 'BIOGEN PHARMA LTD', 17100, 0, 'credit', '2023-11-17'),
(11, 2, 'BIOGEN PHARMA LTD', 14000, 0, 'credit', '2023-11-16'),
(12, 2, 'BIOGEN PHARMA LTD', 75000, 0, 'credit', '2023-11-16'),
(13, 2, 'BIOGEN PHARMA LTD', 196300, 0, 'credit', '2023-11-15'),
(14, 2, 'BIOGEN PHARMA LTD', 21000, 0, 'credit', '2023-11-14'),
(15, 2, 'BIOGEN PHARMA LTD', 80500, 0, 'credit', '2023-11-14'),
(16, 2, 'BIOGEN PHARMA LTD', 42000, 0, 'credit', '2023-11-14'),
(17, 2, 'BIOGEN PHARMA LTD', 180850, 0, 'credit', '2023-11-12'),
(18, 2, 'BIOGEN PHARMA LTD', 32800, 0, 'credit', '2023-11-28'),
(19, 2, 'BIOGEN PHARMA LTD', 0, 27000, 'cash', '2023-11-28'),
(20, 2, 'BIOGEN PHARMA LTD', 58750, 0, 'credit', '2023-11-25'),
(21, 2, 'BIOGEN PHARMA LTD', 0, 1000000, 'cash', '2023-11-29'),
(22, 3, 'whitestar', 245700, 0, 'credit', '2023-12-05'),
(23, 3, 'whitestar', 437600, 0, 'credit', '2023-12-09'),
(24, 4, 'Super Medic', 241500, 0, 'credit', '2023-12-09'),
(25, 6, 'Guardian Pharmacy', 492000, 0, 'credit', '2023-12-09'),
(26, 6, 'Guardian Pharmacy', 0, 92001, 'cash', '2023-12-09'),
(27, 4, 'Super Medic', 20200, 0, 'credit', '2023-12-09'),
(28, 4, 'Super Medic', 52933, 0, 'credit', '2023-12-11'),
(29, 4, 'Super Medic', 0, 9000, 'cash', '2023-12-09'),
(30, 4, 'Super Medic', 0, 100000, 'cash', '2023-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(355) DEFAULT NULL,
  `prod_name` varchar(355) DEFAULT NULL,
  `expected_date` varchar(355) DEFAULT NULL,
  `note` varchar(355) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`, `contact_person`) VALUES
(2, 'OJINGA RETAIL SALES', 'JINJA KUTCH ROAD', '0702400431', NULL, NULL, NULL, 'JINJA UGANDA', 'DR SABIR JUMA'),
(3, 'FAYHA MEDICAL CENTER', 'WALUKUBA JINJA UGANDA', '0777183987', NULL, NULL, NULL, 'DELIVER IN TIME\r\n', 'DR EDRINE MULEMA'),
(4, 'M AND E', 'WALUKUBA JINJA', '07777777', '0', '', '0', 'NA', 'MAKOMA'),
(5, 'GALAXY', 'LWANDA', '0788888', NULL, NULL, NULL, 'NA', 'KSTO');

-- --------------------------------------------------------

--
-- Table structure for table `customer_credit`
--

CREATE TABLE `customer_credit` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `credit` int(11) DEFAULT 0,
  `cash` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_credit`
--

INSERT INTO `customer_credit` (`customer_id`, `customer_name`, `credit`, `cash`) VALUES
(3, 'FAYHA MEDICAL CENTER', 969410, 8284975);

-- --------------------------------------------------------

--
-- Table structure for table `cust_payhist`
--

CREATE TABLE `cust_payhist` (
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `credit` int(11) DEFAULT 0,
  `cash` int(11) DEFAULT 0,
  `pay_type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cust_payhist`
--

INSERT INTO `cust_payhist` (`transaction_id`, `customer_id`, `customer_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(1, 3, 'FAYHA MEDICAL CENTER', 83000, 0, 'credit', '2023-11-12'),
(2, 3, 'FAYHA MEDICAL CENTER', 219450, 0, 'credit', '2023-11-13'),
(3, 3, 'FAYHA MEDICAL CENTER', 190050, 0, 'credit', '2023-11-14'),
(4, 3, 'FAYHA MEDICAL CENTER', 163250, 0, 'credit', '2023-11-15'),
(5, 3, 'FAYHA MEDICAL CENTER', 44935, 0, 'credit', '2023-11-16'),
(6, 3, 'FAYHA MEDICAL CENTER', 203700, 0, 'credit', '2023-11-17'),
(7, 3, 'FAYHA MEDICAL CENTER', 707600, 0, 'credit', '2023-12-18'),
(8, 3, 'FAYHA MEDICAL CENTER', 79000, 0, 'credit', '2023-11-21'),
(9, 3, 'FAYHA MEDICAL CENTER', 699500, 0, 'credit', '2023-11-18'),
(10, 3, 'FAYHA MEDICAL CENTER', 79000, 0, 'credit', '2023-11-21'),
(11, 3, 'FAYHA MEDICAL CENTER', 699500, 0, 'credit', '2023-11-18'),
(12, 3, 'FAYHA MEDICAL CENTER', 699500, 0, 'credit', '2023-11-18'),
(13, 3, 'FAYHA MEDICAL CENTER', 699500, 0, 'credit', '2023-11-18'),
(14, 3, 'FAYHA MEDICAL CENTER', 699500, 0, 'credit', '2023-11-18'),
(15, 3, 'FAYHA MEDICAL CENTER', 699500, 0, 'credit', '2023-11-18'),
(16, 3, 'FAYHA MEDICAL CENTER', 699500, 0, 'credit', '2023-11-18'),
(17, 3, 'FAYHA MEDICAL CENTER', 699500, 0, 'credit', '2023-11-18'),
(18, 3, 'FAYHA MEDICAL CENTER', 0, 229200, 'cash', '2023-11-21'),
(19, 3, 'FAYHA MEDICAL CENTER', 64000, 0, 'credit', '2023-11-21'),
(20, 3, 'FAYHA MEDICAL CENTER', 85000, 0, 'credit', '2023-11-18'),
(21, 3, 'FAYHA MEDICAL CENTER', 37000, 0, 'credit', '2023-11-18'),
(22, 3, 'FAYHA MEDICAL CENTER', 33500, 0, 'credit', '2023-11-18'),
(23, 3, 'FAYHA MEDICAL CENTER', 170000, 0, 'credit', '2023-11-18'),
(24, 3, 'FAYHA MEDICAL CENTER', 0, 9500, 'cash', '2023-11-28'),
(25, 3, 'FAYHA MEDICAL CENTER', 24500, 0, 'credit', '2023-11-24'),
(26, 3, 'FAYHA MEDICAL CENTER', 6000, 0, 'credit', '2023-11-24'),
(27, 3, 'FAYHA MEDICAL CENTER', 4000, 0, 'credit', '2023-11-24'),
(28, 3, 'FAYHA MEDICAL CENTER', 5500, 0, 'credit', '2023-11-28'),
(29, 3, 'FAYHA MEDICAL CENTER', 7000, 0, 'credit', '2023-11-28'),
(30, 3, 'FAYHA MEDICAL CENTER', 0, 32000, 'cash', '2023-11-28'),
(31, 3, 'FAYHA MEDICAL CENTER', 0, 32000, 'cash', '2023-11-28'),
(32, 3, 'FAYHA MEDICAL CENTER', 0, 28500, 'cash', '2023-11-28'),
(33, 3, 'FAYHA MEDICAL CENTER', 23500, 0, 'credit', '2023-11-29'),
(34, 3, 'FAYHA MEDICAL CENTER', 23500, 0, 'credit', '2023-11-29'),
(35, 3, 'FAYHA MEDICAL CENTER', 23500, 0, 'credit', '2023-11-29'),
(36, 3, 'FAYHA MEDICAL CENTER', 70900, 0, 'credit', '2023-11-29'),
(37, 3, 'FAYHA MEDICAL CENTER', 0, 79900, 'cash', '2023-11-29'),
(38, 3, 'FAYHA MEDICAL CENTER', 57600, 0, 'credit', '2023-11-29'),
(39, 3, 'FAYHA MEDICAL CENTER', 13750, 0, 'credit', '2023-11-29'),
(40, 3, 'FAYHA MEDICAL CENTER', 13750, 0, 'credit', '2023-11-29'),
(41, 3, 'FAYHA MEDICAL CENTER', 0, 7000000, 'cash', '2023-11-29'),
(42, 3, 'FAYHA MEDICAL CENTER', 852300, 0, 'credit', '2023-12-30'),
(43, 3, 'FAYHA MEDICAL CENTER', 17500, 0, 'credit', '2023-12-09'),
(44, 3, 'FAYHA MEDICAL CENTER', 0, 863785, 'bank', '2023-12-09'),
(45, 3, 'FAYHA MEDICAL CENTER', 0, 100, 'cash', '2023-12-09'),
(46, 3, 'FAYHA MEDICAL CENTER', 0, 9990, 'cash', '2023-12-09'),
(47, 3, 'FAYHA MEDICAL CENTER', 15000, 0, 'credit', '2023-12-09'),
(48, 3, 'FAYHA MEDICAL CENTER', 5500, 0, 'credit', '2023-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `cust_retpayhist`
--

CREATE TABLE `cust_retpayhist` (
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `credit` int(11) DEFAULT 0,
  `cash` int(11) DEFAULT 0,
  `pay_type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cust_retpayhist`
--

INSERT INTO `cust_retpayhist` (`transaction_id`, `customer_id`, `customer_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(1, 3, 'FAYHA MEDICAL CENTER', 0, 0, 'credit', '2023-11-28'),
(2, 3, 'FAYHA MEDICAL CENTER', 0, 0, 'credit', '2023-11-11'),
(3, 3, 'FAYHA MEDICAL CENTER', 0, 0, 'credit', '2023-11-28'),
(4, 3, 'FAYHA MEDICAL CENTER', 0, 0, 'cash', '2023-11-28'),
(5, 3, 'FAYHA MEDICAL CENTER', 0, 0, 'cash', '2023-11-29'),
(6, 3, 'FAYHA MEDICAL CENTER', 0, 100, 'cash', '2023-11-29'),
(7, 3, 'FAYHA MEDICAL CENTER', 249400, 0, 'credit', '2023-12-06'),
(8, 3, 'FAYHA MEDICAL CENTER', 249400, 0, 'credit', '2023-12-06'),
(9, 2, 'OJINGA RETAIL SALES', 0, 501900, 'cash', '2023-12-09'),
(10, 2, 'OJINGA RETAIL SALES', 0, 0, 'cash', '2023-12-09'),
(11, 3, 'FAYHA MEDICAL CENTER', 0, 120, 'bank', '2023-12-09'),
(12, 2, 'OJINGA RETAIL SALES', 825000, 0, 'credit', '2023-12-09'),
(13, 2, 'OJINGA RETAIL SALES', 0, 25000, 'cash', '2023-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `emp_type` varchar(200) DEFAULT NULL,
  `jobtitle` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `higheduc` varchar(200) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sal` int(11) DEFAULT 0,
  `hallowance` int(11) DEFAULT 0,
  `transpallowance` int(11) DEFAULT 0,
  `tin` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `username`, `fname`, `lname`, `gender`, `emp_type`, `jobtitle`, `department`, `higheduc`, `phone`, `sal`, `hallowance`, `transpallowance`, `tin`) VALUES
(1, 'DIRECTOR', 'SABIR', 'JUMA', 'MALE', 'Regular', 'DIRECTOR', 'MANAGEMENT', 'DEGRE', NULL, 1000000, 0, 0, '2399199889'),
(2, 'ADAM', 'ADAM', 'NASUR', 'MALE', 'Regular', 'MANAGER', 'FINANCE', 'DEGREE', NULL, 500000, 0, 0, '921023444444'),
(3, 'ADAMZ', 'ADAM ', 'NASUR', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, ''),
(4, 'PAZD', 'MARTHA', 'PAZ', 'FEMALE', 'Regular', 'PHARMACISIT', 'DISPENSER', 'DIPLOMA', NULL, 350000, 0, 0, '67890'),
(5, 'PAT2', 'SABIR PATRO', 'PAT1235', 'MALE', 'Regular', 'DISPENSER', 'PHARAMACY', 'DEGREE', NULL, 300000, 0, 0, '62984480');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `item`, `amount`, `remarks`, `entry_date`) VALUES
(2, 'RIM PAPER3', '22000', 'PHARMACY', '01/01/70');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_allowance`
--

CREATE TABLE `medical_allowance` (
  `allowance_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `allowance_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `medical_allowance`
--

INSERT INTO `medical_allowance` (`allowance_id`, `emp_id`, `allowance_date`, `amount`, `fname`, `lname`) VALUES
(1, 5, '2023-12-01', 15000.00, 'SABIR PATRO', 'PAT1235');

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
  `onhand_qty` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `qty_sold` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `overtime_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `overtime_date` date DEFAULT NULL,
  `hours_worked` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `overtime`
--

INSERT INTO `overtime` (`overtime_id`, `emp_id`, `fname`, `lname`, `amount`, `overtime_date`, `hours_worked`) VALUES
(1, 5, 'SABIR PATRO', 'PAT1235', 120000, '2024-12-10', 12.00);

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `transaction_id` int(11) NOT NULL DEFAULT 0,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `tin` varchar(255) DEFAULT NULL,
  `salary` varchar(266) DEFAULT NULL,
  `bsalary` varchar(266) DEFAULT NULL,
  `overtime` varchar(266) DEFAULT NULL,
  `bonus` varchar(266) DEFAULT NULL,
  `hllowance` varchar(266) DEFAULT NULL,
  `tllowance` varchar(266) DEFAULT NULL,
  `advpayment` varchar(266) DEFAULT NULL,
  `payee` varchar(266) DEFAULT NULL,
  `nssf` varchar(266) DEFAULT NULL,
  `nsalary` varchar(266) DEFAULT NULL,
  `empid` varchar(266) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `month` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL DEFAULT '',
  `gen_name` varchar(200) NOT NULL DEFAULT '',
  `product_name` varchar(200) NOT NULL DEFAULT 'None',
  `cost` varchar(255) DEFAULT NULL,
  `o_price` varchar(100) NOT NULL DEFAULT '0',
  `price` varchar(266) DEFAULT NULL,
  `profit` varchar(100) NOT NULL DEFAULT '0',
  `supplier` varchar(100) NOT NULL DEFAULT '',
  `onhand_qty` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `qty_sold` int(11) NOT NULL DEFAULT 0,
  `expiry_date` varchar(266) DEFAULT NULL,
  `date_arrival` varchar(500) NOT NULL DEFAULT '',
  `med_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `sell_type` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `tot_buy` varchar(255) DEFAULT NULL,
  `del_no` varchar(255) DEFAULT NULL,
  `qty_left` int(11) DEFAULT NULL,
  `category` varchar(266) DEFAULT NULL,
  `status` varchar(266) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `inventory` varchar(300) DEFAULT NULL,
  `stockval` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(1, 'APIDONESYRUP100MLS', 'APIDONE SYRUP 100MLS', 'APIDONESYRUP100MLS', '0', '0', '20000', '20000', 'None', 0, 0, 0, '', 'APIDONESYRUP100MLS', 'APIDONESYRUP100MLS', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(2, 'METFORMINDENK500MG', 'METFORMIN DENK 500MG', 'METFORMINDENK500MG', '0', '0', '400', '400', 'None', 0, 0, 0, '', 'METFORMINDENK500MG', 'METFORMINDENK500MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI HYPOGLYCEMIC', 'Obsolete', NULL, NULL, 0),
(3, 'METHYLDOPA250MG(HYDOPA)', 'METHYLDOPA 250MG (HYDOPA)', 'METHYLDOPA250MG(HYDOPA)', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'METHYLDOPA250MG(HYDOPA)', 'METHYLDOPA250MG(HYDOPA)', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(4, 'AUGMENTIN625MG', 'AUGMENTIN 625MG', 'AUGMENTIN625MG', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'AUGMENTIN625MG', 'AUGMENTIN625MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(5, 'EPICEPHINE2GM', 'EPICEPHINE 2GM', 'EPICEPHINE2GM', '0', '0', '22000', '22000', 'None', 0, 0, 0, '', 'EPICEPHINE2GM', 'EPICEPHINE2GM', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(6, 'ALBENDAZOLETABS(WORMIN)', 'ALBENDAZOLE TABS (WORMIN)', 'ALBENDAZOLETABS(WORMIN)', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'ALBENDAZOLETABS(WORMIN)', 'ALBENDAZOLETABS(WORMIN)', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIPROTOZOAL', 'Obsolete', NULL, NULL, 0),
(7, 'D-ARTEPADULT', 'D-ARTEP ADULT', 'D-ARTEPADULT', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'D-ARTEPADULT', 'D-ARTEPADULT', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-MALARIAL', 'Obsolete', NULL, NULL, 0),
(8, 'OMEPRAZOLE20MGI.V', 'OMEPRAZOLE  20MG I.V', 'OMEPRAZOLE20MGI.V', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'OMEPRAZOLE20MGI.V', 'OMEPRAZOLE20MGI.V', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'PPI', 'Obsolete', NULL, NULL, 0),
(9, 'ZAHA500MG', 'ZAHA 500MG', 'ZAHA500MG', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'ZAHA500MG', 'ZAHA500MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(10, 'EXAMINATIONGLOVES', 'EXAMINATION GLOVES', 'EXAMINATIONGLOVES', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'EXAMINATIONGLOVES', 'EXAMINATIONGLOVES', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(11, 'STERILEGAUZE', 'STERILE GAUZE', 'STERILEGAUZE', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'STERILEGAUZE', 'STERILEGAUZE', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(12, 'RELCERGEL200ML', 'RELCER GEL 200ML', 'RELCERGEL200ML', '0', '0', '13000', '13000', 'None', 0, 0, 0, '', 'RELCERGEL200ML', 'RELCERGEL200ML', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-ULCERS', 'Obsolete', NULL, NULL, 0),
(13, 'MONTICOPE5/10MG', 'MONTICOPE 5/10MG', 'MONTICOPE5/10MG', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'MONTICOPE5/10MG', 'MONTICOPE5/10MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-ULCERS', 'Obsolete', NULL, NULL, 0),
(14, 'CONTUSPAEDIACTRICLINCTUS', 'CONTUS PAEDIACTRIC LINCTUS', 'CONTUSPAEDIACTRICLINCTUS', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'CONTUSPAEDIACTRICLINCTUS', 'CONTUSPAEDIACTRICLINCTUS', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(15, 'LIMZER', 'LIMZER', 'LIMZER', '0', '0', '1200', '1200', 'None', 0, 0, 0, '', 'LIMZER', 'LIMZER', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-ULCERS', 'Obsolete', NULL, NULL, 0),
(16, 'CREPBANDAGESSMALL', 'CREP BANDAGES SMALL', 'CREPBANDAGESSMALL', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'CREPBANDAGESSMALL', 'CREPBANDAGESSMALL', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(17, 'RL', 'RL', 'RL', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'RL', 'RL', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'NA', 'Obsolete', NULL, NULL, 0),
(18, 'DELEASEDDRYSYRUP', 'DELEASED DRY SYRUP', 'DELEASEDDRYSYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'DELEASEDDRYSYRUP', 'DELEASEDDRYSYRUP', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(19, 'DELEASEDPAEDSYRUP', 'DELEASED PAED SYRUP', 'DELEASEDPAEDSYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'DELEASEDPAEDSYRUP', 'DELEASEDPAEDSYRUP', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(20, 'APFLUESYRUP', 'APFLUE SYRUP', 'APFLUESYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'APFLUESYRUP', 'APFLUESYRUP', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(21, 'SECNIDAZOLETABS', 'SECNIDAZOLE TABS', 'SECNIDAZOLETABS', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'SECNIDAZOLETABS', 'SECNIDAZOLETABS', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANT HEMENTICS', 'Obsolete', NULL, NULL, 0),
(22, 'SECNIDAZOLESYRUP', 'SECNIDAZOLE SYRUP', 'SECNIDAZOLESYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'SECNIDAZOLESYRUP', 'SECNIDAZOLESYRUP', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANT HEMENTICS', 'Obsolete', NULL, NULL, 0),
(23, 'G-CEFTRIA1GM', 'G-CEFTRIA 1GM', 'G-CEFTRIA1GM', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(24, 'NOSPAINJECTION', 'NOSPA INJECTION', 'NOSPAINJECTION', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'NOSPAINJECTION', 'NOSPAINJECTION', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI SPOSMATIC', 'Obsolete', NULL, NULL, 0),
(25, 'NOSPATABS', 'NOSPA TABS', 'NOSPATABS', '0', '0', '700', '700', 'None', 0, 0, 0, '', 'NOSPATABS', 'NOSPATABS', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI SPOSMATIC', 'Obsolete', NULL, NULL, 0),
(26, 'MENTHOXYL', 'MENTHOXYL', 'MENTHOXYL', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'MENTHOXYL', 'MENTHOXYL', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(27, 'VITAMINCTABS', 'VITAMIN C TABS', 'VITAMINCTABS', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'VITAMINCTABS', 'VITAMINCTABS', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'VITAMINS', 'Obsolete', NULL, NULL, 0),
(28, 'FLUCAPS', 'FLUCAPS', 'FLUCAPS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'FLUCAPS', 'FLUCAPS', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(29, 'PANADOLADVANCE', 'PANADOL ADVANCE', 'PANADOLADVANCE', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'PANADOLADVANCE', 'PANADOLADVANCE', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(30, 'PANADOLEXTRA', 'PANADOL EXTRA', 'PANADOLEXTRA', '0', '0', '250', '250', 'None', 0, 0, 0, '', 'PANADOLEXTRA', 'PANADOLEXTRA', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(31, 'PARACETAMOL500MG', 'PARACETAMOL 500MG', 'PARACETAMOL500MG', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'PARACETAMOL500MG', 'PARACETAMOL500MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(32, 'PARACETAMOLI.VINDIA', 'PARACETAMOL I.V INDIA', 'PARACETAMOLI.VINDIA', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'PARACETAMOLI.VINDIA', 'PARACETAMOLI.VINDIA', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(33, 'METOCLOPROMIDE(PLASIL)10MGINJ', 'METOCLOPROMIDE(PLASIL) 10MG INJ', 'METOCLOPROMIDE(PLASIL)10MGINJ', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'METOCLOPROMIDE(PLASIL)10MGINJ', 'METOCLOPROMIDE(PLASIL)10MGINJ', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI MOTILITY', 'Obsolete', NULL, NULL, 0),
(34, 'DYNAPERINJECTION', 'DYNAPER INJECTION', 'DYNAPERINJECTION', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'DYNAPERINJECTION', 'DYNAPERINJECTION', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(35, 'DYNAPERTABS', 'DYNAPER TABS', 'DYNAPERTABS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'DYNAPERTABS', 'DYNAPERTABS', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(36, 'DYNAPERSPRAY', 'DYNAPER SPRAY', 'DYNAPERSPRAY', '0', '0', '20000', '20000', 'None', 0, 0, 0, '', 'DYNAPERSPRAY', 'DYNAPERSPRAY', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(37, 'NS', 'NS', 'NS', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'NS', 'NS', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(38, 'D5%', 'D5%', 'D5%', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'D5%', 'D5%', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(39, 'D50%', 'D50%', 'D50%', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'D50%', 'D50%', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(40, 'GIVINGSETI.V', 'GIVING SET I.V', 'GIVINGSETI.V', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'GIVINGSETI.V', 'GIVINGSETI.V', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(41, 'BLOODGIVINGSET', 'BLOOD GIVING SET', 'BLOODGIVINGSET', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'BLOODGIVINGSET', 'BLOODGIVINGSET', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(42, '20MLSYRINGE', '20ML SYRINGE', '20MLSYRINGE', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', '20MLSYRINGE', '20MLSYRINGE', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(43, '10MLSYRINGE', '10ML SYRINGE', '10MLSYRINGE', '0', '0', '500', '500', 'None', 0, 0, 0, '', '10MLSYRINGE', '10MLSYRINGE', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(44, '5MLSYRINGE', '5ML SYRINGE', '5MLSYRINGE', '0', '0', '300', '300', 'None', 0, 0, 0, '', '5MLSYRINGE', '5MLSYRINGE', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(45, '2MLSYRINGE', '2ML SYRINGE', '2MLSYRINGE', '0', '0', '300', '300', 'None', 0, 0, 0, '', '2MLSYRINGE', '2MLSYRINGE', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(46, 'CANNULAYELLOWI.V24G', 'CANNULA YELLOW I.V 24G', 'CANNULAYELLOWI.V24G', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'CANNULAYELLOWI.V24G', 'CANNULAYELLOWI.V24G', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(47, 'CANNULABLUE22GI.V', 'CANNULA BLUE 22G I.V', 'CANNULABLUE22GI.V', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'CANNULABLUE22GI.V', 'CANNULABLUE22GI.V', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(48, 'CANNULAPINK', 'CANNULA PINK ', 'CANNULAPINK', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'CANNULAPINK', 'CANNULAPINK', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(49, 'AMOXYCLAV625MG(BACTOCLAV)TABS', 'AMOXYCLAV 625MG (BACTOCLAV) TABS', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'AMOXYCLAV625MG(BACTOCLAV)TABS', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(50, 'AUGMENTIN228/5ML', 'AUGMENTIN 228/5ML', 'AUGMENTIN228/5ML', '0', '0', '30000', '30000', 'None', 0, 0, 0, '', 'AUGMENTIN228/5ML', 'AUGMENTIN228/5ML', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(51, 'AUGMENTIN457/5ML', 'AUGMENTIN  457/5ML', 'AUGMENTIN457/5ML', '0', '0', '45000', '45000', 'None', 0, 0, 0, '', 'AUGMENTIN457/5ML', 'AUGMENTIN457/5ML', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(52, 'AMICLOX500MGCAPS', 'AMICLOX 500MG CAPS', 'AMICLOX500MGCAPS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'AMICLOX500MGCAPS', 'AMICLOX500MGCAPS', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(53, 'AMPICLOX500MGINJECTION', 'AMPICLOX 500MG INJECTION', 'AMPICLOX500MGINJECTION', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'AMPICLOX500MGINJECTION', 'AMPICLOX500MGINJECTION', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(54, 'AMPICLOXSYRUPINDIA', 'AMPICLOX SYRUP INDIA', 'AMPICLOXSYRUPINDIA', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'AMPICLOXSYRUPINDIA', 'AMPICLOXSYRUPINDIA', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(55, 'AMOXYCILIN250MGCAPS', 'AMOXYCILIN 250MG CAPS', 'AMOXYCILIN250MGCAPS', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'AMOXYCILIN250MGCAPS', 'AMOXYCILIN250MGCAPS', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(56, 'AMOXYCILIN500MGCAPS', 'AMOXYCILIN 500MG CAPS', 'AMOXYCILIN500MGCAPS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'AMOXYCILIN500MGCAPS', 'AMOXYCILIN500MGCAPS', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(57, 'AMOXYLSYRUP', 'AMOXYL SYRUP', 'AMOXYLSYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'AMOXYLSYRUP', 'AMOXYLSYRUP', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(58, 'METRONIDAZOLE200MG', 'METRONIDAZOLE 200MG ', 'METRONIDAZOLE200MG', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'METRONIDAZOLE200MG', 'METRONIDAZOLE200MG', '0', 'Tab', '2023-09-09', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(59, 'METRONIDAZOLE400MG', 'METRONIDAZOLE 400MG ', 'METRONIDAZOLE400MG', '0', '0', '400', '400', 'None', 0, 0, 0, '', 'METRONIDAZOLE400MG', 'METRONIDAZOLE400MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(60, 'METRONIDAZOLEI.V', 'METRONIDAZOLE I.V', 'METRONIDAZOLEI.V', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'METRONIDAZOLEI.V', 'METRONIDAZOLEI.V', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(61, 'DOXYCILIN100MG', 'DOXYCILIN 100MG', 'DOXYCILIN100MG', '0', '0', '200', '200', 'None', 0, 0, 0, '2023-09-10', 'DOXYCILIN100MG', 'DOXYCILIN100MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(62, 'NITROFUROTOIN100MG', 'NITROFUROTOIN 100MG', 'NITROFUROTOIN100MG', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'NITROFUROTOIN100MG', 'NITROFUROTOIN100MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(63, 'SEPTRIN480', 'SEPTRIN 480', 'SEPTRIN480', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'SEPTRIN480', 'SEPTRIN480', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(64, 'SEPTRIN960', 'SEPTRIN 960', 'SEPTRIN960', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'SEPTRIN960', 'SEPTRIN960', '0', 'Tab', '2023-09-09', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(65, 'CHLORAPHENICAL250MGCAPS', 'CHLORAPHENICAL 250MG CAPS', 'CHLORAPHENICAL250MGCAPS', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'CHLORAPHENICAL250MGCAPS', 'CHLORAPHENICAL250MGCAPS', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(66, 'ARTEFAN20/120MG', 'ARTEFAN 20/120MG', 'ARTEFAN20/120MG', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'ARTEFAN20/120MG', 'ARTEFAN20/120MG', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-MALARIAL', 'Obsolete', NULL, NULL, 0),
(67, 'DUOCOTEXIN', 'DUOCOTEXIN', 'DUOCOTEXIN', '0', '0', '17000', '17000', 'None', 0, 0, 0, '', 'DUOCOTEXIN', 'DUOCOTEXIN', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-MALARIAL', 'Obsolete', NULL, NULL, 0),
(68, 'CRESTOR20MG', 'CRESTOR 20MG', 'CRESTOR20MG', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'CRESTOR20MG', 'CRESTOR20MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(69, 'BISOPROLOL5MGUK', 'BISOPROLOL 5MG UK', 'BISOPROLOL5MGUK', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'BISOPROLOL5MGUK', 'BISOPROLOL5MGUK', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(70, 'ARTESUN30MG', 'ARTESUN 30MG', 'ARTESUN30MG', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'ARTESUN30MG', 'ARTESUN30MG', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-MALARIAL', 'Obsolete', NULL, NULL, 0),
(71, 'ARTESUN60MG', 'ARTESUN 60MG', 'ARTESUN60MG', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'ARTESUN60MG', 'ARTESUN60MG', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-MALARIAL', 'Obsolete', NULL, NULL, 0),
(72, 'ARTESUN120MG', 'ARTESUN 120MG', 'ARTESUN120MG', '0', '0', '15000', '15000', 'None', 0, 0, 0, '', 'ARTESUN120MG', 'ARTESUN120MG', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-MALARIAL', 'Obsolete', NULL, NULL, 0),
(73, 'SUPIROCINOITMENT', 'SUPIROCIN OITMENT', 'SUPIROCINOITMENT', '0', '0', '15000', '15000', 'None', 0, 0, 0, '', 'SUPIROCINOITMENT', 'SUPIROCINOITMENT', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(74, 'DICLODAYCREAM', 'DICLODAY CREAM', 'DICLODAYCREAM', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'DICLODAYCREAM', 'DICLODAYCREAM', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(75, 'CLONEMCREAM', 'CLONEM CREAM', 'CLONEMCREAM', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'CLONEMCREAM', 'CLONEMCREAM', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(76, 'MENTHOPLUS', 'MENTHOPLUS', 'MENTHOPLUS', '0', '0', '2500', '2500', 'None', 0, 0, 0, '', 'MENTHOPLUS', 'MENTHOPLUS', '0', 'Unit', '0203-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(77, 'DRAGONBALM', 'DRAGON BALM', 'DRAGONBALM', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'DRAGONBALM', 'DRAGONBALM', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(78, 'DRAGONLIQUID', 'DRAGON LIQUID', 'DRAGONLIQUID', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'DRAGONLIQUID', 'DRAGONLIQUID', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(79, 'LANSOPRAZOLE(ZOLANAS)30MG', 'LANSOPRAZOLE(ZOLANAS) 30MG', 'LANSOPRAZOLE(ZOLANAS)30MG', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'LANSOPRAZOLE(ZOLANAS)30MG', 'LANSOPRAZOLE(ZOLANAS)30MG', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI ULCERS', 'Obsolete', NULL, NULL, 0),
(80, 'OMEPRAZOLE20MG(OCID|)', 'OMEPRAZOLE 20MG (OCID|)', 'OMEPRAZOLE20MG(OCID|)', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'OMEPRAZOLE20MG(OCID|)', 'OMEPRAZOLE20MG(OCID|)', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'PPI', 'Obsolete', NULL, NULL, 0),
(81, 'CLARITHROMYCIN500MGINDIA', 'CLARITHROMYCIN 500MG INDIA', 'CLARITHROMYCIN500MGINDIA', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'CLARITHROMYCIN500MGINDIA', 'CLARITHROMYCIN500MGINDIA', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(82, 'SURGICALGLOVES7.5MG', 'SURGICAL GLOVES 7.5MG', 'SURGICALGLOVES7.5MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'SURGICALGLOVES7.5MG', 'SURGICALGLOVES7.5MG', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(83, 'ALKA5SYRUP', 'ALKA 5 SYRUP', 'ALKA5SYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'ALKA5SYRUP', 'ALKA5SYRUP', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(84, 'D-ARTEPPAED', 'D-ARTEP PAED', 'D-ARTEPPAED', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'D-ARTEPPAED', 'D-ARTEPPAED', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-MALARIAL', 'Obsolete', NULL, NULL, 0),
(85, 'ETORICOXIB(BRUTAFLAM)90MG', 'ETORICOXIB(BRUTAFLAM) 90MG', 'ETORICOXIB(BRUTAFLAM)90MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'ETORICOXIB(BRUTAFLAM)90MG', 'ETORICOXIB(BRUTAFLAM)90MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(86, 'ETORICOXIB(BRUTAFLAM)60MG', 'ETORICOXIB(BRUTAFLAM) 60MG', 'ETORICOXIB(BRUTAFLAM)60MG', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'ETORICOXIB(BRUTAFLAM)60MG', 'ETORICOXIB(BRUTAFLAM)60MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(87, 'RELCERGEL100ML', 'RELCER GEL 100ML', 'RELCERGEL100ML', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'RELCERGEL100ML', 'RELCERGEL100ML', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI-ULCERS', 'Obsolete', NULL, NULL, 0),
(88, 'ASCORILSYRUP100ML', 'ASCORIL SYRUP 100ML', 'ASCORILSYRUP100ML', '0', '0', '8000', '8000', 'None', 0, 0, 0, '', 'ASCORILSYRUP100ML', 'ASCORILSYRUP100ML', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(89, 'ASCORILSYRUP200ML', 'ASCORIL SYRUP 200ML', 'ASCORILSYRUP200ML', '0', '0', '15000', '15000', 'None', 0, 0, 0, '', 'ASCORILSYRUP200ML', 'ASCORILSYRUP200ML', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(90, 'CEFIXIME400MG(CEFWELL)', 'CEFIXIME 400MG (CEFWELL)', 'CEFIXIME400MG(CEFWELL)', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'CEFIXIME400MG(CEFWELL)', 'CEFIXIME400MG(CEFWELL)', '0', 'Tab', '2023-09-20', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(91, 'DIAZEPAMINJ5MG/ML', 'DIAZEPAM INJ 5MG/ML', 'DIAZEPAMINJ5MG/ML', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'DIAZEPAMINJ5MG/ML', 'DIAZEPAMINJ5MG/ML', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'BARBITRATE', 'Obsolete', NULL, NULL, 0),
(92, 'BINLINERSMEDIUM', 'BIN LINERS MEDIUM', 'BINLINERSMEDIUM', '0', '0', '1800', '1800', 'None', 0, 0, 0, '', 'BINLINERSMEDIUM', 'BINLINERSMEDIUM', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(93, 'CEFIXIM200MGINDIATABS', 'CEFIXIM 200MG INDIA TABS', 'CEFIXIM200MGINDIATABS', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'CEFIXIM200MGINDIATABS', 'CEFIXIM200MGINDIATABS', '0', 'Tab', '2022-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(94, 'CEFIXSYRUP', 'CEFIX SYRUP', 'CEFIXSYRUP', '0', '0', '35000', '35000', 'None', 0, 0, 0, '', 'CEFIXSYRUP', 'CEFIXSYRUP', '0', 'Bot', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(95, 'PARADENK250MG', 'PARA DENK 250MG', 'PARADENK250MG', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'PARADENK250MG', 'PARADENK250MG', '0', 'Tab', '2023-09-02', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(96, 'PARADENK125MG', 'PARA DENK 125MG', 'PARADENK125MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'PARADENK125MG', 'PARADENK125MG', '0', 'Tab', '2023-09-02', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(97, 'DICLODENKRECTAL100MG', 'DICLODENK RECTAL 100MG', 'DICLODENKRECTAL100MG', '0', '0', '2500', '2500', 'None', 0, 0, 0, '', 'DICLODENKRECTAL100MG', 'DICLODENKRECTAL100MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(98, 'MAXITROLEYEDROP', 'MAXITROL EYE DROP', 'MAXITROLEYEDROP', '0', '0', '15000', '15000', 'None', 0, 0, 0, '', 'MAXITROLEYEDROP', 'MAXITROLEYEDROP', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(99, 'TRAMADOLINJ', 'TRAMADOL INJ', 'TRAMADOLINJ', '0', '0', '2000', '2000', 'None', 0, 0, 0, '2023-09-10', 'TRAMADOLINJ', 'TRAMADOLINJ', '0', 'Sachet', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(100, 'TRAMADOLCAPS', 'TRAMADOL CAPS', 'TRAMADOLCAPS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'TRAMADOLCAPS', 'TRAMADOLCAPS', '0', 'Unit', '2023-09-02', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(101, 'NAPROXEN250MG', 'NAPROXEN 250MG', 'NAPROXEN250MG', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'NAPROXEN250MG', 'NAPROXEN250MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(102, 'ORS', 'ORS', 'ORS', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'ORS', 'ORS', '0', 'Sachet', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(103, 'CIPRO500MGINDIA', 'CIPRO 500MG INDIA', 'CIPRO500MGINDIA', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'CIPRO500MGINDIA', 'CIPRO500MGINDIA', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(104, 'CIPRODENK500MG', 'CIPRODENK 500MG', 'CIPRODENK500MG', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'CIPRODENK500MG', 'CIPRODENK500MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(105, 'LEVODENK500MG', 'LEVODENK 500MG', 'LEVODENK500MG', '0', '0', '4000', '4000', 'None', 0, 0, 0, '0223-09-20', 'LEVODENK500MG', 'LEVODENK500MG', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(106, 'LEVOFLOXACIN500MG(LEVIN)', 'LEVOFLOXACIN 500MG (LEVIN)', 'LEVOFLOXACIN500MG(LEVIN)', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'LEVOFLOXACIN500MG(LEVIN)', 'LEVOFLOXACIN500MG(LEVIN)', '0', 'Tab', '2023-09-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(107, 'TRANSPOREPLASTERLARGE', 'TRANSPORE PLASTER LARGE', 'TRANSPOREPLASTERLARGE', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'TRANSPOREPLASTERLARGE', 'TRANSPOREPLASTERLARGE', '0', 'Unit', '2023-09-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(108, 'TRANSPOREPLASTERMEDIUM', 'TRANSPORE PLASTER MEDIUM', 'TRANSPOREPLASTERMEDIUM', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'TRANSPOREPLASTERMEDIUM', 'TRANSPOREPLASTERMEDIUM', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(109, 'SKDERM15GM', 'SK DERM 15GM', 'SKDERM15GM', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'SKDERM15GM', 'SKDERM15GM', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(110, 'SKDERM30GM', 'SK DERM 30GM', 'SKDERM30GM', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'SKDERM30GM', 'SKDERM30GM', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(111, 'CLOTRIMAZOLOECREAM(UNISTEN)', 'CLOTRIMAZOLOE CREAM(UNISTEN)', 'CLOTRIMAZOLOECREAM(UNISTEN)', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'CLOTRIMAZOLOECREAM(UNISTEN)', 'CLOTRIMAZOLOECREAM(UNISTEN)', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(112, 'ONCALLPLUSSTRIP', 'ONCALL PLUS STRIP', 'ONCALLPLUSSTRIP', '0', '0', '40000', '40000', 'None', 0, 0, 0, '', 'ONCALLPLUSSTRIP', 'ONCALLPLUSSTRIP', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(113, 'ONCALLPLUSGLUCOMETER', 'ONCALL PLUS GLUCOMETER', 'ONCALLPLUSGLUCOMETER', '0', '0', '55000', '55000', 'None', 0, 0, 0, '', 'ONCALLPLUSGLUCOMETER', 'ONCALLPLUSGLUCOMETER', '0', 'Unit', '2023-12-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(114, 'GRAMOCEFO400MG', 'GRAMOCEF O 400MG', 'GRAMOCEFO400MG', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'GRAMOCEFO400MG', 'GRAMOCEFO400MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(115, 'GRAMOCEFO200MG', 'GRAMOCEF O 200MG', 'GRAMOCEFO200MG', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'GRAMOCEFO200MG', 'GRAMOCEFO200MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(116, 'LIVOLIN', 'LIVOLIN', 'LIVOLIN', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'LIVOLIN', 'LIVOLIN', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MULTMINERALS', 'Obsolete', NULL, NULL, 0),
(117, 'GINSOMIN', 'GINSOMIN', 'GINSOMIN', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'GINSOMIN', 'GINSOMIN', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(118, 'FORMONIDEINHALER200MCG', 'FORMONIDE INHALER 200MCG', 'FORMONIDEINHALER200MCG', '0', '0', '45000', '45000', 'None', 0, 0, 0, '', 'FORMONIDEINHALER200MCG', 'FORMONIDEINHALER200MCG', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'INHALER', 'Obsolete', NULL, NULL, 0),
(119, 'PROBETANEYE/EARDROP', 'PROBETA N EYE/EAR DROP', 'PROBETANEYE/EARDROP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'PROBETANEYE/EARDROP', 'PROBETANEYE/EARDROP', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(120, 'GENTAEYE/EARDROP', 'GENTA EYE/EAR DROP', 'GENTAEYE/EARDROP', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'GENTAEYE/EARDROP', 'GENTAEYE/EARDROP', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(121, 'AZITHROMYCIN500MGINDIA', 'AZITHROMYCIN 500MG INDIA', 'AZITHROMYCIN500MGINDIA', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'AZITHROMYCIN500MGINDIA', 'AZITHROMYCIN500MGINDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(122, 'ZAHA250MG', 'ZAHA 250MG', 'ZAHA250MG', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'ZAHA250MG', 'ZAHA250MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(123, 'ZAHASYRUP', 'ZAHA SYRUP', 'ZAHASYRUP', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'ZAHASYRUP', 'ZAHASYRUP', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(124, 'PENEGRA50MG', 'PENEGRA 50MG', 'PENEGRA50MG', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'PENEGRA50MG', 'PENEGRA50MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(125, 'PENEGRA100MG', 'PENEGRA 100MG', 'PENEGRA100MG', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'PENEGRA100MG', 'PENEGRA100MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(126, 'KAMAGRA100MG', 'KAMAGRA 100MG', 'KAMAGRA100MG', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'KAMAGRA100MG', 'KAMAGRA100MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(127, 'KAMAGRA50MG', 'KAMAGRA 50MG', 'KAMAGRA50MG', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'KAMAGRA50MG', 'KAMAGRA50MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(128, 'CETRIZINE10MGINDIA', 'CETRIZINE 10MG INDIA', 'CETRIZINE10MGINDIA', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'CETRIZINE10MGINDIA', 'CETRIZINE10MGINDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(129, 'PREDNISOLINETABSINDIA', 'PREDNISOLINE TABS INDIA', 'PREDNISOLINETABSINDIA', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'PREDNISOLINETABSINDIA', 'PREDNISOLINETABSINDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(130, 'DEXAMETHASONE0.5MGTABS', 'DEXAMETHASONE 0.5MG TABS', 'DEXAMETHASONE0.5MGTABS', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'DEXAMETHASONE0.5MGTABS', 'DEXAMETHASONE0.5MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(131, 'AMLO-DENK5MG', 'AMLO-DENK 5MG', 'AMLO-DENK5MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'AMLO-DENK5MG', 'AMLO-DENK5MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(132, 'AMLO-DENK10MG', 'AMLO-DENK 10MG', 'AMLO-DENK10MG', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'AMLO-DENK10MG', 'AMLO-DENK10MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(133, 'VITAMINBCOMPLEXTABS', 'VITAMIN B COMPLEX TABS', 'VITAMINBCOMPLEXTABS', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'VITAMINBCOMPLEXTABS', 'VITAMINBCOMPLEXTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(134, 'VITAMINBCOMPLEXINJ', 'VITAMIN B COMPLEX INJ', 'VITAMINBCOMPLEXINJ', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'VITAMINBCOMPLEXINJ', 'VITAMINBCOMPLEXINJ', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(135, 'MULTVIT', 'MULTVIT', 'MULTVIT', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'MULTVIT', 'MULTVIT', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(136, 'MAGNESIUMTABS', 'MAGNESIUM TABS', 'MAGNESIUMTABS', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'MAGNESIUMTABS', 'MAGNESIUMTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'PPI', 'Obsolete', NULL, NULL, 0),
(137, 'MAGNESIUMSYRUP', 'MAGNESIUM SYRUP', 'MAGNESIUMSYRUP', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'MAGNESIUMSYRUP', 'MAGNESIUMSYRUP', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI-ULCERS', 'Obsolete', NULL, NULL, 0),
(138, 'ALWAYS', 'ALWAYS', 'ALWAYS', '0', '0', '3500', '3500', 'None', 0, 0, 0, '', 'ALWAYS', 'ALWAYS', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(139, 'PRINCESS', 'PRINCESS', 'PRINCESS', '0', '0', '2500', '2500', 'None', 0, 0, 0, '', 'PRINCESS', 'PRINCESS', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(140, 'SOFTCARE', 'SOFTCARE', 'SOFTCARE', '0', '0', '3500', '3500', 'None', 0, 0, 0, '', 'SOFTCARE', 'SOFTCARE', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(141, 'METFORMINDENK1000MG', 'METFORMIN DENK 1000MG', 'METFORMINDENK1000MG', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'METFORMINDENK1000MG', 'METFORMINDENK1000MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(142, 'MYOSPAZ', 'MYOSPAZ', 'MYOSPAZ', '0', '0', '600', '600', 'None', 0, 0, 0, '', 'MYOSPAZ', 'MYOSPAZ', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MUSCLE RELAXANT', 'Obsolete', NULL, NULL, 0),
(143, 'DURAGESIC', 'DURAGESIC', 'DURAGESIC', '0', '0', '600', '600', 'None', 0, 0, 0, '', 'DURAGESIC', 'DURAGESIC', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MUSCLE RELAXANT', 'Obsolete', NULL, NULL, 0),
(144, 'TRAP', 'TRAP', 'TRAP', '0', '0', '400', '400', 'None', 0, 0, 0, '', 'TRAP', 'TRAP', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MUSCLE RELAXANT', 'Obsolete', NULL, NULL, 0),
(145, 'BACKUP', 'BACKUP', 'BACKUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'BACKUP', 'BACKUP', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'HORMONAL PILLS', 'Obsolete', NULL, NULL, 0),
(146, 'LYDIA', 'LYDIA', 'LYDIA', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'LYDIA', 'LYDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'HORMONAL PILLS', 'Obsolete', NULL, NULL, 0),
(147, 'POSTINOR2', 'POSTINOR 2', 'POSTINOR2', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'POSTINOR2', 'POSTINOR2', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'HORMONAL PILLS', 'Obsolete', NULL, NULL, 0),
(148, 'PILLPLANCOC', 'PILLPLAN COC', 'PILLPLANCOC', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'PILLPLANCOC', 'PILLPLANCOC', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'HORMONAL PILLS', 'Obsolete', NULL, NULL, 0),
(149, 'MICROGYNON', 'MICROGYNON', 'MICROGYNON', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'MICROGYNON', 'MICROGYNON', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'HORMONAL PILLS', 'Obsolete', NULL, NULL, 0),
(150, 'COLDAFLEXTABS', 'COLDAFLEX TABS', 'COLDAFLEXTABS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'COLDAFLEXTABS', 'COLDAFLEXTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(151, 'SINARESTTABS', 'SINAREST TABS', 'SINARESTTABS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'SINARESTTABS', 'SINARESTTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(152, 'PAINEX', 'PAINEX', 'PAINEX', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'PAINEX', 'PAINEX', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(153, 'ACTION', 'ACTION', 'ACTION', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'ACTION', 'ACTION', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(154, 'HEDONTABS', 'HEDON TABS', 'HEDONTABS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'HEDONTABS', 'HEDONTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(155, 'HEDEXTABS', 'HEDEX TABS', 'HEDEXTABS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'HEDEXTABS', 'HEDEXTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(156, 'COUGHLINCTUSSMALL', 'COUGH LINCTUS SMALL', 'COUGHLINCTUSSMALL', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'COUGHLINCTUSSMALL', 'COUGHLINCTUSSMALL', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(157, 'COUGHLINCTUSBIG', 'COUGH LINCTUS BIG', 'COUGHLINCTUSBIG', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'COUGHLINCTUSBIG', 'COUGHLINCTUSBIG', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(158, 'FLUFEDTABS', 'FLUFED TABS', 'FLUFEDTABS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'FLUFEDTABS', 'FLUFEDTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(159, 'TOFFPLUS', 'TOFF PLUS', 'TOFFPLUS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'TOFFPLUS', 'TOFFPLUS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(160, 'KETACONAZOLETABSINDIA', 'KETACONAZOLE TABS INDIA', 'KETACONAZOLETABSINDIA', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'KETACONAZOLETABSINDIA', 'KETACONAZOLETABSINDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(161, 'FLUCONAZOLECAPS200MGINDA', 'FLUCONAZOLE CAPS 200MG INDA', 'FLUCONAZOLECAPS200MGINDA', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'FLUCONAZOLECAPS200MGINDA', 'FLUCONAZOLECAPS200MGINDA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(162, 'LIGNOCAININJ', 'LIGNOCAIN INJ', 'LIGNOCAININJ', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'LIGNOCAININJ', 'LIGNOCAININJ', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'LOCAL ANESTHESIA', 'Obsolete', NULL, NULL, 0),
(163, 'TELMISARTANH(TELVAS)80/12.5MG', 'TELMISARTAN H (TELVAS) 80/12.5MG', 'TELMISARTANH(TELVAS)80/12.5MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'TELMISARTANH(TELVAS)80/12.5MG', 'TELMISARTANH(TELVAS)80/12.5MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(164, 'TELMISARTAN(TELVAS)80MG', 'TELMISARTAN  (TELVAS) 80MG', 'TELMISARTAN(TELVAS)80MG', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'TELMISARTAN(TELVAS)80MG', 'TELMISARTAN(TELVAS)80MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(165, 'TELMISARTAN(TELVAS)40MG', 'TELMISARTAN  (TELVAS) 40MG', 'TELMISARTAN(TELVAS)40MG', '0', '0', '600', '600', 'None', 0, 0, 0, '', 'TELMISARTAN(TELVAS)40MG', 'TELMISARTAN(TELVAS)40MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(166, 'TELMISARTANH(TELVAS)40/12.5MG', 'TELMISARTAN H (TELVAS) 40/12.5MG', 'TELMISARTANH(TELVAS)40/12.5MG', '0', '0', '800', '800', 'None', 0, 0, 0, '', 'TELMISARTANH(TELVAS)40/12.5MG', 'TELMISARTANH(TELVAS)40/12.5MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(167, 'GLIMEPRIDE(EUGLIME)4MG', 'GLIMEPRIDE(EUGLIME) 4MG', 'GLIMEPRIDE(EUGLIME)4MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'GLIMEPRIDE(EUGLIME)4MG', 'GLIMEPRIDE(EUGLIME)4MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI DIABETICS', 'Obsolete', NULL, NULL, 0),
(168, 'GLIMEPRIDE(EUGLIM)2MG', 'GLIMEPRIDE(EUGLIM) 2MG', 'GLIMEPRIDE(EUGLIM)2MG', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'GLIMEPRIDE(EUGLIM)2MG', 'GLIMEPRIDE(EUGLIM)2MG', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI DIABETICS', 'Obsolete', NULL, NULL, 0),
(169, 'HYDROXYUREA250MG', 'HYDROXYUREA 250MG', 'HYDROXYUREA250MG', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'HYDROXYUREA250MG', 'HYDROXYUREA250MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(170, 'HYDROXYUREA500MG', 'HYDROXYUREA 500MG', 'HYDROXYUREA500MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'HYDROXYUREA500MG', 'HYDROXYUREA500MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(171, 'WATERFORINJ', 'WATER FOR INJ', 'WATERFORINJ', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'WATERFORINJ', 'WATERFORINJ', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(172, 'COLDEASECAPS', 'COLDEASE CAPS', 'COLDEASECAPS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'COLDEASECAPS', 'COLDEASECAPS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(173, 'CONTUSTABS', 'CONTUS TABS', 'CONTUSTABS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'CONTUSTABS', 'CONTUSTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(174, 'ERYTHROMYCIN250MGTABS', 'ERYTHROMYCIN 250MG TABS', 'ERYTHROMYCIN250MGTABS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'ERYTHROMYCIN250MGTABS', 'ERYTHROMYCIN250MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(175, 'FLUCAMOXCAPS500MG', 'FLUCAMOX CAPS 500MG', 'FLUCAMOXCAPS500MG', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'FLUCAMOXCAPS500MG', 'FLUCAMOXCAPS500MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(176, 'CURAMOLPLUS', 'CURAMOL PLUS', 'CURAMOLPLUS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'CURAMOLPLUS', 'CURAMOLPLUS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(177, 'EXTRADOL', 'EXTRADOL', 'EXTRADOL', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'EXTRADOL', 'EXTRADOL', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(178, 'FLURID', 'FLURID', 'FLURID', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'FLURID', 'FLURID', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(179, 'KISSCONDOMSTRABERRY', 'KISS CONDOM STRABERRY', 'KISSCONDOMSTRABERRY', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'KISSCONDOMSTRABERRY', 'KISSCONDOMSTRABERRY', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(180, 'KISSCONDOMSTUNDED', 'KISS CONDOM STUNDED', 'KISSCONDOMSTUNDED', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'KISSCONDOMSTUNDED', 'KISSCONDOMSTUNDED', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(181, 'CEPHALEXINSYRUP', 'CEPHALEXIN SYRUP', 'CEPHALEXINSYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'CEPHALEXINSYRUP', 'CEPHALEXINSYRUP', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(182, 'CEPHALEXINCAPS250MG', 'CEPHALEXIN CAPS 250MG', 'CEPHALEXINCAPS250MG', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'CEPHALEXINCAPS250MG', 'CEPHALEXINCAPS250MG', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(183, 'HAEMOFORTESYRUP90MLS', 'HAEMOFORTE SYRUP 90MLS', 'HAEMOFORTESYRUP90MLS', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'HAEMOFORTESYRUP90MLS', 'HAEMOFORTESYRUP90MLS', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(184, 'HAEMOFORTE200MLS', 'HAEMOFORTE 200MLS', 'HAEMOFORTE200MLS', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'HAEMOFORTE200MLS', 'HAEMOFORTE200MLS', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(185, 'CANDIDV6PESSARIES', 'CANDID V6 PESSARIES', 'CANDIDV6PESSARIES', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'CANDIDV6PESSARIES', 'CANDIDV6PESSARIES', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(186, 'CANDIDVGEL', 'CANDID V GEL', 'CANDIDVGEL', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'CANDIDVGEL', 'CANDIDVGEL', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(187, 'DREZVGEL', 'DREZ V GEL', 'DREZVGEL', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'DREZVGEL', 'DREZVGEL', '0', 'Tube', '2023-10-01', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(188, 'MCGCREAM', 'MCG CREAM', 'MCGCREAM', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'MCGCREAM', 'MCGCREAM', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(189, 'CANDIDERMCREAM', 'CANDIDERM CREAM', 'CANDIDERMCREAM', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'CANDIDERMCREAM', 'CANDIDERMCREAM', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(190, 'ABNALNASOLDROP', 'ABNAL NASOL DROP', 'ABNALNASOLDROP', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'ABNALNASOLDROP', 'ABNALNASOLDROP', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(191, 'ISORYNPAED', 'ISORYN PAED', 'ISORYNPAED', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'ISORYNPAED', 'ISORYNPAED', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(192, 'ISORYNADULT', 'ISORYN ADULT', 'ISORYNADULT', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'ISORYNADULT', 'ISORYNADULT', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(193, 'CONTUSDROP', 'CONTUS DROP', 'CONTUSDROP', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'CONTUSDROP', 'CONTUSDROP', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(194, 'GROVITSYRUP', 'GROVIT SYRUP', 'GROVITSYRUP', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'GROVITSYRUP', 'GROVITSYRUP', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(195, 'GROVITDROP', 'GROVIT DROP', 'GROVITDROP', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'GROVITDROP', 'GROVITDROP', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(196, 'FUROSEMIDEINJ', 'FUROSEMIDE INJ', 'FUROSEMIDEINJ', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'FUROSEMIDEINJ', 'FUROSEMIDEINJ', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(197, 'FUROSEMIDE40MGTABS', 'FUROSEMIDE 40MG TABS', 'FUROSEMIDE40MGTABS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'FUROSEMIDE40MGTABS', 'FUROSEMIDE40MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(198, 'ONDASENTRON8MGINJ', 'ONDASENTRON 8MG INJ', 'ONDASENTRON8MGINJ', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'ONDASENTRON8MGINJ', 'ONDASENTRON8MGINJ', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI MOTILITY', 'Obsolete', NULL, NULL, 0),
(199, 'ONDASENTRON4MGINJ', 'ONDASENTRON 4MG INJ', 'ONDASENTRON4MGINJ', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'ONDASENTRON4MGINJ', 'ONDASENTRON4MGINJ', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI MOTILITY', 'Obsolete', NULL, NULL, 0),
(200, 'ONDASENTRON4MGTABS', 'ONDASENTRON 4MG TABS', 'ONDASENTRON4MGTABS', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'ONDASENTRON4MGTABS', 'ONDASENTRON4MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI MOTILITY', 'Obsolete', NULL, NULL, 0),
(201, 'ONDASENTRON8MGTABS', 'ONDASENTRON 8MG TABS', 'ONDASENTRON8MGTABS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'ONDASENTRON8MGTABS', 'ONDASENTRON8MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI MOTILITY', 'Obsolete', NULL, NULL, 0),
(202, 'TRENAXAMICACIDINJ', 'TRENAXAMIC ACID INJ', 'TRENAXAMICACIDINJ', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'TRENAXAMICACIDINJ', 'TRENAXAMICACIDINJ', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FIBRINOLYTICS', 'Obsolete', NULL, NULL, 0),
(203, 'TRENAXAMICACIDTABS', 'TRENAXAMIC ACID TABS', 'TRENAXAMICACIDTABS', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'TRENAXAMICACIDTABS', 'TRENAXAMICACIDTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FIBRINOLYTICS', 'Obsolete', NULL, NULL, 0),
(204, 'ACICLOVIR200MGTABSINDIA', 'ACICLOVIR 200MG TABS INDIA', 'ACICLOVIR200MGTABSINDIA', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'ACICLOVIR200MGTABSINDIA', 'ACICLOVIR200MGTABSINDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIVIRAL', 'Obsolete', NULL, NULL, 0),
(205, 'ACICLOVIRCREAM', 'ACICLOVIR CREAM', 'ACICLOVIRCREAM', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'ACICLOVIRCREAM', 'ACICLOVIRCREAM', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI-VIRAL', 'Obsolete', NULL, NULL, 0),
(206, 'ZARICORTCREAM', 'ZARICORT CREAM', 'ZARICORTCREAM', '0', '0', '16000', '16000', 'None', 0, 0, 0, '', 'ZARICORTCREAM', 'ZARICORTCREAM', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(207, 'ORACUREGEL', 'ORACURE GEL', 'ORACUREGEL', '0', '0', '16000', '16000', 'None', 0, 0, 0, '', 'ORACUREGEL', 'ORACUREGEL', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(208, 'BENZOXCREAM', 'BENZOX CREAM', 'BENZOXCREAM', '0', '0', '7000', '7000', 'None', 0, 0, 0, '', 'BENZOXCREAM', 'BENZOXCREAM', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(209, 'HYDROCORTISONECREAMINDIA', 'HYDROCORTISONE CREAM INDIA', 'HYDROCORTISONECREAMINDIA', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'HYDROCORTISONECREAMINDIA', 'HYDROCORTISONECREAMINDIA', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0);
INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(210, 'HYDROCORTISONEINJINDIA', 'HYDROCORTISONE INJ INDIA', 'HYDROCORTISONEINJINDIA', '0', '0', '3000', '3000', 'None', 0, 0, 0, '2023-10-10', 'HYDROCORTISONEINJINDIA', 'HYDROCORTISONEINJINDIA', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'CORTICOSTERIOD', 'Obsolete', NULL, NULL, 0),
(211, 'MEDIVINSCREAM', 'MEDIVIN S CREAM', 'MEDIVINSCREAM', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'MEDIVINSCREAM', 'MEDIVINSCREAM', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(212, 'MEDIVINCREAM', 'MEDIVIN CREAM', 'MEDIVINCREAM', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'MEDIVINCREAM', 'MEDIVINCREAM', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(213, 'MEDIVINOITMENT', 'MEDIVIN OITMENT', 'MEDIVINOITMENT', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'MEDIVINOITMENT', 'MEDIVINOITMENT', '12', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(214, 'SILVEREXCREAM', 'SILVEREX CREAM', 'SILVEREXCREAM', '0', '0', '13000', '13000', 'None', 0, 0, 0, '', 'SILVEREXCREAM', 'SILVEREXCREAM', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(215, 'FUNGISAFECREAM', 'FUNGISAFE CREAM', 'FUNGISAFECREAM', '0', '0', '15000', '15000', 'None', 0, 0, 0, '', 'FUNGISAFECREAM', 'FUNGISAFECREAM', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(216, 'FUNGISAFE250MGTABS', 'FUNGISAFE 250MG TABS', 'FUNGISAFE250MGTABS', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'FUNGISAFE250MGTABS', 'FUNGISAFE250MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FUNGAL', 'Obsolete', NULL, NULL, 0),
(217, 'NEOMYCINCREAM', 'NEOMYCIN CREAM', 'NEOMYCINCREAM', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'NEOMYCINCREAM', 'NEOMYCINCREAM', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(218, 'EUDERMCREAM', 'EUDERM CREAM', 'EUDERMCREAM', '0', '0', '15000', '15000', 'None', 0, 0, 0, '', 'EUDERMCREAM', 'EUDERMCREAM', '-1', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(219, 'BENZATHINEINJ', 'BENZATHINE INJ', 'BENZATHINEINJ', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'BENZATHINEINJ', 'BENZATHINEINJ', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(220, 'PISA4.5MGINJ', 'PISA 4.5MG INJ', 'PISA4.5MGINJ', '0', '0', '17000', '17000', 'None', 0, 0, 0, '', 'PISA4.5MGINJ', 'PISA4.5MGINJ', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(221, 'CIPROI.V', 'CIPRO I.V', 'CIPROI.V', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'CIPROI.V', 'CIPROI.V', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(222, 'FLUCAMOXSUSPENSION', 'FLUCAMOX SUSPENSION', 'FLUCAMOXSUSPENSION', '0', '0', '20000', '20000', 'None', 0, 0, 0, '', 'FLUCAMOXSUSPENSION', 'FLUCAMOXSUSPENSION', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(223, 'MAXITROLOITMENT', 'MAXITROL OITMENT', 'MAXITROLOITMENT', '0', '0', '15000', '15000', 'None', 0, 0, 0, '', 'MAXITROLOITMENT', 'MAXITROLOITMENT', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(224, 'DEXONAEYE/EARDROP', 'DEXONA EYE/EAR DROP', 'DEXONAEYE/EARDROP', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'DEXONAEYE/EARDROP', 'DEXONAEYE/EARDROP', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'CORTICOSTERIOD', 'Obsolete', NULL, NULL, 0),
(225, 'T.E.O', 'T.E.O', 'T.E.O', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'T.E.O', 'T.E.O', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(226, 'BETASERC8MG', 'BETASERC 8MG', 'BETASERC8MG', '0', '0', '1200', '1200', 'None', 0, 0, 0, '', 'BETASERC8MG', 'BETASERC8MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(227, 'BETASERC16MG', 'BETASERC 16MG', 'BETASERC16MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'BETASERC16MG', 'BETASERC16MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(228, 'CALCIVITA', 'CALCIVITA', 'CALCIVITA', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'CALCIVITA', 'CALCIVITA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(229, 'FERROTONE', 'FERROTONE', 'FERROTONE', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'FERROTONE', 'FERROTONE', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(230, 'TORASDENK5MG', 'TORASDENK 5MG', 'TORASDENK5MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'TORASDENK5MG', 'TORASDENK5MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(231, 'TORASDENK10MG', 'TORASDENK 10MG', 'TORASDENK10MG', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'TORASDENK10MG', 'TORASDENK10MG', '-6', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(232, 'NOOTROPIL800MCG', 'NOOTROPIL 800MCG', 'NOOTROPIL800MCG', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'NOOTROPIL800MCG', 'NOOTROPIL800MCG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(233, 'CLOPIDOGREL75MGUK', 'CLOPIDOGREL 75MG UK', 'CLOPIDOGREL75MGUK', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'CLOPIDOGREL75MGUK', 'CLOPIDOGREL75MGUK', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(234, 'AMLODIPINE(AMLODAC)5MG', 'AMLODIPINE (AMLODAC) 5MG', 'AMLODIPINE(AMLODAC)5MG', '0', '0', '800', '800', 'None', 0, 0, 0, '', 'AMLODIPINE(AMLODAC)5MG', 'AMLODIPINE(AMLODAC)5MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(235, 'AMLODIPINE(AMLODAC)10MG', 'AMLODIPINE (AMLODAC) 10MG', 'AMLODIPINE(AMLODAC)10MG', '0', '0', '800', '800', 'None', 0, 0, 0, '', 'AMLODIPINE(AMLODAC)10MG', 'AMLODIPINE(AMLODAC)10MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(236, 'NEBILONG5MG', 'NEBILONG 5MG', 'NEBILONG5MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'NEBILONG5MG', 'NEBILONG5MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(237, 'DAPAGLIFOZIN(FORZIGA)10MG', 'DAPAGLIFOZIN (FORZIGA)10MG', 'DAPAGLIFOZIN(FORZIGA)10MG', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'DAPAGLIFOZIN(FORZIGA)10MG', 'DAPAGLIFOZIN(FORZIGA)10MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(238, 'DAPAGLIFOZIN(DAPZIN)10MG', 'DAPAGLIFOZIN (DAPZIN)10MG', 'DAPAGLIFOZIN(DAPZIN)10MG', '0', '0', '2500', '2500', 'None', 0, 0, 0, '', 'DAPAGLIFOZIN(DAPZIN)10MG', 'DAPAGLIFOZIN(DAPZIN)10MG', '-50', 'Stp', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(239, 'CARVEDILOL6.25MGTABSUK', 'CARVEDILOL 6.25MG TABS UK', 'CARVEDILOL6.25MGTABSUK', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'CARVEDILOL6.25MGTABSUK', 'CARVEDILOL6.25MGTABSUK', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(240, 'CARVEDILOL6.25MGTABSINDIA', 'CARVEDILOL 6.25MG TABS INDIA', 'CARVEDILOL6.25MGTABSINDIA', '0', '0', '600', '600', 'None', 0, 0, 0, '', 'CARVEDILOL6.25MGTABSINDIA', 'CARVEDILOL6.25MGTABSINDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(241, 'XYKAA1000MGTABS', 'XYKAA 1000MG TABS', 'XYKAA1000MGTABS', '0', '0', '1000', '1000', 'None', 0, 0, 0, '2023-12-10', 'XYKAA1000MGTABS', 'XYKAA1000MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(242, 'LOSACARH50/12.5MG', 'LOSACAR H 50/12.5MG', 'LOSACARH50/12.5MG', '0', '0', '800', '800', 'None', 0, 0, 0, '', 'LOSACARH50/12.5MG', 'LOSACARH50/12.5MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(243, 'LOSACAR50MGINDIA', 'LOSACAR 50MG INDIA', 'LOSACAR50MGINDIA', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'LOSACAR50MGINDIA', 'LOSACAR50MGINDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(244, 'COLOSARDENK50/12.5MG', 'COLOSAR DENK 50/12.5MG', 'COLOSARDENK50/12.5MG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'COLOSARDENK50/12.5MG', 'COLOSARDENK50/12.5MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(245, 'SPIRONACTONE25MGINDIA', 'SPIRONACTONE 25MG INDIA', 'SPIRONACTONE25MGINDIA', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'SPIRONACTONE25MGINDIA', 'SPIRONACTONE25MGINDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(246, 'SALBUTAMOLNEBULES', 'SALBUTAMOL NEBULES', 'SALBUTAMOLNEBULES', '0', '0', '2500', '2500', 'None', 0, 0, 0, '', 'SALBUTAMOLNEBULES', 'SALBUTAMOLNEBULES', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(247, 'SALBUTAMOLTABS4MG', 'SALBUTAMOL TABS 4MG', 'SALBUTAMOLTABS4MG', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'SALBUTAMOLTABS4MG', 'SALBUTAMOLTABS4MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(248, 'METHOTREXATE2.5MGTABS', 'METHOTREXATE 2.5MG TABS', 'METHOTREXATE2.5MGTABS', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'METHOTREXATE2.5MGTABS', 'METHOTREXATE2.5MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(249, 'METHOTREXATE5MGTABS', 'METHOTREXATE 5MG TABS', 'METHOTREXATE5MGTABS', '0', '0', '1100', '1100', 'None', 0, 0, 0, '', 'METHOTREXATE5MGTABS', 'METHOTREXATE5MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(250, 'CARBIMAZOLE5MG', 'CARBIMAZOLE 5MG', 'CARBIMAZOLE5MG', '0', '0', '600', '600', 'None', 0, 0, 0, '', 'CARBIMAZOLE5MG', 'CARBIMAZOLE5MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'HORMONAL PILLS', 'Obsolete', NULL, NULL, 0),
(251, 'TOLFREE100MG', 'TOLFREE 100MG', 'TOLFREE100MG', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'TOLFREE100MG', 'TOLFREE100MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MUSCLE RELAXANT', 'Obsolete', NULL, NULL, 0),
(252, 'VITAMINDCHEWABLE', 'VITAMIN D CHEWABLE', 'VITAMINDCHEWABLE', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'VITAMINDCHEWABLE', 'VITAMINDCHEWABLE', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(253, 'IVERMECTIN12MGTABSUK', 'IVERMECTIN 12MG TABS UK', 'IVERMECTIN12MGTABSUK', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'IVERMECTIN12MGTABSUK', 'IVERMECTIN12MGTABSUK', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIVIRAL', 'Obsolete', NULL, NULL, 0),
(254, 'TRIGANDTABS', 'TRIGAN D TABS', 'TRIGANDTABS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'TRIGANDTABS', 'TRIGANDTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(255, 'MANNITOLI.V', 'MANNITOL I.V', 'MANNITOLI.V', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'MANNITOLI.V', 'MANNITOLI.V', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(256, 'P.O.PSMALL', 'P.O.P SMALL', 'P.O.PSMALL', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'P.O.PSMALL', 'P.O.PSMALL', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(257, 'P.O.PMEDIUM', 'P.O.P MEDIUM', 'P.O.PMEDIUM', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'P.O.PMEDIUM', 'P.O.PMEDIUM', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(258, 'P.O.PLARGE', 'P.O.P LARGE', 'P.O.PLARGE', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'P.O.PLARGE', 'P.O.PLARGE', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(259, 'URINARYCATHETER16G', 'URINARY CATHETER 16G', 'URINARYCATHETER16G', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'URINARYCATHETER16G', 'URINARYCATHETER16G', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(260, 'URINEBAG', 'URINE BAG', 'URINEBAG', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'URINEBAG', 'URINEBAG', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(261, 'NASALCANNULA', 'NASAL CANNULA', 'NASALCANNULA', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'NASALCANNULA', 'NASALCANNULA', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(262, 'INSULINSYRINGE', 'INSULIN SYRINGE', 'INSULINSYRINGE', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'INSULINSYRINGE', 'INSULINSYRINGE', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(263, 'CHLORHEXIDINESOLUTIONSMALL', 'CHLORHEXIDINE SOLUTION SMALL', 'CHLORHEXIDINESOLUTIONSMALL', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'CHLORHEXIDINESOLUTIONSMALL', 'CHLORHEXIDINESOLUTIONSMALL', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(264, 'IODINESOLUTIONSMALL', 'IODINE SOLUTION SMALL', 'IODINESOLUTIONSMALL', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'IODINESOLUTIONSMALL', 'IODINESOLUTIONSMALL', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(265, 'IODINESOLUTION1L', 'IODINE SOLUTION 1L', 'IODINESOLUTION1L', '0', '0', '25000', '25000', 'None', 0, 0, 0, '', 'IODINESOLUTION1L', 'IODINESOLUTION1L', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(266, 'LORATIDINE(LORVIC)10MGTABS', 'LORATIDINE (LORVIC) 10MG TABS', 'LORATIDINE(LORVIC)10MGTABS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'LORATIDINE(LORVIC)10MGTABS', 'LORATIDINE(LORVIC)10MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HISTAMINE', 'Obsolete', NULL, NULL, 0),
(267, 'LORATIDINE(LORVIC)10MGSYRUP', 'LORATIDINE (LORVIC) 10MG SYRUP', 'LORATIDINE(LORVIC)10MGSYRUP', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'LORATIDINE(LORVIC)10MGSYRUP', 'LORATIDINE(LORVIC)10MGSYRUP', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HISTAMINE', 'Obsolete', NULL, NULL, 0),
(268, 'IBUMOLTABS', 'IBUMOL TABS', 'IBUMOLTABS', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'IBUMOLTABS', 'IBUMOLTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(269, 'IBUMOLSYRUP', 'IBUMOL SYRUP', 'IBUMOLSYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'IBUMOLSYRUP', 'IBUMOLSYRUP', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(270, 'IBUPFOFEN200MGTABS', 'IBUPFOFEN 200MG TABS', 'IBUPFOFEN200MGTABS', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'IBUPFOFEN200MGTABS', 'IBUPFOFEN200MGTABS', '-5', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(271, 'IBUPFOFEN400MGTABS', 'IBUPFOFEN 400MG TABS', 'IBUPFOFEN400MGTABS', '0', '0', '400', '400', 'None', 0, 0, 0, '', 'IBUPFOFEN400MGTABS', 'IBUPFOFEN400MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(272, 'IBUMEX60MLSSYRUP', 'IBUMEX 60MLS SYRUP', 'IBUMEX60MLSSYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'IBUMEX60MLSSYRUP', 'IBUMEX60MLSSYRUP', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(273, 'ZINCTABS', 'ZINC TABS', 'ZINCTABS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'ZINCTABS', 'ZINCTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(274, 'SEDIPROCTSUPPOSITORY', 'SEDIPROCT SUPPOSITORY', 'SEDIPROCTSUPPOSITORY', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'SEDIPROCTSUPPOSITORY', 'SEDIPROCTSUPPOSITORY', '0', 'Tab', '2033-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(275, 'SEDIPROCTCREAM', 'SEDIPROCT CREAM', 'SEDIPROCTCREAM', '0', '0', '15000', '15000', 'None', 0, 0, 0, '', 'SEDIPROCTCREAM', 'SEDIPROCTCREAM', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(276, 'MEFANAMICACID500MGTABS', 'MEFANAMIC ACID 500MG TABS', 'MEFANAMICACID500MGTABS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'MEFANAMICACID500MGTABS', 'MEFANAMICACID500MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI FIBRINOLYTICS', 'Obsolete', NULL, NULL, 0),
(277, 'HYOSCINETABS', 'HYOSCINE TABS', 'HYOSCINETABS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'HYOSCINETABS', 'HYOSCINETABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(278, 'HYOSCINEINJECTION', 'HYOSCINE INJECTION', 'HYOSCINEINJECTION', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'HYOSCINEINJECTION', 'HYOSCINEINJECTION', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(279, 'TAMSULOSIN0.4MGTABS', 'TAMSULOSIN 0.4MG TABS', 'TAMSULOSIN0.4MGTABS', '0', '0', '1200', '1200', 'None', 0, 0, 0, '', 'TAMSULOSIN0.4MGTABS', 'TAMSULOSIN0.4MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(280, 'DUPHASTON10MGTABS', 'DUPHASTON 10MG TABS', 'DUPHASTON10MGTABS', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'DUPHASTON10MGTABS', 'DUPHASTON10MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(281, 'MISOPROSTOL200MCGINDIA', 'MISOPROSTOL 200MCG INDIA', 'MISOPROSTOL200MCGINDIA', '0', '0', '1500', '1500', 'None', 0, 0, 0, '', 'MISOPROSTOL200MCGINDIA', 'MISOPROSTOL200MCGINDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(282, 'TADALAFIL4MG', 'TADALAFIL 4MG', 'TADALAFIL4MG', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'TADALAFIL4MG', 'TADALAFIL4MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(283, 'SUMATRIPTANTABS', 'SUMATRIPTAN TABS', 'SUMATRIPTANTABS', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'SUMATRIPTANTABS', 'SUMATRIPTANTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(284, 'CORNPLASTER', 'CORN PLASTER', 'CORNPLASTER', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'CORNPLASTER', 'CORNPLASTER', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(285, 'CARBAMAZIPINE200MG', 'CARBAMAZIPINE 200MG', 'CARBAMAZIPINE200MG', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'CARBAMAZIPINE200MG', 'CARBAMAZIPINE200MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(286, 'AMOXIKID125MGTABS', 'AMOXIKID 125MG TABS', 'AMOXIKID125MGTABS', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'AMOXIKID125MGTABS', 'AMOXIKID125MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(287, 'AMOXIKID250MGTABS', 'AMOXIKID 250MG TABS', 'AMOXIKID250MGTABS', '0', '0', '150', '150', 'None', 0, 0, 0, '', 'AMOXIKID250MGTABS', 'AMOXIKID250MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(288, 'VITAMINACAPS200,000IU', 'VITAMIN A CAPS 200,000IU', 'VITAMINACAPS200,000IU', '0', '0', '600', '600', 'None', 0, 0, 0, '', 'VITAMINACAPS200,000IU', 'VITAMINACAPS200,000IU', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(289, 'ALLUPURINOL300MG', 'ALLUPURINOL 300MG', 'ALLUPURINOL300MG', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'ALLUPURINOL300MG', 'ALLUPURINOL300MG', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(290, 'FEFOTABS', 'FEFO TABS', 'FEFOTABS', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'FEFOTABS', 'FEFOTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(291, 'FOLICACID5MG', 'FOLIC ACID 5MG', 'FOLICACID5MG', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'FOLICACID5MG', 'FOLICACID5MG', '5', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'MULTIMINERALS', 'Obsolete', NULL, NULL, 0),
(292, 'PROPANOLOL40MGTABS', 'PROPANOLOL 40MG TABS', 'PROPANOLOL40MGTABS', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'PROPANOLOL40MGTABS', 'PROPANOLOL40MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI HYPERTENSIVE', 'Obsolete', NULL, NULL, 0),
(293, 'ARTANE5MGTABS', 'ARTANE 5MG TABS', 'ARTANE5MGTABS', '0', '0', '400', '400', 'None', 0, 0, 0, '', 'ARTANE5MGTABS', 'ARTANE5MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(294, 'CAPTOPRIL25MGTABS', 'CAPTOPRIL 25MG TABS', 'CAPTOPRIL25MGTABS', '0', '0', '400', '400', 'None', 0, 0, 0, '', 'CAPTOPRIL25MGTABS', 'CAPTOPRIL25MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(295, 'PHENYTOIN100MGTABSINDIA', 'PHENYTOIN 100MG TABS INDIA', 'PHENYTOIN100MGTABSINDIA', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'PHENYTOIN100MGTABSINDIA', 'PHENYTOIN100MGTABSINDIA', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(296, 'PHENYTOIN100MGTABS', 'PHENYTOIN 100MG TABS ', 'PHENYTOIN100MGTABS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'PHENYTOIN100MGTABS', 'PHENYTOIN100MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(297, 'PRAZIQUENTAL600MGTABS', 'PRAZIQUENTAL 600MG TABS', 'PRAZIQUENTAL600MGTABS', '0', '0', '3000', '3000', 'None', 0, 0, 0, '', 'PRAZIQUENTAL600MGTABS', 'PRAZIQUENTAL600MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIPROTOZOAL', 'Obsolete', NULL, NULL, 0),
(298, 'CANDIDPOWDER', 'CANDID POWDER', 'CANDIDPOWDER', '0', '0', '8000', '8000', 'None', 0, 0, 0, '', 'CANDIDPOWDER', 'CANDIDPOWDER', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(299, 'ULTRASOLVSYRUP', 'ULTRASOLV SYRUP', 'ULTRASOLVSYRUP', '0', '0', '15000', '15000', 'None', 0, 0, 0, '', 'ULTRASOLVSYRUP', 'ULTRASOLVSYRUP', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(300, 'ENEMAX', 'ENEMAX ', 'ENEMAX', '0', '0', '18000', '18000', 'None', 0, 0, 0, '', 'ENEMAX', 'ENEMAX', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(301, 'ERYTHROMYCINSYRUP', 'ERYTHROMYCIN SYRUP', 'ERYTHROMYCINSYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'ERYTHROMYCINSYRUP', 'ERYTHROMYCINSYRUP', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(302, 'BISACODYL5MGTABS', 'BISACODYL 5MG TABS', 'BISACODYL5MGTABS', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'BISACODYL5MGTABS', 'BISACODYL5MGTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(303, 'HCGSTRIP', 'HCG STRIP', 'HCGSTRIP', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'HCGSTRIP', 'HCGSTRIP', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(304, 'PENVTABS', 'PEN V TABS', 'PENVTABS', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'PENVTABS', 'PENVTABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTIBIOTICS', 'Obsolete', NULL, NULL, 0),
(305, 'COLDCAP', 'COLDCAP', 'COLDCAP', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'COLDCAP', 'COLDCAP', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI COUGH', 'Obsolete', NULL, NULL, 0),
(306, 'CLOBETASOLCREAMINDIA', 'CLOBETASOL CREAM INDIA', 'CLOBETASOLCREAMINDIA', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'CLOBETASOLCREAMINDIA', 'CLOBETASOLCREAMINDIA', '0', 'Tube', '2023-10-10', NULL, '0', 'D876', 0, 'NON CONSUMABLE', 'Obsolete', NULL, NULL, 0),
(307, 'QUININETABS', 'QUININE TABS', 'QUININETABS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'QUININETABS', 'QUININETABS', '0', 'Tab', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI-MALARIAL', 'Obsolete', NULL, NULL, 0),
(308, 'QUININEINJE', 'QUININE INJE', 'QUININEINJE', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'QUININEINJE', 'QUININEINJE', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'ANTI-MALARIAL', 'Obsolete', NULL, NULL, 0),
(309, 'PIROXICAM20MGCAPS', 'PIROXICAM 20MG CAPS', 'PIROXICAM20MGCAPS', '0', '0', '100', '100', 'None', 0, 0, 0, '', 'PIROXICAM20MGCAPS', 'PIROXICAM20MGCAPS', '0', 'Bot', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(310, 'INDOMETHACIN100MGTABS', 'INDOMETHACIN 100MG TABS', 'INDOMETHACIN100MGTABS', '0', '0', '50', '50', 'None', 0, 0, 0, '', 'INDOMETHACIN100MGTABS', 'INDOMETHACIN100MGTABS', '0', 'Unit', '2023-10-10', NULL, '0', 'D876', 0, 'PainKIller', 'Obsolete', NULL, NULL, 0),
(311, 'APIDONESYRUP100MLS', 'APIDONE SYRUP 100MLS', 'APIDONESYRUP100MLS', '0', '0', '20000', '18000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2024-05-31', 'APIDONESYRUP100MLS', 'APIDONESYRUP100MLS', '0', 'cash', '2023-09-10', NULL, '18000', 'D876', 1, 'ANTI COUGH', 'Obsolete', 'XL', NULL, 0),
(312, 'METFORMINDENK500MG', 'METFORMIN DENK 500MG', 'METFORMINDENK500MG', '0', '0', '400', '235', 'BIOGEN PHARMA LTD', 0, 100, 0, '2025-08-31', 'METFORMINDENK500MG', 'METFORMINDENK500MG', '0', 'cash', '2023-09-10', NULL, '23500', 'D876', 100, 'ANTI HYPOGLYCEMIC', 'Obsolete', 'DL', NULL, 0),
(313, 'METHYLDOPA250MG(HYDOPA)', 'METHYLDOPA 250MG (HYDOPA)', 'METHYLDOPA250MG(HYDOPA)', '0', '0', '300', '190', 'BIOGEN PHARMA LTD', 0, 150, 0, '2024-04-30', 'METHYLDOPA250MG(HYDOPA)', 'METHYLDOPA250MG(HYDOPA)', '0', 'cash', '2023-09-10', NULL, '28500', 'D876', 150, 'ANTI HYPERTENSIVE', 'Obsolete', 'DX', NULL, 0),
(314, 'NORMAGUT', 'NORMAGUT', 'NORMAGUT', '0', '0', '2500', '2500', 'None', 0, 0, 0, '', 'NORMAGUT', 'NORMAGUT', '0', 'Capsules', '10/30/23', NULL, '0', 'D876', 0, 'Multivitamins', 'Obsolete', '', 'Consumable', 0),
(315, 'VITAMINACAPS200,000IU', 'VITAMIN A CAPS 200,000IU', 'VITAMINACAPS200,000IU', '0', '0', '600', '30000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2024-06-10', 'VITAMINACAPS200,000IU', 'VITAMINACAPS200,000IU', '0', 'cash', '2023-10-30', NULL, '30000', 'D876', 1, 'MULTIMINERALS', 'Obsolete', '114', NULL, 0),
(316, 'GLIMEPRIDE(EUGLIM)2MG', 'GLIMEPRIDE(EUGLIM) 2MG', 'GLIMEPRIDE(EUGLIM)2MG', '0', '0', '500', '240', 'BIOGEN PHARMA LTD', 0, 50, 0, '2025-05-30', 'GLIMEPRIDE(EUGLIM)2MG', 'GLIMEPRIDE(EUGLIM)2MG', '0', 'cash', '2023-10-30', NULL, '12000', 'D876', 50, 'ANTI DIABETICS', 'Obsolete', 'g002828', NULL, 0),
(317, 'BETASERC8MG', 'BETASERC 8MG', 'BETASERC8MG', '0', '0', '1200', '866', 'BIOGEN PHARMA LTD', 0, 15, 0, '2024-01-31', 'BETASERC8MG', 'BETASERC8MG', '0', 'cash', '2023-10-30', NULL, '13000', 'D876', 15, 'NON CONSUMABLE', 'Obsolete', '5002', NULL, 0),
(318, 'NORMAGUT', 'NORMAGUT', 'NORMAGUT', '0', '0', '2500', '1933', 'BIOGEN PHARMA LTD', 0, 15, 0, '2025-05-30', 'NORMAGUT', 'NORMAGUT', '0', 'cash', '2023-10-30', NULL, '29000', 'D876', 15, 'Multivitamins', 'Obsolete', '330110', NULL, 0),
(319, 'APIDONESYRUP100MLS', 'APIDONE SYRUP 100MLS', 'APIDONESYRUP100MLS', '0', '0', '20000', '16666', 'BIOGEN PHARMA LTD', 0, 3, 0, '2023-01-30', 'APIDONESYRUP100MLS', 'APIDONESYRUP100MLS', '0', 'cash', '2023-10-30', NULL, '50000', 'D876', 3, 'ANTI COUGH', 'Obsolete', '12', NULL, 0),
(320, 'PARADENK125MG', 'PARA DENK 125MG', 'PARADENK125MG', '0', '0', '1500', '700', 'BIOGEN PHARMA LTD', 0, 10, 0, '2025-11-30', 'PARADENK125MG', 'PARADENK125MG', '0', 'credit', '2023-11-01', NULL, '7000', 'D876', 10, 'PainKIller', 'Obsolete', 'BIACJ019', NULL, 0),
(321, 'PARADENK250MG', 'PARA DENK 250MG', 'PARADENK250MG', '0', '0', '2000', '850', 'BIOGEN PHARMA LTD', 0, 10, 0, '2026-03-31', 'PARADENK250MG', 'PARADENK250MG', '0', 'credit', '2023-11-01', NULL, '8500', 'D876', 10, 'PainKIller', 'Obsolete', '27674', NULL, 0),
(322, 'PANADOLEXTRA', 'PANADOL EXTRA', 'PANADOLEXTRA', '0', '0', '250', '188', 'BIOGEN PHARMA LTD', 0, 100, 0, '2024-02-29', 'PANADOLEXTRA', 'PANADOLEXTRA', '0', 'cash', '2023-11-01', NULL, '18800', 'D876', 100, 'PainKIller', 'Obsolete', 'Y120YC', NULL, 0),
(323, 'PARACETAMOL500MG', 'PARACETAMOL 500MG', 'PARACETAMOL500MG', '0', '0', '50', '1000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2024-02-29', 'PARACETAMOL500MG', 'PARACETAMOL500MG', '0', 'cash', '2023-11-01', NULL, '1000', 'D876', 1, 'PainKIller', 'Obsolete', '032', NULL, 0),
(324, 'LORATIDINE(LORVIC)10MGTABS', 'LORATIDINE (LORVIC) 10MG TABS', 'LORATIDINE(LORVIC)10MGTABS', '0', '0', '500', '140', 'BIOGEN PHARMA LTD', 0, 50, 0, '2023-06-30', 'LORATIDINE(LORVIC)10MGTABS', 'LORATIDINE(LORVIC)10MGTABS', '0', 'cash', '2023-11-01', NULL, '7000', 'D876', 50, 'ANTI HISTAMINE', 'Obsolete', '025', NULL, 0),
(325, 'PARACETAMOLI.VINDIA', 'PARACETAMOL I.V INDIA', 'PARACETAMOLI.VINDIA', '0', '0', '10000', '17', 'BIOGEN PHARMA LTD', 0, 200, 0, '2024-12-31', 'PARACETAMOLI.VINDIA', 'PARACETAMOLI.VINDIA', '0', 'cash', '2023-11-01', NULL, '3400', 'D876', 200, 'PainKIller', 'Obsolete', '11823', NULL, 0),
(326, 'PANADOLADVANCE', 'PANADOL ADVANCE', 'PANADOLADVANCE', '0', '0', '200', '158', 'BIOGEN PHARMA LTD', 0, 100, 0, '2024-02-29', 'PANADOLADVANCE', 'PANADOLADVANCE', '0', 'cash', '2023-11-01', NULL, '15800', 'D876', 100, 'PainKIller', 'Obsolete', 'Y64XC', NULL, 0),
(327, 'Vitamin B12 Nasal SPray ', 'Vitamin B12 Nasal SPray ', 'Vitamin B12 Nasal SPray ', '0', '0', '35000', '35000', 'None', 0, 0, 0, '', 'Vitamin B12 Nasal SPray ', 'Vitamin B12 Nasal SPray ', '0', 'Tabs', '11/07/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', '', 'Consumable', 0),
(328, 'Vitamin B12 Nasal SPray ', 'Vitamin B12 Nasal SPray ', 'Vitamin B12 Nasal SPray ', '0', '0', '35000', '35000', 'None', 0, 0, 0, '', 'Vitamin B12 Nasal SPray ', 'Vitamin B12 Nasal SPray ', '0', 'Tabs', '11/07/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', '', 'Consumable', 0),
(329, 'NASO B12 NASAL SPRAY', 'NASO B12 NASAL SPRAY', 'NASO B12 NASAL SPRAY', '0', '0', '30000', '30000', 'None', 0, 0, 0, '', 'NASO B12 NASAL SPRAY', 'NASO B12 NASAL SPRAY', '0', 'Tabs', '11/07/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', '', 'Consumable', 0),
(330, 'VITAMIN D3 INJECTION', 'VITAMIN D3 INJECTION', 'VITAMIN D3 INJECTION', '0', '0', '15000', '15000', 'None', 0, 0, 0, '', 'VITAMIN D3 INJECTION', 'VITAMIN D3 INJECTION', '0', 'Vials', '11/07/23', NULL, '0', 'D876', 0, 'Vitamins', 'Obsolete', '', 'Consumable', 0),
(331, 'AMPICLOX 500MG CAPS', 'AMPICLOX 500MG CAPS', 'AMPICLOX 500MG CAPS', '0', '0', '200', '200', 'None', 0, 0, 0, '', 'Nov-19-2023', 'AMPICLOX 500MG CAPS', '0', 'Tabs', '11/19/23', NULL, '0', 'D876', 0, 'Antibiotics', 'Active', '', 'Consumable', 0),
(332, 'FANSIDAR  3\'S', 'FANSIDAR  3\'S', 'FANSIDAR  3\'S', '0', '0', '3000', '1200', 'WHITE STAR PHARMA (U) LTD', 0, 3, 0, '2025-03-30', 'FANSIDAR  3\'S', 'FANSIDAR  3\'S', '0', 'cash', '2023-11-07', NULL, '3600', 'D876', 3, 'Antimalaria', 'Obsolete', 'NA123', NULL, 0),
(333, 'G-CEFTRIA1GM', 'G-CEFTRIA 1GM', 'G-CEFTRIA1GM', '0', '0', '5000', '2500', 'WHITE STAR PHARMA (U) LTD', 0, 10, 0, '2023-11-30', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '0', 'cash', '2023-11-07', NULL, '25000', 'D876', 10, 'ANTIBIOTICS', 'Obsolete', 'WAL123', NULL, 0),
(334, 'METOCLOPROMIDE(PLASIL)10MGINJ', 'METOCLOPROMIDE(PLASIL) 10MG INJ', 'METOCLOPROMIDE(PLASIL)10MGINJ', '0', '0', '3000', '500', 'BIOGEN PHARMA LTD', 0, 10, 0, '2024-02-29', 'METOCLOPROMIDE(PLASIL)10MGINJ', 'METOCLOPROMIDE(PLASIL)10MGINJ', '0', 'credit', '2023-11-06', NULL, '5000', 'D876', 10, 'ANTI MOTILITY', 'Obsolete', 'RS20023', NULL, 0),
(335, 'HYDROCORTISONEINJINDIA', 'HYDROCORTISONE INJ INDIA', 'HYDROCORTISONEINJINDIA', '0', '0', '3000', '1000', 'BIOGEN PHARMA LTD', 0, 10, 0, '2024-03-31', 'HYDROCORTISONEINJINDIA', 'HYDROCORTISONEINJINDIA', '0', 'credit', '2023-11-06', NULL, '10000', 'D876', 10, 'CORTICOSTERIOD', 'Obsolete', 'BM0422058', NULL, 0),
(336, 'DYNAPERINJECTION', 'DYNAPER INJECTION', 'DYNAPERINJECTION', '0', '0', '2000', '1300', 'BIOGEN PHARMA LTD', 0, 10, 0, '2023-02-28', 'DYNAPERINJECTION', 'DYNAPERINJECTION', '0', 'credit', '2023-11-06', NULL, '13000', 'D876', 10, 'PainKIller', 'Obsolete', 'D35612', NULL, 0),
(337, 'VITAMIN D3 INJECTION', 'VITAMIN D3 INJECTION', 'VITAMIN D3 INJECTION', '0', '0', '15000', '15000', 'SPRING PHARMACY', 0, 2, 0, '2026-01-30', 'VITAMIN D3 INJECTION', 'VITAMIN D3 INJECTION', '0', 'cash', '2023-11-07', NULL, '30000', 'D876', 2, 'Vitamins', 'Obsolete', 'A0918888', NULL, 0),
(338, 'Surgical blade', 'Surgical blade', 'Surgical blade', '0', '0', '200', '', 'None', 0, 80, 0, '2027-05-30', 'Nov-17-2023', 'Surgical blade', '0', 'Tabs', '11/17/23', NULL, '0', 'D876', 80, 'Anti-spasmotic', 'Obsolete', 'XLYUIT', 'Consumable', 0),
(340, 'G-CEFTRIA1GM', 'G-CEFTRIA 1GM', 'G-CEFTRIA1GM', '0', '0', '5000', '2500', 'WHITE STAR PHARMA (U) LTD', 0, 10, 0, '2025-02-27', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '0', 'cash', '2023-11-09', NULL, '25000', 'D876', 10, 'ANTIBIOTICS', 'Obsolete', '220343', NULL, 0),
(341, 'STERILEGAUZE', 'STERILE GAUZE', 'STERILEGAUZE', '0', '0', '5000', '3500', 'WHITE STAR PHARMA (U) LTD', 0, 5, 0, '2024-08-20', 'STERILEGAUZE', 'STERILEGAUZE', '0', 'cash', '2023-11-09', NULL, '17500', 'D876', 5, 'NON CONSUMABLE', 'Obsolete', '201908', NULL, 0),
(342, 'CETAMOL  60MLS', 'CETAMOL  60MLS', 'CETAMOL  60MLS', '0', '0', '5000', '2600', 'WHITE STAR PHARMA (U) LTD', 0, 3, 0, '2024-09-30', 'CETAMOL  60MLS', 'CETAMOL  60MLS', '0', 'cash', '2023-11-09', NULL, '7800', 'D876', 3, 'Painkiller', 'Obsolete', '212002', NULL, 0),
(343, 'AMLO-DENK10MG', 'AMLO-DENK 10MG', 'AMLO-DENK10MG', '0', '0', '2000', '840', 'WHITE STAR PHARMA (U) LTD', 0, 50, 0, '2024-01-30', 'AMLO-DENK10MG', 'AMLO-DENK10MG', '0', 'cash', '2023-11-09', NULL, '42000', 'D876', 50, 'ANTI HYPERTENSIVE', 'Obsolete', '26247', NULL, 0),
(344, 'FANSIDAR  3\'S', 'FANSIDAR  3\'S', 'FANSIDAR  3\'S', '0', '0', '3000', '1200', 'WHITE STAR PHARMA (U) LTD', 0, 3, 0, '2026-11-06', 'FANSIDAR  3\'S', 'FANSIDAR  3\'S', '0', 'credit', '2023-11-07', NULL, '3600', 'D876', 3, 'Antimalaria', 'Obsolete', 'BAS23', NULL, 0),
(345, 'G-CEFTRIA1GM', 'G-CEFTRIA 1GM', 'G-CEFTRIA1GM', '0', '0', '5000', '2500', 'WHITE STAR PHARMA (U) LTD', 0, 10, 0, '2024-12-30', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '0', 'credit', '2023-11-07', NULL, '25000', 'D876', 10, 'ANTIBIOTICS', 'Obsolete', '2345A', NULL, 0),
(346, 'VITAMIN D3 INJECTION', 'VITAMIN D3 INJECTION', 'VITAMIN D3 INJECTION', '0', '0', '15000', '15000', 'SPRING PHARMACY', 0, 2, 0, '2026-01-31', 'VITAMIN D3 INJECTION', 'VITAMIN D3 INJECTION', '0', 'credit', '2023-11-07', NULL, '30000', 'D876', 2, 'Vitamins', 'Obsolete', '1235', NULL, 0),
(347, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'APIDONESYRUP100MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 40000),
(348, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'METFORMINDENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPOGLYCEMIC', 'Obsolete', 'xlat125', NULL, 0),
(349, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'METHYLDOPA250MG(HYDOPA)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 12000),
(350, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN625MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 56000),
(351, '', '', 'None', NULL, '0', '22000', '0', '', 0, 0, 0, '2027-07-30', '', 'EPICEPHINE2GM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 44000),
(352, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ALBENDAZOLETABS(WORMIN)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIPROTOZOAL', 'Obsolete', 'xlat125', NULL, 0),
(353, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'D-ARTEPADULT', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 50000),
(354, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'OMEPRAZOLE20MGI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 10000),
(355, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHA500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 36000),
(356, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'EXAMINATIONGLOVES', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(357, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'STERILEGAUZE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 25000),
(358, '', '', 'None', NULL, '0', '13000', '0', '', 0, 0, 0, '2027-07-30', '', 'RELCERGEL200ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 26000),
(359, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'MONTICOPE5/10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 30000),
(360, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSPAEDIACTRICLINCTUS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 28000),
(361, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'LIMZER', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 72000),
(362, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CREPBANDAGESSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 7500),
(363, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'RL', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NA', 'Obsolete', 'xlat125', NULL, 18000),
(364, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DELEASEDDRYSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(365, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DELEASEDPAEDSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 20000),
(366, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'APFLUESYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(367, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'SECNIDAZOLETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANT HEMENTICS', 'Obsolete', 'xlat125', NULL, 8000),
(368, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'SECNIDAZOLESYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANT HEMENTICS', 'Obsolete', 'xlat125', NULL, 0),
(369, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'G-CEFTRIA1GM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 50000),
(370, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'NOSPAINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI SPOSMATIC', 'Obsolete', 'xlat125', NULL, 7000),
(371, '', '', 'None', NULL, '0', '700', '0', '', 0, 0, 0, '2027-07-30', '', 'NOSPATABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI SPOSMATIC', 'Obsolete', 'xlat125', NULL, 35000),
(372, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'MENTHOXYL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(373, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINCTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'VITAMINS', 'Obsolete', 'xlat125', NULL, 0),
(374, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 10000),
(375, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'PANADOLADVANCE', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 60000),
(376, '', '', 'None', NULL, '0', '250', '0', '', 0, 0, 0, '2027-07-30', '', 'PANADOLEXTRA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(377, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'PARACETAMOL500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(378, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'PARACETAMOLI.VINDIA', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 40000),
(379, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'METOCLOPROMIDE(PLASIL)10MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 18000),
(380, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(381, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(382, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERSPRAY', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 20000),
(383, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'NS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 27000),
(384, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'D5%', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 24000),
(385, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'D50%', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 5000),
(386, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'GIVINGSETI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(387, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'BLOODGIVINGSET', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(388, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', '20MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 12000),
(389, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', '10MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 10000),
(390, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', '5MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(391, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', '2MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(392, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULAYELLOWI.V24G', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(393, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULABLUE22GI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(394, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULAPINK', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(395, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(396, '', '', 'None', NULL, '0', '30000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN228/5ML', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 30000),
(397, '', '', 'None', NULL, '0', '45000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN457/5ML', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(398, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'AMICLOX500MGCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(399, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMPICLOX500MGINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(400, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMPICLOXSYRUPINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 5000),
(401, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCILIN250MGCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(402, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCILIN500MGCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 50000),
(403, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYLSYRUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 5000),
(404, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLE200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(405, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLE400MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(406, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLEI.V', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(407, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'DOXYCILIN100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(408, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'NITROFUROTOIN100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(409, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'SEPTRIN480', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(410, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'SEPTRIN960', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(411, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'CHLORAPHENICAL250MGCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(412, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTEFAN20/120MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 16000),
(413, '', '', 'None', NULL, '0', '17000', '0', '', 0, 0, 0, '2027-07-30', '', 'DUOCOTEXIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(414, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CRESTOR20MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(415, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'BISOPROLOL5MGUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 56000),
(416, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN30MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 20000),
(417, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN60MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 28000),
(418, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN120MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 105000),
(419, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'SUPIROCINOITMENT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 15000),
(420, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DICLODAYCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(421, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLONEMCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(422, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'MENTHOPLUS', '0', 'Unit', '1900-07-21', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(423, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'DRAGONBALM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(424, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'DRAGONLIQUID', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0);
INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(425, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LANSOPRAZOLE(ZOLANAS)30MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI ULCERS', 'Obsolete', 'xlat125', NULL, 25000),
(426, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'OMEPRAZOLE20MG(OCID|)', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 0),
(427, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLARITHROMYCIN500MGINDIA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(428, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'SURGICALGLOVES7.5MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(429, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ALKA5SYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 15000),
(430, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'D-ARTEPPAED', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 10000),
(431, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'ETORICOXIB(BRUTAFLAM)90MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 45000),
(432, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ETORICOXIB(BRUTAFLAM)60MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 30000),
(433, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'RELCERGEL100ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 0),
(434, '', '', 'None', NULL, '0', '8000', '0', '', 0, 0, 0, '2027-07-30', '', 'ASCORILSYRUP100ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 16000),
(435, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ASCORILSYRUP200ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 45000),
(436, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXIME400MG(CEFWELL)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 30000),
(437, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DIAZEPAMINJ5MG/ML', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'BARBITRATE', 'Obsolete', 'xlat125', NULL, 4000),
(438, '', '', 'None', NULL, '0', '1800', '0', '', 0, 0, 0, '2027-07-30', '', 'BINLINERSMEDIUM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(439, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXIM200MGINDIATABS', '0', 'Tab', '1905-07-14', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(440, '', '', 'None', NULL, '0', '35000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 35000),
(441, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PARADENK250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(442, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'PARADENK125MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 15000),
(443, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'DICLODENKRECTAL100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(444, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAXITROLEYEDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 15000),
(445, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAMADOLINJ', '0', 'Sachet', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(446, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAMADOLCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 20000),
(447, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'NAPROXEN250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(448, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ORS', '0', 'Sachet', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(449, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPRO500MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(450, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPRODENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(451, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'LEVODENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 120000),
(452, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'LEVOFLOXACIN500MG(LEVIN)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(453, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRANSPOREPLASTERLARGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(454, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRANSPOREPLASTERMEDIUM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(455, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'SKDERM15GM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(456, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'SKDERM30GM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(457, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOTRIMAZOLOECREAM(UNISTEN)', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(458, '', '', 'None', NULL, '0', '40000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONCALLPLUSSTRIP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(459, '', '', 'None', NULL, '0', '55000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONCALLPLUSGLUCOMETER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(460, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'GRAMOCEFO400MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(461, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'GRAMOCEFO200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(462, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'LIVOLIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTMINERALS', 'Obsolete', 'xlat125', NULL, 0),
(463, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GINSOMIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 45000),
(464, '', '', 'None', NULL, '0', '45000', '0', '', 0, 0, 0, '2027-07-30', '', 'FORMONIDEINHALER200MCG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'INHALER', 'Obsolete', 'xlat125', NULL, 0),
(465, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'PROBETANEYE/EARDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(466, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'GENTAEYE/EARDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(467, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'AZITHROMYCIN500MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(468, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHA250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(469, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHASYRUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(470, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PENEGRA50MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(471, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PENEGRA100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(472, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'KAMAGRA100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(473, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KAMAGRA50MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(474, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'CETRIZINE10MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(475, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'PREDNISOLINETABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(476, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'DEXAMETHASONE0.5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(477, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLO-DENK5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 150000),
(478, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLO-DENK10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 200000),
(479, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINBCOMPLEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 0),
(480, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINBCOMPLEXINJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 6000),
(481, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'MULTVIT', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(482, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'MAGNESIUMTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 0),
(483, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAGNESIUMSYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 0),
(484, '', '', 'None', NULL, '0', '3500', '0', '', 0, 0, 0, '2027-07-30', '', 'ALWAYS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(485, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'PRINCESS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(486, '', '', 'None', NULL, '0', '3500', '0', '', 0, 0, 0, '2027-07-30', '', 'SOFTCARE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(487, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'METFORMINDENK1000MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 90000),
(488, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'MYOSPAZ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 30000),
(489, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'DURAGESIC', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 30000),
(490, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 8000),
(491, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'BACKUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(492, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'LYDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(493, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'POSTINOR2', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(494, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'PILLPLANCOC', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 3000),
(495, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'MICROGYNON', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(496, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDAFLEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(497, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'SINARESTTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(498, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'PAINEX', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(499, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'ACTION', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(500, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'HEDONTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(501, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'HEDEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(502, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'COUGHLINCTUSSMALL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(503, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'COUGHLINCTUSBIG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(504, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUFEDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(505, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TOFFPLUS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(506, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'KETACONAZOLETABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(507, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCONAZOLECAPS200MGINDA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 9000),
(508, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'LIGNOCAININJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'LOCAL ANESTHESIA', 'Obsolete', 'xlat125', NULL, 0),
(509, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTANH(TELVAS)80/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 75000),
(510, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTAN(TELVAS)80MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(511, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTAN(TELVAS)40MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 30000),
(512, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTANH(TELVAS)40/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 16000),
(513, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE(EUGLIME)4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI DIABETICS', 'Obsolete', 'xlat125', NULL, 0),
(514, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE(EUGLIM)2MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI DIABETICS', 'Obsolete', 'xlat125', NULL, 25000),
(515, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROXYUREA250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(516, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROXYUREA500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 22500),
(517, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'WATERFORINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(518, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDEASECAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(519, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(520, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'ERYTHROMYCIN250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(521, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAMOXCAPS500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(522, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CURAMOLPLUS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(523, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'EXTRADOL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(524, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'FLURID', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(525, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KISSCONDOMSTRABERRY', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(526, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KISSCONDOMSTUNDED', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(527, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEPHALEXINSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(528, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'CEPHALEXINCAPS250MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(529, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'HAEMOFORTESYRUP90MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(530, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'HAEMOFORTE200MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 20000),
(531, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDV6PESSARIES', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 20000),
(532, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDVGEL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(533, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'DREZVGEL', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(534, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'MCGCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(535, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDERMCREAM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(536, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'ABNALNASOLDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(537, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ISORYNPAED', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 7000),
(538, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ISORYNADULT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 14000),
(539, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 14000),
(540, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'GROVITSYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 14000),
(541, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'GROVITDROP', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 21000),
(542, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUROSEMIDEINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 36000),
(543, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FUROSEMIDE40MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(544, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON8MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(545, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON4MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 8000),
(546, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON4MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(547, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON8MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(548, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRENAXAMICACIDINJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 0),
(549, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TRENAXAMICACIDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 0),
(550, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ACICLOVIR200MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIVIRAL', 'Obsolete', 'xlat125', NULL, 9600),
(551, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'ACICLOVIRCREAM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-VIRAL', 'Obsolete', 'xlat125', NULL, 0),
(552, '', '', 'None', NULL, '0', '16000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZARICORTCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 16000),
(553, '', '', 'None', NULL, '0', '16000', '0', '', 0, 0, 0, '2027-07-30', '', 'ORACUREGEL', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(554, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'BENZOXCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(555, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROCORTISONECREAMINDIA', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 4000),
(556, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROCORTISONEINJINDIA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'CORTICOSTERIOD', 'Obsolete', 'xlat125', NULL, 45000),
(557, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINSCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 10000),
(558, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(559, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINOITMENT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(560, '', '', 'None', NULL, '0', '13000', '0', '', 0, 0, 0, '2027-07-30', '', 'SILVEREXCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(561, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUNGISAFECREAM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 15000),
(562, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUNGISAFE250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(563, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'NEOMYCINCREAM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(564, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'EUDERMCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(565, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'BENZATHINEINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(566, '', '', 'None', NULL, '0', '17000', '0', '', 0, 0, 0, '2027-07-30', '', 'PISA4.5MGINJ', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 34000),
(567, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPROI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 9000),
(568, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAMOXSUSPENSION', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(569, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAXITROLOITMENT', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(570, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'DEXONAEYE/EARDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'CORTICOSTERIOD', 'Obsolete', 'xlat125', NULL, 3000),
(571, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'T.E.O', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 4000),
(572, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'BETASERC8MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(573, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'BETASERC16MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(574, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CALCIVITA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 25000),
(575, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'FERROTONE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(576, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TORASDENK5MG', '-30', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(577, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'TORASDENK10MG', '-5', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(578, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'NOOTROPIL800MCG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(579, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOPIDOGREL75MGUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(580, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLODIPINE(AMLODAC)5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 24000),
(581, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLODIPINE(AMLODAC)10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(582, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'NEBILONG5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(583, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'DAPAGLIFOZIN(FORZIGA)10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(584, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'DAPAGLIFOZIN(DAPZIN)10MG', '0', 'Stp', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(585, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CARVEDILOL6.25MGTABSUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(586, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'CARVEDILOL6.25MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 18000),
(587, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'XYKAA1000MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(588, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'LOSACARH50/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 24000),
(589, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LOSACAR50MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 15000),
(590, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLOSARDENK50/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 54000),
(591, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'SPIRONACTONE25MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 50000),
(592, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'SALBUTAMOLNEBULES', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(593, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'SALBUTAMOLTABS4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(594, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'METHOTREXATE2.5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 1500),
(595, '', '', 'None', NULL, '0', '1100', '0', '', 0, 0, 0, '2027-07-30', '', 'METHOTREXATE5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(596, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'CARBIMAZOLE5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(597, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TOLFREE100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 0),
(598, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINDCHEWABLE', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 6000),
(599, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'IVERMECTIN12MGTABSUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIVIRAL', 'Obsolete', 'xlat125', NULL, 0),
(600, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TRIGANDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 21500),
(601, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'MANNITOLI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(602, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(603, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PMEDIUM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(604, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PLARGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 10000),
(605, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'URINARYCATHETER16G', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(606, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'URINEBAG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(607, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'NASALCANNULA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(608, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'INSULINSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4000),
(609, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CHLORHEXIDINESOLUTIONSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(610, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'IODINESOLUTIONSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(611, '', '', 'None', NULL, '0', '25000', '0', '', 0, 0, 0, '2027-07-30', '', 'IODINESOLUTION1L', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(612, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LORATIDINE(LORVIC)10MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HISTAMINE', 'Obsolete', 'xlat125', NULL, 5000),
(613, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'LORATIDINE(LORVIC)10MGSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HISTAMINE', 'Obsolete', 'xlat125', NULL, 20000),
(614, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMOLTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 9000),
(615, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMOLSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 5000),
(616, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUPFOFEN200MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(617, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUPFOFEN400MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(618, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMEX60MLSSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(619, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'ZINCTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 10000),
(620, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'SEDIPROCTSUPPOSITORY', '0', 'Tab', '1905-07-25', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(621, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'SEDIPROCTCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(622, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'MEFANAMICACID500MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 45000),
(623, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'HYOSCINETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 50000),
(624, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYOSCINEINJECTION', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(625, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'TAMSULOSIN0.4MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 48000),
(626, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DUPHASTON10MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(627, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'MISOPROSTOL200MCGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(628, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'TADALAFIL4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(629, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'SUMATRIPTANTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(630, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CORNPLASTER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 30000),
(631, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'CARBAMAZIPINE200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(632, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXIKID125MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(633, '', '', 'None', NULL, '0', '150', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXIKID250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(634, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINACAPS200,000IU', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 600),
(635, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ALLUPURINOL300MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(636, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'FEFOTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(637, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'FOLICACID5MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(638, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PROPANOLOL40MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(639, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTANE5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 40000),
(640, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'CAPTOPRIL25MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(641, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PHENYTOIN100MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(642, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'PHENYTOIN100MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(643, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'PRAZIQUENTAL600MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIPROTOZOAL', 'Obsolete', 'xlat125', NULL, 3000),
(644, '', '', 'None', NULL, '0', '8000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDPOWDER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 8000),
(645, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ULTRASOLVSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(646, '', '', 'None', NULL, '0', '18000', '0', '', 0, 0, 0, '2027-07-30', '', 'ENEMAX', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(647, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ERYTHROMYCINSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(648, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'BISACODYL5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2500),
(649, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'HCGSTRIP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(650, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PENVTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(651, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDCAP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(652, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOBETASOLCREAMINDIA', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(653, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'QUININETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(654, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'QUININEINJE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(655, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PIROXICAM20MGCAPS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(656, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'INDOMETHACIN100MGTABS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(657, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'NORMAGUT', '0', 'Capsules', '1900-01-10', NULL, NULL, NULL, NULL, 'Multivitamins', 'Obsolete', 'xlat125', 'Consumable', 0),
(658, '', '', 'None', NULL, '0', '35000', '0', '', 0, 0, 0, '2027-07-30', '', 'Vitamin B12 Nasal SPray ', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Anti-spasmotic', 'Obsolete', 'xlat125', 'Consumable', 0),
(659, '', '', 'None', NULL, '0', '30000', '0', '', 0, 0, 0, '2027-07-30', '', 'NASO B12 NASAL SPRAY', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Anti-spasmotic', 'Obsolete', 'xlat125', 'Consumable', 0),
(660, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMIN D3 INJECTION', '0', 'Vials', '1900-01-11', NULL, NULL, NULL, NULL, 'Vitamins', 'Obsolete', 'xlat125', 'Consumable', 0),
(661, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'FANSIDAR  3\'S', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Antimalaria', 'Obsolete', 'xlat125', 'Consumable', 0),
(662, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CETAMOL  60MLS', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Painkiller', 'Obsolete', 'xlat125', NULL, 10000),
(663, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE 4MG UK', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Painkiller', 'Obsolete', 'xlat125', NULL, 0),
(664, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'APIDONESYRUP100MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 40000),
(665, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'METFORMINDENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPOGLYCEMIC', 'Obsolete', 'xlat125', NULL, 0),
(666, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'METHYLDOPA250MG(HYDOPA)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 12000),
(667, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN625MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 56000),
(668, '', '', 'None', NULL, '0', '22000', '0', '', 0, 0, 0, '2027-07-30', '', 'EPICEPHINE2GM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 44000),
(669, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ALBENDAZOLETABS(WORMIN)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIPROTOZOAL', 'Obsolete', 'xlat125', NULL, 0),
(670, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'D-ARTEPADULT', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 50000),
(671, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'OMEPRAZOLE20MGI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 10000),
(672, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHA500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 36000),
(673, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'EXAMINATIONGLOVES', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(674, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'STERILEGAUZE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 25000),
(675, '', '', 'None', NULL, '0', '13000', '0', '', 0, 0, 0, '2027-07-30', '', 'RELCERGEL200ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 26000),
(676, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'MONTICOPE5/10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 30000),
(677, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSPAEDIACTRICLINCTUS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 28000);
INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(678, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'LIMZER', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 72000),
(679, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CREPBANDAGESSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 7500),
(680, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'RL', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NA', 'Obsolete', 'xlat125', NULL, 18000),
(681, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DELEASEDDRYSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(682, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DELEASEDPAEDSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 20000),
(683, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'APFLUESYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(684, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'SECNIDAZOLETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANT HEMENTICS', 'Obsolete', 'xlat125', NULL, 8000),
(685, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'SECNIDAZOLESYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANT HEMENTICS', 'Obsolete', 'xlat125', NULL, 0),
(686, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'G-CEFTRIA1GM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 50000),
(687, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'NOSPAINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI SPOSMATIC', 'Obsolete', 'xlat125', NULL, 7000),
(688, '', '', 'None', NULL, '0', '700', '0', '', 0, 0, 0, '2027-07-30', '', 'NOSPATABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI SPOSMATIC', 'Obsolete', 'xlat125', NULL, 35000),
(689, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'MENTHOXYL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(690, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINCTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'VITAMINS', 'Obsolete', 'xlat125', NULL, 0),
(691, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 10000),
(692, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'PANADOLADVANCE', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 60000),
(693, '', '', 'None', NULL, '0', '250', '0', '', 0, 0, 0, '2027-07-30', '', 'PANADOLEXTRA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(694, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'PARACETAMOL500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(695, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'PARACETAMOLI.VINDIA', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 40000),
(696, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'METOCLOPROMIDE(PLASIL)10MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 18000),
(697, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(698, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(699, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERSPRAY', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 20000),
(700, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'NS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 27000),
(701, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'D5%', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 24000),
(702, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'D50%', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 5000),
(703, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'GIVINGSETI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(704, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'BLOODGIVINGSET', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(705, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', '20MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 12000),
(706, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', '10MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 10000),
(707, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', '5MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(708, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', '2MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(709, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULAYELLOWI.V24G', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(710, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULABLUE22GI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(711, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULAPINK', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(712, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(713, '', '', 'None', NULL, '0', '30000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN228/5ML', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 30000),
(714, '', '', 'None', NULL, '0', '45000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN457/5ML', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(715, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'AMICLOX500MGCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(716, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMPICLOX500MGINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(717, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMPICLOXSYRUPINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 5000),
(718, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCILIN250MGCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(719, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCILIN500MGCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 50000),
(720, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYLSYRUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 5000),
(721, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLE200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(722, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLE400MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(723, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLEI.V', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(724, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'DOXYCILIN100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(725, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'NITROFUROTOIN100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(726, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'SEPTRIN480', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(727, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'SEPTRIN960', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(728, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'CHLORAPHENICAL250MGCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(729, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTEFAN20/120MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 16000),
(730, '', '', 'None', NULL, '0', '17000', '0', '', 0, 0, 0, '2027-07-30', '', 'DUOCOTEXIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(731, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CRESTOR20MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(732, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'BISOPROLOL5MGUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 56000),
(733, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN30MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 20000),
(734, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN60MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 28000),
(735, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN120MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 105000),
(736, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'SUPIROCINOITMENT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 15000),
(737, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DICLODAYCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(738, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLONEMCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(739, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'MENTHOPLUS', '0', 'Unit', '1900-07-21', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(740, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'DRAGONBALM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(741, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'DRAGONLIQUID', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(742, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LANSOPRAZOLE(ZOLANAS)30MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI ULCERS', 'Obsolete', 'xlat125', NULL, 25000),
(743, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'OMEPRAZOLE20MG(OCID|)', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 0),
(744, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLARITHROMYCIN500MGINDIA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(745, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'SURGICALGLOVES7.5MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(746, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ALKA5SYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 15000),
(747, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'D-ARTEPPAED', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 10000),
(748, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'ETORICOXIB(BRUTAFLAM)90MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 45000),
(749, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ETORICOXIB(BRUTAFLAM)60MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 30000),
(750, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'RELCERGEL100ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 0),
(751, '', '', 'None', NULL, '0', '8000', '0', '', 0, 0, 0, '2027-07-30', '', 'ASCORILSYRUP100ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 16000),
(752, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ASCORILSYRUP200ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 45000),
(753, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXIME400MG(CEFWELL)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 30000),
(754, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DIAZEPAMINJ5MG/ML', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'BARBITRATE', 'Obsolete', 'xlat125', NULL, 4000),
(755, '', '', 'None', NULL, '0', '1800', '0', '', 0, 0, 0, '2027-07-30', '', 'BINLINERSMEDIUM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(756, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXIM200MGINDIATABS', '0', 'Tab', '1905-07-14', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(757, '', '', 'None', NULL, '0', '35000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 35000),
(758, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PARADENK250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(759, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'PARADENK125MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 15000),
(760, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'DICLODENKRECTAL100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(761, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAXITROLEYEDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 15000),
(762, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAMADOLINJ', '0', 'Sachet', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(763, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAMADOLCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 20000),
(764, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'NAPROXEN250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(765, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ORS', '0', 'Sachet', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(766, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPRO500MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(767, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPRODENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(768, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'LEVODENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 120000),
(769, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'LEVOFLOXACIN500MG(LEVIN)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(770, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRANSPOREPLASTERLARGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(771, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRANSPOREPLASTERMEDIUM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(772, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'SKDERM15GM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(773, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'SKDERM30GM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(774, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOTRIMAZOLOECREAM(UNISTEN)', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(775, '', '', 'None', NULL, '0', '40000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONCALLPLUSSTRIP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(776, '', '', 'None', NULL, '0', '55000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONCALLPLUSGLUCOMETER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(777, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'GRAMOCEFO400MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(778, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'GRAMOCEFO200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(779, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'LIVOLIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTMINERALS', 'Obsolete', 'xlat125', NULL, 0),
(780, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GINSOMIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 45000),
(781, '', '', 'None', NULL, '0', '45000', '0', '', 0, 0, 0, '2027-07-30', '', 'FORMONIDEINHALER200MCG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'INHALER', 'Obsolete', 'xlat125', NULL, 0),
(782, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'PROBETANEYE/EARDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(783, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'GENTAEYE/EARDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(784, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'AZITHROMYCIN500MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(785, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHA250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(786, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHASYRUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(787, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PENEGRA50MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(788, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PENEGRA100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(789, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'KAMAGRA100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(790, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KAMAGRA50MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(791, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'CETRIZINE10MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(792, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'PREDNISOLINETABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(793, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'DEXAMETHASONE0.5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(794, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLO-DENK5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 150000),
(795, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLO-DENK10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 200000),
(796, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINBCOMPLEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 0),
(797, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINBCOMPLEXINJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 6000),
(798, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'MULTVIT', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(799, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'MAGNESIUMTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 0),
(800, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAGNESIUMSYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 0),
(801, '', '', 'None', NULL, '0', '3500', '0', '', 0, 0, 0, '2027-07-30', '', 'ALWAYS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(802, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'PRINCESS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(803, '', '', 'None', NULL, '0', '3500', '0', '', 0, 0, 0, '2027-07-30', '', 'SOFTCARE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(804, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'METFORMINDENK1000MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 90000),
(805, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'MYOSPAZ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 30000),
(806, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'DURAGESIC', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 30000),
(807, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 8000),
(808, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'BACKUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(809, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'LYDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(810, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'POSTINOR2', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(811, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'PILLPLANCOC', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 3000),
(812, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'MICROGYNON', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(813, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDAFLEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(814, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'SINARESTTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(815, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'PAINEX', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(816, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'ACTION', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(817, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'HEDONTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(818, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'HEDEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(819, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'COUGHLINCTUSSMALL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(820, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'COUGHLINCTUSBIG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(821, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUFEDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(822, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TOFFPLUS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(823, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'KETACONAZOLETABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(824, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCONAZOLECAPS200MGINDA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 9000),
(825, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'LIGNOCAININJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'LOCAL ANESTHESIA', 'Obsolete', 'xlat125', NULL, 0),
(826, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTANH(TELVAS)80/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 75000),
(827, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTAN(TELVAS)80MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(828, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTAN(TELVAS)40MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 30000),
(829, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTANH(TELVAS)40/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 16000),
(830, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE(EUGLIME)4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI DIABETICS', 'Obsolete', 'xlat125', NULL, 0),
(831, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE(EUGLIM)2MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI DIABETICS', 'Obsolete', 'xlat125', NULL, 25000),
(832, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROXYUREA250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(833, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROXYUREA500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 22500),
(834, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'WATERFORINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(835, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDEASECAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(836, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(837, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'ERYTHROMYCIN250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(838, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAMOXCAPS500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(839, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CURAMOLPLUS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(840, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'EXTRADOL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(841, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'FLURID', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(842, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KISSCONDOMSTRABERRY', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(843, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KISSCONDOMSTUNDED', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(844, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEPHALEXINSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(845, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'CEPHALEXINCAPS250MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(846, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'HAEMOFORTESYRUP90MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(847, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'HAEMOFORTE200MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 20000),
(848, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDV6PESSARIES', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 20000),
(849, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDVGEL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(850, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'DREZVGEL', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(851, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'MCGCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(852, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDERMCREAM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(853, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'ABNALNASOLDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(854, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ISORYNPAED', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 7000),
(855, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ISORYNADULT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 14000),
(856, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 14000),
(857, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'GROVITSYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 14000),
(858, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'GROVITDROP', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 21000),
(859, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUROSEMIDEINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 36000),
(860, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FUROSEMIDE40MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(861, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON8MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(862, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON4MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 8000),
(863, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON4MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(864, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON8MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(865, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRENAXAMICACIDINJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 0),
(866, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TRENAXAMICACIDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 0),
(867, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ACICLOVIR200MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIVIRAL', 'Obsolete', 'xlat125', NULL, 9600),
(868, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'ACICLOVIRCREAM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-VIRAL', 'Obsolete', 'xlat125', NULL, 0),
(869, '', '', 'None', NULL, '0', '16000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZARICORTCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 16000),
(870, '', '', 'None', NULL, '0', '16000', '0', '', 0, 0, 0, '2027-07-30', '', 'ORACUREGEL', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(871, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'BENZOXCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(872, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROCORTISONECREAMINDIA', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 4000),
(873, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROCORTISONEINJINDIA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'CORTICOSTERIOD', 'Obsolete', 'xlat125', NULL, 45000),
(874, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINSCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 10000),
(875, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(876, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINOITMENT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(877, '', '', 'None', NULL, '0', '13000', '0', '', 0, 0, 0, '2027-07-30', '', 'SILVEREXCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(878, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUNGISAFECREAM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 15000),
(879, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUNGISAFE250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(880, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'NEOMYCINCREAM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(881, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'EUDERMCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(882, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'BENZATHINEINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(883, '', '', 'None', NULL, '0', '17000', '0', '', 0, 0, 0, '2027-07-30', '', 'PISA4.5MGINJ', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 34000),
(884, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPROI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 9000),
(885, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAMOXSUSPENSION', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(886, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAXITROLOITMENT', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(887, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'DEXONAEYE/EARDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'CORTICOSTERIOD', 'Obsolete', 'xlat125', NULL, 3000),
(888, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'T.E.O', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 4000),
(889, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'BETASERC8MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(890, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'BETASERC16MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(891, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CALCIVITA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 25000),
(892, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'FERROTONE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(893, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TORASDENK5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(894, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'TORASDENK10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(895, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'NOOTROPIL800MCG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(896, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOPIDOGREL75MGUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(897, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLODIPINE(AMLODAC)5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 24000),
(898, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLODIPINE(AMLODAC)10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(899, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'NEBILONG5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(900, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'DAPAGLIFOZIN(FORZIGA)10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(901, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'DAPAGLIFOZIN(DAPZIN)10MG', '0', 'Stp', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(902, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CARVEDILOL6.25MGTABSUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(903, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'CARVEDILOL6.25MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 18000),
(904, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'XYKAA1000MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(905, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'LOSACARH50/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 24000),
(906, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LOSACAR50MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 15000),
(907, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLOSARDENK50/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 54000),
(908, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'SPIRONACTONE25MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 50000),
(909, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'SALBUTAMOLNEBULES', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(910, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'SALBUTAMOLTABS4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(911, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'METHOTREXATE2.5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 1500),
(912, '', '', 'None', NULL, '0', '1100', '0', '', 0, 0, 0, '2027-07-30', '', 'METHOTREXATE5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(913, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'CARBIMAZOLE5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(914, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TOLFREE100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 0),
(915, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINDCHEWABLE', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 6000),
(916, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'IVERMECTIN12MGTABSUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIVIRAL', 'Obsolete', 'xlat125', NULL, 0),
(917, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TRIGANDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 21500),
(918, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'MANNITOLI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(919, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(920, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PMEDIUM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(921, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PLARGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 10000),
(922, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'URINARYCATHETER16G', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(923, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'URINEBAG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(924, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'NASALCANNULA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(925, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'INSULINSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4000),
(926, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CHLORHEXIDINESOLUTIONSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(927, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'IODINESOLUTIONSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(928, '', '', 'None', NULL, '0', '25000', '0', '', 0, 0, 0, '2027-07-30', '', 'IODINESOLUTION1L', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(929, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LORATIDINE(LORVIC)10MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HISTAMINE', 'Obsolete', 'xlat125', NULL, 5000),
(930, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'LORATIDINE(LORVIC)10MGSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HISTAMINE', 'Obsolete', 'xlat125', NULL, 20000),
(931, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMOLTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 9000);
INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(932, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMOLSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 5000),
(933, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUPFOFEN200MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(934, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUPFOFEN400MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(935, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMEX60MLSSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(936, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'ZINCTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 10000),
(937, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'SEDIPROCTSUPPOSITORY', '0', 'Tab', '1905-07-25', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(938, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'SEDIPROCTCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(939, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'MEFANAMICACID500MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 45000),
(940, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'HYOSCINETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 50000),
(941, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYOSCINEINJECTION', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(942, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'TAMSULOSIN0.4MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 48000),
(943, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DUPHASTON10MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(944, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'MISOPROSTOL200MCGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(945, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'TADALAFIL4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(946, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'SUMATRIPTANTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(947, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CORNPLASTER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 30000),
(948, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'CARBAMAZIPINE200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(949, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXIKID125MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(950, '', '', 'None', NULL, '0', '150', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXIKID250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(951, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINACAPS200,000IU', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 600),
(952, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ALLUPURINOL300MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(953, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'FEFOTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(954, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'FOLICACID5MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(955, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PROPANOLOL40MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(956, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTANE5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 40000),
(957, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'CAPTOPRIL25MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(958, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PHENYTOIN100MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(959, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'PHENYTOIN100MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(960, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'PRAZIQUENTAL600MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIPROTOZOAL', 'Obsolete', 'xlat125', NULL, 3000),
(961, '', '', 'None', NULL, '0', '8000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDPOWDER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 8000),
(962, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ULTRASOLVSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(963, '', '', 'None', NULL, '0', '18000', '0', '', 0, 0, 0, '2027-07-30', '', 'ENEMAX', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(964, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ERYTHROMYCINSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(965, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'BISACODYL5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2500),
(966, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'HCGSTRIP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(967, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PENVTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(968, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDCAP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(969, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOBETASOLCREAMINDIA', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(970, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'QUININETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(971, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'QUININEINJE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(972, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PIROXICAM20MGCAPS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(973, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'INDOMETHACIN100MGTABS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(974, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'NORMAGUT', '0', 'Capsules', '1900-01-10', NULL, NULL, NULL, NULL, 'Multivitamins', 'Obsolete', 'xlat125', 'Consumable', 0),
(975, '', '', 'None', NULL, '0', '35000', '0', '', 0, 0, 0, '2027-07-30', '', 'Vitamin B12 Nasal SPray ', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Anti-spasmotic', 'Obsolete', 'xlat125', 'Consumable', 0),
(976, '', '', 'None', NULL, '0', '30000', '0', '', 0, 0, 0, '2027-07-30', '', 'NASO B12 NASAL SPRAY', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Anti-spasmotic', 'Obsolete', 'xlat125', 'Consumable', 0),
(977, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMIN D3 INJECTION', '0', 'Vials', '1900-01-11', NULL, NULL, NULL, NULL, 'Vitamins', 'Obsolete', 'xlat125', 'Consumable', 0),
(978, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'FANSIDAR  3\'S', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Antimalaria', 'Obsolete', 'xlat125', 'Consumable', 0),
(979, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CETAMOL  60MLS', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Painkiller', 'Obsolete', 'xlat125', NULL, 10000),
(980, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE 4MG UK', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Painkiller', 'Obsolete', 'xlat125', NULL, 0),
(981, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'APIDONESYRUP100MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 40000),
(982, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'METFORMINDENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPOGLYCEMIC', 'Obsolete', 'xlat125', NULL, 0),
(983, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'METHYLDOPA250MG(HYDOPA)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 12000),
(984, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN625MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 56000),
(985, '', '', 'None', NULL, '0', '22000', '0', '', 0, 0, 0, '2027-07-30', '', 'EPICEPHINE2GM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 44000),
(986, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ALBENDAZOLETABS(WORMIN)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIPROTOZOAL', 'Obsolete', 'xlat125', NULL, 0),
(987, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'D-ARTEPADULT', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 50000),
(988, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'OMEPRAZOLE20MGI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 10000),
(989, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHA500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 36000),
(990, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'EXAMINATIONGLOVES', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(991, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'STERILEGAUZE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 25000),
(992, '', '', 'None', NULL, '0', '13000', '0', '', 0, 0, 0, '2027-07-30', '', 'RELCERGEL200ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 26000),
(993, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'MONTICOPE5/10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 30000),
(994, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSPAEDIACTRICLINCTUS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 28000),
(995, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'LIMZER', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 72000),
(996, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CREPBANDAGESSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 7500),
(997, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'RL', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NA', 'Obsolete', 'xlat125', NULL, 18000),
(998, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DELEASEDDRYSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(999, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DELEASEDPAEDSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 20000),
(1000, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'APFLUESYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(1001, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'SECNIDAZOLETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANT HEMENTICS', 'Obsolete', 'xlat125', NULL, 8000),
(1002, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'SECNIDAZOLESYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANT HEMENTICS', 'Obsolete', 'xlat125', NULL, 0),
(1003, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'G-CEFTRIA1GM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 50000),
(1004, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'NOSPAINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI SPOSMATIC', 'Obsolete', 'xlat125', NULL, 7000),
(1005, '', '', 'None', NULL, '0', '700', '0', '', 0, 0, 0, '2027-07-30', '', 'NOSPATABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI SPOSMATIC', 'Obsolete', 'xlat125', NULL, 35000),
(1006, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'MENTHOXYL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1007, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINCTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'VITAMINS', 'Obsolete', 'xlat125', NULL, 0),
(1008, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 10000),
(1009, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'PANADOLADVANCE', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 60000),
(1010, '', '', 'None', NULL, '0', '250', '0', '', 0, 0, 0, '2027-07-30', '', 'PANADOLEXTRA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1011, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'PARACETAMOL500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1012, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'PARACETAMOLI.VINDIA', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 40000),
(1013, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'METOCLOPROMIDE(PLASIL)10MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 18000),
(1014, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1015, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1016, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERSPRAY', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 20000),
(1017, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'NS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 27000),
(1018, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'D5%', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 24000),
(1019, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'D50%', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 5000),
(1020, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'GIVINGSETI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(1021, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'BLOODGIVINGSET', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(1022, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', '20MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 12000),
(1023, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', '10MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 10000),
(1024, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', '5MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(1025, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', '2MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(1026, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULAYELLOWI.V24G', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(1027, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULABLUE22GI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1028, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULAPINK', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1029, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(1030, '', '', 'None', NULL, '0', '30000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN228/5ML', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 30000),
(1031, '', '', 'None', NULL, '0', '45000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN457/5ML', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1032, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'AMICLOX500MGCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1033, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMPICLOX500MGINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1034, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMPICLOXSYRUPINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 5000),
(1035, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCILIN250MGCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(1036, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCILIN500MGCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 50000),
(1037, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYLSYRUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 5000),
(1038, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLE200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(1039, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLE400MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1040, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLEI.V', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(1041, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'DOXYCILIN100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(1042, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'NITROFUROTOIN100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1043, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'SEPTRIN480', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1044, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'SEPTRIN960', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1045, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'CHLORAPHENICAL250MGCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1046, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTEFAN20/120MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 16000),
(1047, '', '', 'None', NULL, '0', '17000', '0', '', 0, 0, 0, '2027-07-30', '', 'DUOCOTEXIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(1048, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CRESTOR20MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1049, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'BISOPROLOL5MGUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 56000),
(1050, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN30MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 20000),
(1051, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN60MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 28000),
(1052, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN120MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 105000),
(1053, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'SUPIROCINOITMENT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 15000),
(1054, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DICLODAYCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(1055, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLONEMCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1056, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'MENTHOPLUS', '0', 'Unit', '1900-07-21', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1057, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'DRAGONBALM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1058, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'DRAGONLIQUID', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1059, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LANSOPRAZOLE(ZOLANAS)30MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI ULCERS', 'Obsolete', 'xlat125', NULL, 25000),
(1060, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'OMEPRAZOLE20MG(OCID|)', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 0),
(1061, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLARITHROMYCIN500MGINDIA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(1062, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'SURGICALGLOVES7.5MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(1063, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ALKA5SYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 15000),
(1064, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'D-ARTEPPAED', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 10000),
(1065, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'ETORICOXIB(BRUTAFLAM)90MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 45000),
(1066, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ETORICOXIB(BRUTAFLAM)60MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 30000),
(1067, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'RELCERGEL100ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 0),
(1068, '', '', 'None', NULL, '0', '8000', '0', '', 0, 0, 0, '2027-07-30', '', 'ASCORILSYRUP100ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 16000),
(1069, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ASCORILSYRUP200ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 45000),
(1070, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXIME400MG(CEFWELL)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 30000),
(1071, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DIAZEPAMINJ5MG/ML', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'BARBITRATE', 'Obsolete', 'xlat125', NULL, 4000),
(1072, '', '', 'None', NULL, '0', '1800', '0', '', 0, 0, 0, '2027-07-30', '', 'BINLINERSMEDIUM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1073, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXIM200MGINDIATABS', '0', 'Tab', '1905-07-14', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1074, '', '', 'None', NULL, '0', '35000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 35000),
(1075, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PARADENK250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(1076, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'PARADENK125MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 15000),
(1077, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'DICLODENKRECTAL100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1078, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAXITROLEYEDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 15000),
(1079, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAMADOLINJ', '0', 'Sachet', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1080, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAMADOLCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 20000),
(1081, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'NAPROXEN250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1082, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ORS', '0', 'Sachet', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1083, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPRO500MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(1084, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPRODENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(1085, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'LEVODENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 120000),
(1086, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'LEVOFLOXACIN500MG(LEVIN)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1087, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRANSPOREPLASTERLARGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1088, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRANSPOREPLASTERMEDIUM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1089, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'SKDERM15GM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1090, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'SKDERM30GM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1091, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOTRIMAZOLOECREAM(UNISTEN)', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(1092, '', '', 'None', NULL, '0', '40000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONCALLPLUSSTRIP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1093, '', '', 'None', NULL, '0', '55000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONCALLPLUSGLUCOMETER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1094, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'GRAMOCEFO400MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(1095, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'GRAMOCEFO200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1096, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'LIVOLIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTMINERALS', 'Obsolete', 'xlat125', NULL, 0),
(1097, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GINSOMIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 45000),
(1098, '', '', 'None', NULL, '0', '45000', '0', '', 0, 0, 0, '2027-07-30', '', 'FORMONIDEINHALER200MCG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'INHALER', 'Obsolete', 'xlat125', NULL, 0),
(1099, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'PROBETANEYE/EARDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1100, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'GENTAEYE/EARDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(1101, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'AZITHROMYCIN500MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1102, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHA250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1103, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHASYRUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(1104, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PENEGRA50MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1105, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PENEGRA100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1106, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'KAMAGRA100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1107, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KAMAGRA50MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1108, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'CETRIZINE10MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1109, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'PREDNISOLINETABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1110, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'DEXAMETHASONE0.5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1111, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLO-DENK5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 150000),
(1112, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLO-DENK10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 200000),
(1113, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINBCOMPLEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 0),
(1114, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINBCOMPLEXINJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 6000),
(1115, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'MULTVIT', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(1116, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'MAGNESIUMTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 0),
(1117, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAGNESIUMSYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 0),
(1118, '', '', 'None', NULL, '0', '3500', '0', '', 0, 0, 0, '2027-07-30', '', 'ALWAYS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1119, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'PRINCESS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1120, '', '', 'None', NULL, '0', '3500', '0', '', 0, 0, 0, '2027-07-30', '', 'SOFTCARE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1121, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'METFORMINDENK1000MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 90000),
(1122, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'MYOSPAZ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 30000),
(1123, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'DURAGESIC', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 30000),
(1124, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 8000),
(1125, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'BACKUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(1126, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'LYDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(1127, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'POSTINOR2', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(1128, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'PILLPLANCOC', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 3000),
(1129, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'MICROGYNON', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(1130, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDAFLEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1131, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'SINARESTTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1132, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'PAINEX', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1133, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'ACTION', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1134, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'HEDONTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1135, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'HEDEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1136, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'COUGHLINCTUSSMALL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1137, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'COUGHLINCTUSBIG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1138, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUFEDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1139, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TOFFPLUS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1140, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'KETACONAZOLETABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1141, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCONAZOLECAPS200MGINDA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 9000),
(1142, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'LIGNOCAININJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'LOCAL ANESTHESIA', 'Obsolete', 'xlat125', NULL, 0),
(1143, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTANH(TELVAS)80/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 75000),
(1144, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTAN(TELVAS)80MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1145, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTAN(TELVAS)40MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 30000),
(1146, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTANH(TELVAS)40/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 16000),
(1147, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE(EUGLIME)4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI DIABETICS', 'Obsolete', 'xlat125', NULL, 0),
(1148, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE(EUGLIM)2MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI DIABETICS', 'Obsolete', 'xlat125', NULL, 25000),
(1149, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROXYUREA250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(1150, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROXYUREA500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 22500),
(1151, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'WATERFORINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1152, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDEASECAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1153, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1154, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'ERYTHROMYCIN250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(1155, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAMOXCAPS500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1156, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CURAMOLPLUS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1157, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'EXTRADOL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1158, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'FLURID', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1159, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KISSCONDOMSTRABERRY', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1160, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KISSCONDOMSTUNDED', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1161, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEPHALEXINSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1162, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'CEPHALEXINCAPS250MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1163, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'HAEMOFORTESYRUP90MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(1164, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'HAEMOFORTE200MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 20000),
(1165, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDV6PESSARIES', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 20000),
(1166, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDVGEL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1167, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'DREZVGEL', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1168, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'MCGCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1169, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDERMCREAM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1170, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'ABNALNASOLDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1171, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ISORYNPAED', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 7000),
(1172, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ISORYNADULT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 14000),
(1173, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 14000),
(1174, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'GROVITSYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 14000),
(1175, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'GROVITDROP', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 21000),
(1176, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUROSEMIDEINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 36000),
(1177, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FUROSEMIDE40MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1178, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON8MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(1179, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON4MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 8000),
(1180, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON4MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(1181, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON8MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(1182, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRENAXAMICACIDINJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 0),
(1183, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TRENAXAMICACIDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 0),
(1184, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ACICLOVIR200MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIVIRAL', 'Obsolete', 'xlat125', NULL, 9600);
INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(1185, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'ACICLOVIRCREAM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-VIRAL', 'Obsolete', 'xlat125', NULL, 0),
(1186, '', '', 'None', NULL, '0', '16000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZARICORTCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 16000),
(1187, '', '', 'None', NULL, '0', '16000', '0', '', 0, 0, 0, '2027-07-30', '', 'ORACUREGEL', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1188, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'BENZOXCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1189, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROCORTISONECREAMINDIA', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 4000),
(1190, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROCORTISONEINJINDIA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'CORTICOSTERIOD', 'Obsolete', 'xlat125', NULL, 45000),
(1191, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINSCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 10000),
(1192, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1193, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINOITMENT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1194, '', '', 'None', NULL, '0', '13000', '0', '', 0, 0, 0, '2027-07-30', '', 'SILVEREXCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1195, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUNGISAFECREAM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 15000),
(1196, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUNGISAFE250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1197, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'NEOMYCINCREAM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(1198, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'EUDERMCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1199, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'BENZATHINEINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(1200, '', '', 'None', NULL, '0', '17000', '0', '', 0, 0, 0, '2027-07-30', '', 'PISA4.5MGINJ', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 34000),
(1201, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPROI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 9000),
(1202, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAMOXSUSPENSION', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(1203, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAXITROLOITMENT', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1204, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'DEXONAEYE/EARDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'CORTICOSTERIOD', 'Obsolete', 'xlat125', NULL, 3000),
(1205, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'T.E.O', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 4000),
(1206, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'BETASERC8MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1207, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'BETASERC16MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1208, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CALCIVITA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 25000),
(1209, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'FERROTONE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1210, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TORASDENK5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1211, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'TORASDENK10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1212, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'NOOTROPIL800MCG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(1213, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOPIDOGREL75MGUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1214, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLODIPINE(AMLODAC)5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 24000),
(1215, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLODIPINE(AMLODAC)10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1216, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'NEBILONG5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1217, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'DAPAGLIFOZIN(FORZIGA)10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1218, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'DAPAGLIFOZIN(DAPZIN)10MG', '0', 'Stp', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1219, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CARVEDILOL6.25MGTABSUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1220, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'CARVEDILOL6.25MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 18000),
(1221, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'XYKAA1000MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1222, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'LOSACARH50/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 24000),
(1223, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LOSACAR50MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 15000),
(1224, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLOSARDENK50/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 54000),
(1225, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'SPIRONACTONE25MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 50000),
(1226, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'SALBUTAMOLNEBULES', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1227, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'SALBUTAMOLTABS4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1228, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'METHOTREXATE2.5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 1500),
(1229, '', '', 'None', NULL, '0', '1100', '0', '', 0, 0, 0, '2027-07-30', '', 'METHOTREXATE5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1230, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'CARBIMAZOLE5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(1231, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TOLFREE100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 0),
(1232, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINDCHEWABLE', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 6000),
(1233, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'IVERMECTIN12MGTABSUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIVIRAL', 'Obsolete', 'xlat125', NULL, 0),
(1234, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TRIGANDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 21500),
(1235, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'MANNITOLI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1236, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1237, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PMEDIUM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1238, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PLARGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 10000),
(1239, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'URINARYCATHETER16G', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(1240, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'URINEBAG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(1241, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'NASALCANNULA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1242, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'INSULINSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4000),
(1243, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CHLORHEXIDINESOLUTIONSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1244, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'IODINESOLUTIONSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1245, '', '', 'None', NULL, '0', '25000', '0', '', 0, 0, 0, '2027-07-30', '', 'IODINESOLUTION1L', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1246, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LORATIDINE(LORVIC)10MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HISTAMINE', 'Obsolete', 'xlat125', NULL, 5000),
(1247, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'LORATIDINE(LORVIC)10MGSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HISTAMINE', 'Obsolete', 'xlat125', NULL, 20000),
(1248, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMOLTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 9000),
(1249, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMOLSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 5000),
(1250, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUPFOFEN200MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1251, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUPFOFEN400MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1252, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMEX60MLSSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1253, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'ZINCTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 10000),
(1254, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'SEDIPROCTSUPPOSITORY', '0', 'Tab', '1905-07-25', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(1255, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'SEDIPROCTCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1256, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'MEFANAMICACID500MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 45000),
(1257, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'HYOSCINETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 50000),
(1258, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYOSCINEINJECTION', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1259, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'TAMSULOSIN0.4MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 48000),
(1260, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DUPHASTON10MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1261, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'MISOPROSTOL200MCGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(1262, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'TADALAFIL4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1263, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'SUMATRIPTANTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1264, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CORNPLASTER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 30000),
(1265, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'CARBAMAZIPINE200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(1266, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXIKID125MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1267, '', '', 'None', NULL, '0', '150', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXIKID250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1268, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINACAPS200,000IU', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 600),
(1269, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ALLUPURINOL300MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1270, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'FEFOTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1271, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'FOLICACID5MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(1272, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PROPANOLOL40MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1273, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTANE5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 40000),
(1274, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'CAPTOPRIL25MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(1275, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PHENYTOIN100MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(1276, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'PHENYTOIN100MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1277, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'PRAZIQUENTAL600MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIPROTOZOAL', 'Obsolete', 'xlat125', NULL, 3000),
(1278, '', '', 'None', NULL, '0', '8000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDPOWDER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 8000),
(1279, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ULTRASOLVSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(1280, '', '', 'None', NULL, '0', '18000', '0', '', 0, 0, 0, '2027-07-30', '', 'ENEMAX', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1281, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ERYTHROMYCINSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(1282, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'BISACODYL5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2500),
(1283, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'HCGSTRIP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1284, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PENVTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1285, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDCAP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1286, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOBETASOLCREAMINDIA', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1287, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'QUININETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(1288, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'QUININEINJE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(1289, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PIROXICAM20MGCAPS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1290, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'INDOMETHACIN100MGTABS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(1291, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'NORMAGUT', '0', 'Capsules', '1900-01-10', NULL, NULL, NULL, NULL, 'Multivitamins', 'Obsolete', 'xlat125', 'Consumable', 0),
(1292, '', '', 'None', NULL, '0', '35000', '0', '', 0, 0, 0, '2027-07-30', '', 'Vitamin B12 Nasal SPray ', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Anti-spasmotic', 'Obsolete', 'xlat125', 'Consumable', 0),
(1293, '', '', 'None', NULL, '0', '30000', '0', '', 0, 0, 0, '2027-07-30', '', 'NASO B12 NASAL SPRAY', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Anti-spasmotic', 'Obsolete', 'xlat125', 'Consumable', 0),
(1294, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMIN D3 INJECTION', '0', 'Vials', '1900-01-11', NULL, NULL, NULL, NULL, 'Vitamins', 'Obsolete', 'xlat125', 'Consumable', 0),
(1295, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'FANSIDAR  3\'S', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Antimalaria', 'Obsolete', 'xlat125', 'Consumable', 0),
(1296, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CETAMOL  60MLS', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Painkiller', 'Obsolete', 'xlat125', NULL, 10000),
(1297, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE 4MG UK', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Painkiller', 'Obsolete', 'xlat125', NULL, 0),
(1298, 'Gggg', 'Gggg', 'Gggg', '0', '0', '300', '300', 'None', 0, 200, 0, '2024-11-18', 'Gggg', 'Gggg', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 200, 'Anti-spasmotic', 'Obsolete', 'B342344333', 'Consumable', 0),
(1299, 'Mangre', 'Mangre', 'Mangre', '0', '0', '400', '400', 'None', 0, 300, 0, '2023-11-25', 'Nov-18-2023', 'Mangre', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 300, 'Anti-spasmotic', 'Obsolete', 'B52222', 'Consumable', 0),
(1300, 'Pumkin', 'Pumkin', 'Pumkin', '0', '0', '400', '400', 'None', 0, 300, 0, '2023-12-09', 'Nov-18-2023', 'Pumkin', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 300, 'Anti-spasmotic', 'Obsolete', 'BC21', 'Consumable', 0),
(1301, 'ACECLOFENAC 100MG TABS', 'ACECLOFENAC 100MG TABS', 'ACECLOFENAC 100MG TABS', '0', '0', '200', '200', 'None', 0, 70, 0, '2026-12-30', 'ACECLOFENAC 100MG TABS', 'ACECLOFENAC 100MG TABS', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 70, 'Painkiller', 'Obsolete', 'QEW5RY', 'Consumable', 0),
(1302, 'MONTELUKAST 10MG TABS', 'MONTELUKAST 10MG TABS', 'MONTELUKAST 10MG TABS', '0', '0', '700', '700', 'None', 0, 30, 0, '2027-12-30', 'MONTELUKAST 10MG TABS', 'MONTELUKAST 10MG TABS', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 30, 'NA', 'Obsolete', '65TERHY', 'Consumable', 0),
(1303, 'SEPTRIN  SYRUP', 'SEPTRIN  SYRUP', 'SEPTRIN  SYRUP', '0', '0', '3000', '3000', 'None', 0, 2, 0, '2027-03-03', 'SEPTRIN  SYRUP', 'SEPTRIN  SYRUP', '0', 'Syrup', '11/18/23', NULL, '0', 'D876', 2, 'Antibiotics', 'Obsolete', 'HF65', 'Consumable', 0),
(1304, 'BENYLIN CODEIN  SYRUP', 'BENYLIN CODEIN  SYRUP', 'BENYLIN CODEIN  SYRUP', '0', '0', '20000', '20000', 'None', 0, 1, 0, '2028-03-30', 'BENYLIN CODEIN  SYRUP', 'BENYLIN CODEIN  SYRUP', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 1, 'NA', 'Obsolete', 'YHTRH', 'Consumable', 0),
(1305, 'ZINC SYRUP', 'ZINC SYRUP', 'ZINC SYRUP', '0', '0', '3000', '3000', 'None', 0, 1, 0, '2027-03-30', 'ZINC SYRUP', 'ZINC SYRUP', '0', 'Syrup', '11/18/23', NULL, '0', 'D876', 1, 'NA', 'Obsolete', 'FC4E', 'Consumable', 0),
(1306, 'DAFRACLAV 457/5MLS', 'DAFRACLAV 457/5MLS', 'DAFRACLAV 457/5MLS', '0', '0', '20000', '20000', 'None', 0, 1, 0, '2027-03-30', 'DAFRACLAV 457/5MLS', 'DAFRACLAV 457/5MLS', '0', 'Syrup', '11/18/23', NULL, '0', 'D876', 1, 'Antibiotics', 'Obsolete', 'FJHN', 'Consumable', 0),
(1307, 'OPELE LOTION', 'OPELE LOTION', 'OPELE LOTION', '0', '0', '5000', '5000', 'None', 0, 1, 0, '2030-04-30', 'OPELE LOTION', 'OPELE LOTION', '0', 'Oitments', '11/18/23', NULL, '0', 'D876', 1, 'NA', 'Obsolete', 'Y4RTU', 'Consumable', 0),
(1308, 'CALAMINE LOTION', 'CALAMINE LOTION', 'CALAMINE LOTION', '0', '0', '3000', '3000', 'None', 0, 2, 0, '2027-05-30', 'CALAMINE LOTION', 'CALAMINE LOTION', '0', 'Oitments', '11/18/23', NULL, '0', 'D876', 2, 'NA', 'Obsolete', 'GRET', 'Consumable', 0),
(1309, 'LACTULOSE SYRUP BIG', 'LACTULOSE SYRUP BIG', 'LACTULOSE SYRUP BIG', '0', '0', '10000', '10000', 'None', 0, 2, 0, '2027-05-30', 'LACTULOSE SYRUP BIG', 'LACTULOSE SYRUP BIG', '0', 'Syrup', '11/18/23', NULL, '0', 'D876', 2, 'NA', 'Obsolete', 'GFWRET', 'Consumable', 0),
(1310, 'BURNCURE', 'BURNCURE', 'BURNCURE', '0', '0', '3000', '3000', 'None', 0, 2, 0, '2027-03-03', 'BURNCURE', 'BURNCURE', '0', 'Cream', '11/18/23', NULL, '0', 'D876', 2, 'NA', 'Obsolete', '21E21', 'Consumable', 0),
(1311, 'VITAMIN B12 INJ', 'VITAMIN B12 INJ', 'VITAMIN B12 INJ', '0', '0', '5000', '5000', 'None', 0, 17, 0, '2028-12-30', 'VITAMIN B12 INJ', 'VITAMIN B12 INJ', '0', 'Ampules', '11/18/23', NULL, '0', 'D876', 17, 'Vitamins', 'Obsolete', '78UY8', 'Consumable', 0),
(1312, 'AMOXYCLAV 1.2GM', 'AMOXYCLAV 1.2GM', 'AMOXYCLAV 1.2GM', '0', '0', '10000', '10000', 'None', 0, 3, 0, '2027-12-30', 'AMOXYCLAV 1.2GM', 'AMOXYCLAV 1.2GM', '0', 'NA', '11/18/23', NULL, '0', 'D876', 3, 'Antibiotics', 'Obsolete', '687U', 'Consumable', 0),
(1313, 'CONTUS BLUE SYRUP', 'CONTUS BLUE SYRUP', 'CONTUS BLUE SYRUP', '0', '0', '7000', '7000', 'None', 0, 1, 0, '2027-05-30', 'CONTUS BLUE SYRUP', 'CONTUS BLUE SYRUP', '0', 'NA', '11/18/23', NULL, '0', 'D876', 1, 'Vitamins', 'Obsolete', '9889', 'Consumable', 0),
(1314, 'BBC SPRAY', 'BBC SPRAY', 'BBC SPRAY', '0', '0', '25000', '25000', 'None', 0, 1, 0, '2027-12-30', 'BBC SPRAY', 'BBC SPRAY', '0', 'Sprays', '11/18/23', NULL, '0', 'D876', 1, 'NA', 'Obsolete', '58T8U8', 'Consumable', 0),
(1315, 'HALOPERIDONE  5MG', 'HALOPERIDONE  5MG', 'HALOPERIDONE  5MG', '0', '0', '500', '500', 'None', 0, 17, 0, '2027-05-30', 'HALOPERIDONE  5MG', 'HALOPERIDONE  5MG', '0', 'NA', '11/18/23', NULL, '0', 'D876', 17, 'NA', 'Obsolete', '897899', 'Consumable', 0),
(1316, 'TRIAM-CINELONE INJ', 'TRIAM-CINELONE INJ', 'TRIAM-CINELONE INJ', '0', '0', '15000', '15000', 'None', 0, 1, 0, '2028-04-30', 'TRIAM-CINELONE INJ', 'TRIAM-CINELONE INJ', '0', 'Vials', '11/18/23', NULL, '0', 'D876', 1, 'NA', 'Obsolete', '87T7IU8', 'Consumable', 0),
(1317, 'AMITRIPTYLINE 25MG', 'AMITRIPTYLINE 25MG', 'AMITRIPTYLINE 25MG', '0', '0', '100', '100', 'None', 0, 100, 0, '2029-03-03', 'AMITRIPTYLINE 25MG', 'AMITRIPTYLINE 25MG', '0', 'NA', '11/18/23', NULL, '0', 'D876', 100, 'NA', 'Obsolete', '78567', 'Consumable', 0),
(1318, 'THIAMINE TABS', 'THIAMINE TABS', 'THIAMINE TABS', '0', '0', '1000', '1000', 'None', 0, 16, 0, '2028-03-30', 'THIAMINE TABS', 'THIAMINE TABS', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 16, 'Multivitamins', 'Obsolete', '7588ITU', 'Consumable', 0),
(1319, 'CLOPIDOGREL 75MG INDIA', 'CLOPIDOGREL 75MG INDIA', 'CLOPIDOGREL 75MG INDIA', '0', '0', '1000', '1000', 'None', 0, 30, 0, '2027-04-30', 'CLOPIDOGREL 75MG INDIA', 'CLOPIDOGREL 75MG INDIA', '0', 'NA', '11/18/23', NULL, '0', 'D876', 30, 'NA', 'Obsolete', '876I8', 'Consumable', 0),
(1320, 'NAT B', 'NAT B', 'NAT B', '0', '0', '1000', '1000', 'None', 0, 30, 0, '2028-03-03', 'NAT B', 'NAT B', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 30, 'Multivitamins', 'Obsolete', '5878', 'Consumable', 0),
(1321, 'ROSUVASTATIN 20MG TABS', 'ROSUVASTATIN 20MG TABS', 'ROSUVASTATIN 20MG TABS', '0', '0', '1200', '1200', 'None', 0, 30, 0, '2024-03-03', 'ROSUVASTATIN 20MG TABS', 'ROSUVASTATIN 20MG TABS', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 30, 'Anti-hypertensive', 'Obsolete', '764U', 'Consumable', 0),
(1322, 'SEVOSTAT SMALL', 'SEVOSTAT SMALL', 'SEVOSTAT SMALL', '0', '0', '3000', '3000', 'None', 0, 1, 0, '2027-03-03', 'SEVOSTAT SMALL', 'SEVOSTAT SMALL', '0', 'NA', '11/18/23', NULL, '0', 'D876', 1, 'NA', 'Obsolete', '8579', 'Non Consumable', 0),
(1323, 'METFORMIN  DENK 850MG', 'METFORMIN  DENK 850MG', 'METFORMIN  DENK 850MG', '0', '0', '700', '700', 'None', 0, 15, 0, '2028-03-03', 'METFORMIN  DENK 850MG', 'METFORMIN  DENK 850MG', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 15, 'Antidiabetics', 'Obsolete', '6788U', 'Consumable', 0),
(1324, 'DAPAGLIFOZIN(DAPZIN)10MG', 'DAPAGLIFOZIN (DAPZIN)10MG', 'DAPAGLIFOZIN(DAPZIN)10MG', '0', '0', '2500', '1500', 'WHITE STAR PHARMA (U) LTD', 0, 60, 0, '2027-12-20', 'DAPAGLIFOZIN(DAPZIN)10MG', 'DAPAGLIFOZIN(DAPZIN)10MG', '0', 'cash', '2023-12-11', NULL, '90000', 'D876', 60, 'ANTI HYPERTENSIVE', 'Obsolete', '123D', NULL, 0),
(1325, 'G-CEFTRIA1GM', 'G-CEFTRIA 1GM', 'G-CEFTRIA1GM', '0', '0', '5000', '2500', 'WHITE STAR PHARMA (U) LTD', 0, 10, 0, '2025-02-12', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '0', 'cash', '2023-11-18', NULL, '25000', 'D876', 10, 'ANTIBIOTICS', 'Obsolete', '123FDG', NULL, 0),
(1326, 'GLIMEPRIDE(EUGLIME)4MG', '', 'GLIMEPRIDE(EUGLIME)4MG', '0', '0', '1500', '280', 'WHITE STAR PHARMA (U) LTD', 0, 50, 0, '2025-12-20', 'GLIMEPRIDE(EUGLIME)4MG', 'GLIMEPRIDE(EUGLIME)4MG', '0', 'cash', '2023-11-18', NULL, '14000', NULL, 50, 'ANTI DIABETICS', 'Obsolete', 'WRED23', NULL, 0),
(1327, 'ACICONE S TABS', 'ACICONE S TABS', 'ACICONE S TABS', '0', '0', '500', '325', 'WHITE STAR PHARMA (U) LTD', 0, 20, 0, '2027-12-30', 'ACICONE S TABS', 'ACICONE S TABS', '0', 'cash', '2023-11-18', NULL, '6500', 'D876', 20, 'Anti-ulcers', 'Obsolete', '4E TR4', NULL, 0),
(1328, 'GLIMEPRIDE(EUGLIM)2MG', '', 'GLIMEPRIDE(EUGLIM)2MG', '0', '0', '500', '350', 'WHITE STAR PHARMA (U) LTD', 0, 50, 0, '2026-12-30', 'GLIMEPRIDE(EUGLIM)2MG', 'GLIMEPRIDE(EUGLIM)2MG', '0', 'cash', '2023-11-18', NULL, '17500', NULL, 50, 'ANTI DIABETICS', 'Obsolete', '50', NULL, 0),
(1329, 'G-CEFTRIA1GM', 'G-CEFTRIA 1GM', 'G-CEFTRIA1GM', '0', '0', '5000', '2500', 'WHITE STAR PHARMA (U) LTD', 0, 10, 0, '2027-12-30', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '0', 'cash', '2023-11-16', NULL, '25000', 'D876', 10, 'ANTIBIOTICS', 'Obsolete', '76GUY7', NULL, 0),
(1330, 'STERILEGAUZE', '', 'STERILEGAUZE', '0', '0', '5000', '3500', 'WHITE STAR PHARMA (U) LTD', 0, 5, 0, '2027-12-11', 'STERILEGAUZE', 'STERILEGAUZE', '0', 'cash', '2023-11-15', NULL, '17500', NULL, 5, 'NON CONSUMABLE', 'Obsolete', '43T4RE5', NULL, 0),
(1331, 'FUROSEMIDEINJ', '', 'FUROSEMIDEINJ', '0', '0', '2000', '700', 'WHITE STAR PHARMA (U) LTD', 0, 20, 0, '2025-12-12', 'FUROSEMIDEINJ', 'FUROSEMIDEINJ', '0', 'cash', '2023-11-15', NULL, '14000', NULL, 20, 'ANTI HYPERTENSIVE', 'Obsolete', '20', NULL, 0),
(1332, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'APIDONESYRUP100MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 40000),
(1333, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'METFORMINDENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPOGLYCEMIC', 'Obsolete', 'xlat125', NULL, 0),
(1334, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'METHYLDOPA250MG(HYDOPA)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 12000),
(1335, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN625MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 56000),
(1336, '', '', 'None', NULL, '0', '22000', '0', '', 0, 0, 0, '2027-07-30', '', 'EPICEPHINE2GM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 44000),
(1337, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ALBENDAZOLETABS(WORMIN)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIPROTOZOAL', 'Obsolete', 'xlat125', NULL, 0),
(1338, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'D-ARTEPADULT', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 50000),
(1339, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'OMEPRAZOLE20MGI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 10000),
(1340, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHA500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 36000),
(1341, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'EXAMINATIONGLOVES', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(1342, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'STERILEGAUZE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 25000),
(1343, '', '', 'None', NULL, '0', '13000', '0', '', 0, 0, 0, '2027-07-30', '', 'RELCERGEL200ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 26000),
(1344, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'MONTICOPE5/10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 30000),
(1345, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSPAEDIACTRICLINCTUS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 28000),
(1346, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'LIMZER', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 72000),
(1347, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CREPBANDAGESSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 7500),
(1348, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'RL', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NA', 'Obsolete', 'xlat125', NULL, 18000),
(1349, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DELEASEDDRYSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(1350, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DELEASEDPAEDSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 20000),
(1351, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'APFLUESYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(1352, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'SECNIDAZOLETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANT HEMENTICS', 'Obsolete', 'xlat125', NULL, 8000),
(1353, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'SECNIDAZOLESYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANT HEMENTICS', 'Obsolete', 'xlat125', NULL, 0),
(1354, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'G-CEFTRIA1GM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 50000),
(1355, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'NOSPAINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI SPOSMATIC', 'Obsolete', 'xlat125', NULL, 7000),
(1356, '', '', 'None', NULL, '0', '700', '0', '', 0, 0, 0, '2027-07-30', '', 'NOSPATABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI SPOSMATIC', 'Obsolete', 'xlat125', NULL, 35000),
(1357, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'MENTHOXYL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1358, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINCTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'VITAMINS', 'Obsolete', 'xlat125', NULL, 0),
(1359, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 10000),
(1360, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'PANADOLADVANCE', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 60000),
(1361, '', '', 'None', NULL, '0', '250', '0', '', 0, 0, 0, '2027-07-30', '', 'PANADOLEXTRA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1362, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'PARACETAMOL500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1363, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'PARACETAMOLI.VINDIA', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 40000),
(1364, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'METOCLOPROMIDE(PLASIL)10MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 18000),
(1365, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1366, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1367, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERSPRAY', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 20000),
(1368, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'NS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 27000),
(1369, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'D5%', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 24000),
(1370, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'D50%', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 5000),
(1371, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'GIVINGSETI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(1372, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'BLOODGIVINGSET', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(1373, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', '20MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 12000),
(1374, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', '10MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 10000),
(1375, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', '5MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(1376, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', '2MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(1377, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULAYELLOWI.V24G', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(1378, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULABLUE22GI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1379, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULAPINK', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1380, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(1381, '', '', 'None', NULL, '0', '30000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN228/5ML', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 30000),
(1382, '', '', 'None', NULL, '0', '45000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN457/5ML', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1383, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'AMICLOX500MGCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1384, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMPICLOX500MGINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1385, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMPICLOXSYRUPINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 5000),
(1386, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCILIN250MGCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(1387, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCILIN500MGCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 50000),
(1388, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYLSYRUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 5000),
(1389, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLE200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(1390, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLE400MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1391, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLEI.V', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(1392, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'DOXYCILIN100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(1393, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'NITROFUROTOIN100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1394, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'SEPTRIN480', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1395, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'SEPTRIN960', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1396, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'CHLORAPHENICAL250MGCAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1397, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTEFAN20/120MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 16000),
(1398, '', '', 'None', NULL, '0', '17000', '0', '', 0, 0, 0, '2027-07-30', '', 'DUOCOTEXIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(1399, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CRESTOR20MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1400, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'BISOPROLOL5MGUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 56000),
(1401, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN30MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 20000),
(1402, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN60MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 28000),
(1403, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN120MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 105000),
(1404, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'SUPIROCINOITMENT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 15000),
(1405, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DICLODAYCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(1406, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLONEMCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1407, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'MENTHOPLUS', '0', 'Unit', '1900-07-21', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1408, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'DRAGONBALM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1409, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'DRAGONLIQUID', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1410, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LANSOPRAZOLE(ZOLANAS)30MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI ULCERS', 'Obsolete', 'xlat125', NULL, 25000),
(1411, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'OMEPRAZOLE20MG(OCID|)', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 0),
(1412, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLARITHROMYCIN500MGINDIA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(1413, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'SURGICALGLOVES7.5MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(1414, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ALKA5SYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 15000),
(1415, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'D-ARTEPPAED', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 10000),
(1416, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'ETORICOXIB(BRUTAFLAM)90MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 45000),
(1417, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ETORICOXIB(BRUTAFLAM)60MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 30000),
(1418, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'RELCERGEL100ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 0),
(1419, '', '', 'None', NULL, '0', '8000', '0', '', 0, 0, 0, '2027-07-30', '', 'ASCORILSYRUP100ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 16000),
(1420, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ASCORILSYRUP200ML', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 45000),
(1421, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXIME400MG(CEFWELL)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 30000),
(1422, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DIAZEPAMINJ5MG/ML', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'BARBITRATE', 'Obsolete', 'xlat125', NULL, 4000),
(1423, '', '', 'None', NULL, '0', '1800', '0', '', 0, 0, 0, '2027-07-30', '', 'BINLINERSMEDIUM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1424, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXIM200MGINDIATABS', '0', 'Tab', '1905-07-14', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1425, '', '', 'None', NULL, '0', '35000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 35000);
INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(1426, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PARADENK250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(1427, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'PARADENK125MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 15000),
(1428, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'DICLODENKRECTAL100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1429, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAXITROLEYEDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 15000),
(1430, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAMADOLINJ', '0', 'Sachet', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1431, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAMADOLCAPS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 20000),
(1432, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'NAPROXEN250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1433, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ORS', '0', 'Sachet', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1434, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPRO500MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(1435, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPRODENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(1436, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'LEVODENK500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 120000),
(1437, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'LEVOFLOXACIN500MG(LEVIN)', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1438, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRANSPOREPLASTERLARGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1439, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRANSPOREPLASTERMEDIUM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1440, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'SKDERM15GM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1441, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'SKDERM30GM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1442, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOTRIMAZOLOECREAM(UNISTEN)', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(1443, '', '', 'None', NULL, '0', '40000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONCALLPLUSSTRIP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1444, '', '', 'None', NULL, '0', '55000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONCALLPLUSGLUCOMETER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1445, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'GRAMOCEFO400MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 40000),
(1446, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'GRAMOCEFO200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1447, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'LIVOLIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTMINERALS', 'Obsolete', 'xlat125', NULL, 0),
(1448, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GINSOMIN', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 45000),
(1449, '', '', 'None', NULL, '0', '45000', '0', '', 0, 0, 0, '2027-07-30', '', 'FORMONIDEINHALER200MCG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'INHALER', 'Obsolete', 'xlat125', NULL, 0),
(1450, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'PROBETANEYE/EARDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1451, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'GENTAEYE/EARDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(1452, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'AZITHROMYCIN500MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1453, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHA250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1454, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHASYRUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(1455, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PENEGRA50MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1456, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PENEGRA100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1457, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'KAMAGRA100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1458, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KAMAGRA50MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1459, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'CETRIZINE10MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1460, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'PREDNISOLINETABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1461, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'DEXAMETHASONE0.5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1462, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLO-DENK5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 150000),
(1463, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLO-DENK10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 200000),
(1464, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINBCOMPLEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 0),
(1465, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINBCOMPLEXINJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 6000),
(1466, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'MULTVIT', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(1467, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'MAGNESIUMTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Obsolete', 'xlat125', NULL, 0),
(1468, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAGNESIUMSYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Obsolete', 'xlat125', NULL, 0),
(1469, '', '', 'None', NULL, '0', '3500', '0', '', 0, 0, 0, '2027-07-30', '', 'ALWAYS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1470, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'PRINCESS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1471, '', '', 'None', NULL, '0', '3500', '0', '', 0, 0, 0, '2027-07-30', '', 'SOFTCARE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1472, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'METFORMINDENK1000MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 90000),
(1473, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'MYOSPAZ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 30000),
(1474, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'DURAGESIC', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 30000),
(1475, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 8000),
(1476, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'BACKUP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(1477, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'LYDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(1478, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'POSTINOR2', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(1479, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'PILLPLANCOC', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 3000),
(1480, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'MICROGYNON', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(1481, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDAFLEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1482, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'SINARESTTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1483, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'PAINEX', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1484, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'ACTION', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1485, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'HEDONTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1486, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'HEDEXTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1487, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'COUGHLINCTUSSMALL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1488, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'COUGHLINCTUSBIG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1489, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUFEDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1490, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TOFFPLUS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1491, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'KETACONAZOLETABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1492, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCONAZOLECAPS200MGINDA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 9000),
(1493, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'LIGNOCAININJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'LOCAL ANESTHESIA', 'Obsolete', 'xlat125', NULL, 0),
(1494, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTANH(TELVAS)80/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 75000),
(1495, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTAN(TELVAS)80MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1496, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTAN(TELVAS)40MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 30000),
(1497, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTANH(TELVAS)40/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 16000),
(1498, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE(EUGLIME)4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI DIABETICS', 'Obsolete', 'xlat125', NULL, 0),
(1499, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE(EUGLIM)2MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI DIABETICS', 'Obsolete', 'xlat125', NULL, 25000),
(1500, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROXYUREA250MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(1501, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROXYUREA500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 22500),
(1502, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'WATERFORINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1503, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDEASECAPS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1504, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1505, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'ERYTHROMYCIN250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(1506, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAMOXCAPS500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1507, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CURAMOLPLUS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1508, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'EXTRADOL', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1509, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'FLURID', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1510, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KISSCONDOMSTRABERRY', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1511, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KISSCONDOMSTUNDED', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1512, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEPHALEXINSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1513, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'CEPHALEXINCAPS250MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1514, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'HAEMOFORTESYRUP90MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(1515, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'HAEMOFORTE200MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 20000),
(1516, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDV6PESSARIES', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 20000),
(1517, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDVGEL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1518, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'DREZVGEL', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1519, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'MCGCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1520, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDERMCREAM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1521, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'ABNALNASOLDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1522, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ISORYNPAED', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 7000),
(1523, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ISORYNADULT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 14000),
(1524, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSDROP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 14000),
(1525, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'GROVITSYRUP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 14000),
(1526, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'GROVITDROP', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 21000),
(1527, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUROSEMIDEINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 36000),
(1528, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FUROSEMIDE40MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1529, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON8MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(1530, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON4MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 8000),
(1531, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON4MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(1532, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON8MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Obsolete', 'xlat125', NULL, 0),
(1533, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRENAXAMICACIDINJ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 0),
(1534, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TRENAXAMICACIDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 0),
(1535, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ACICLOVIR200MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIVIRAL', 'Obsolete', 'xlat125', NULL, 9600),
(1536, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'ACICLOVIRCREAM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-VIRAL', 'Obsolete', 'xlat125', NULL, 0),
(1537, '', '', 'None', NULL, '0', '16000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZARICORTCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 16000),
(1538, '', '', 'None', NULL, '0', '16000', '0', '', 0, 0, 0, '2027-07-30', '', 'ORACUREGEL', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1539, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'BENZOXCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1540, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROCORTISONECREAMINDIA', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 4000),
(1541, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROCORTISONEINJINDIA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'CORTICOSTERIOD', 'Obsolete', 'xlat125', NULL, 45000),
(1542, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINSCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 10000),
(1543, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1544, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINOITMENT', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1545, '', '', 'None', NULL, '0', '13000', '0', '', 0, 0, 0, '2027-07-30', '', 'SILVEREXCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1546, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUNGISAFECREAM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 15000),
(1547, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUNGISAFE250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Obsolete', 'xlat125', NULL, 0),
(1548, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'NEOMYCINCREAM', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 6000),
(1549, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'EUDERMCREAM', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1550, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'BENZATHINEINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 12000),
(1551, '', '', 'None', NULL, '0', '17000', '0', '', 0, 0, 0, '2027-07-30', '', 'PISA4.5MGINJ', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 34000),
(1552, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPROI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 9000),
(1553, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAMOXSUSPENSION', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 20000),
(1554, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAXITROLOITMENT', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1555, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'DEXONAEYE/EARDROP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'CORTICOSTERIOD', 'Obsolete', 'xlat125', NULL, 3000),
(1556, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'T.E.O', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 4000),
(1557, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'BETASERC8MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1558, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'BETASERC16MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1559, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CALCIVITA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 25000),
(1560, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'FERROTONE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1561, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TORASDENK5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1562, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'TORASDENK10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1563, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'NOOTROPIL800MCG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2000),
(1564, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOPIDOGREL75MGUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1565, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLODIPINE(AMLODAC)5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 24000),
(1566, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLODIPINE(AMLODAC)10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1567, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'NEBILONG5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1568, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'DAPAGLIFOZIN(FORZIGA)10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1569, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'DAPAGLIFOZIN(DAPZIN)10MG', '0', 'Stp', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1570, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CARVEDILOL6.25MGTABSUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1571, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'CARVEDILOL6.25MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 18000),
(1572, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'XYKAA1000MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1573, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'LOSACARH50/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 24000),
(1574, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LOSACAR50MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 15000),
(1575, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLOSARDENK50/12.5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 54000),
(1576, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'SPIRONACTONE25MGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 50000),
(1577, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'SALBUTAMOLNEBULES', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1578, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'SALBUTAMOLTABS4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1579, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'METHOTREXATE2.5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 1500),
(1580, '', '', 'None', NULL, '0', '1100', '0', '', 0, 0, 0, '2027-07-30', '', 'METHOTREXATE5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1581, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'CARBIMAZOLE5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Obsolete', 'xlat125', NULL, 0),
(1582, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TOLFREE100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Obsolete', 'xlat125', NULL, 0),
(1583, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINDCHEWABLE', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 6000),
(1584, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'IVERMECTIN12MGTABSUK', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIVIRAL', 'Obsolete', 'xlat125', NULL, 0),
(1585, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TRIGANDTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 21500),
(1586, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'MANNITOLI.V', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1587, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1588, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PMEDIUM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1589, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PLARGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 10000),
(1590, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'URINARYCATHETER16G', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(1591, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'URINEBAG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(1592, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'NASALCANNULA', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1593, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'INSULINSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4000),
(1594, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CHLORHEXIDINESOLUTIONSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1595, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'IODINESOLUTIONSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1596, '', '', 'None', NULL, '0', '25000', '0', '', 0, 0, 0, '2027-07-30', '', 'IODINESOLUTION1L', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1597, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LORATIDINE(LORVIC)10MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HISTAMINE', 'Obsolete', 'xlat125', NULL, 5000),
(1598, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'LORATIDINE(LORVIC)10MGSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HISTAMINE', 'Obsolete', 'xlat125', NULL, 20000),
(1599, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMOLTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 9000),
(1600, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMOLSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 5000),
(1601, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUPFOFEN200MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1602, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUPFOFEN400MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1603, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMEX60MLSSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1604, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'ZINCTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 10000),
(1605, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'SEDIPROCTSUPPOSITORY', '0', 'Tab', '1905-07-25', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(1606, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'SEDIPROCTCREAM', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1607, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'MEFANAMICACID500MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Obsolete', 'xlat125', NULL, 45000),
(1608, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'HYOSCINETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 50000),
(1609, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYOSCINEINJECTION', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1610, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'TAMSULOSIN0.4MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 48000),
(1611, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DUPHASTON10MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1612, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'MISOPROSTOL200MCGINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 4500),
(1613, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'TADALAFIL4MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1614, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'SUMATRIPTANTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1615, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CORNPLASTER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 30000),
(1616, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'CARBAMAZIPINE200MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(1617, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXIKID125MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1618, '', '', 'None', NULL, '0', '150', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXIKID250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1619, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINACAPS200,000IU', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 600),
(1620, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ALLUPURINOL300MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1621, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'FEFOTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1622, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'FOLICACID5MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Obsolete', 'xlat125', NULL, 5000),
(1623, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PROPANOLOL40MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Obsolete', 'xlat125', NULL, 0),
(1624, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTANE5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 40000),
(1625, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'CAPTOPRIL25MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 20000),
(1626, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PHENYTOIN100MGTABSINDIA', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 9000),
(1627, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'PHENYTOIN100MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1628, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'PRAZIQUENTAL600MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIPROTOZOAL', 'Obsolete', 'xlat125', NULL, 3000),
(1629, '', '', 'None', NULL, '0', '8000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDPOWDER', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 8000),
(1630, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ULTRASOLVSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 15000),
(1631, '', '', 'None', NULL, '0', '18000', '0', '', 0, 0, 0, '2027-07-30', '', 'ENEMAX', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1632, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ERYTHROMYCINSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 10000),
(1633, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'BISACODYL5MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 2500),
(1634, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'HCGSTRIP', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1635, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PENVTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Obsolete', 'xlat125', NULL, 0),
(1636, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDCAP', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Obsolete', 'xlat125', NULL, 0),
(1637, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOBETASOLCREAMINDIA', '0', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Obsolete', 'xlat125', NULL, 0),
(1638, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'QUININETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(1639, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'QUININEINJE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Obsolete', 'xlat125', NULL, 0),
(1640, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PIROXICAM20MGCAPS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 0),
(1641, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'INDOMETHACIN100MGTABS', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Obsolete', 'xlat125', NULL, 10000),
(1642, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'NORMAGUT', '0', 'Capsules', '1900-01-10', NULL, NULL, NULL, NULL, 'Multivitamins', 'Obsolete', 'xlat125', 'Consumable', 0),
(1643, '', '', 'None', NULL, '0', '35000', '0', '', 0, 0, 0, '2027-07-30', '', 'Vitamin B12 Nasal SPray ', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Anti-spasmotic', 'Obsolete', 'xlat125', 'Consumable', 0),
(1644, '', '', 'None', NULL, '0', '30000', '0', '', 0, 0, 0, '2027-07-30', '', 'NASO B12 NASAL SPRAY', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Anti-spasmotic', 'Obsolete', 'xlat125', 'Consumable', 0),
(1645, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMIN D3 INJECTION', '0', 'Vials', '1900-01-11', NULL, NULL, NULL, NULL, 'Vitamins', 'Obsolete', 'xlat125', 'Consumable', 0),
(1646, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'FANSIDAR  3\'S', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Antimalaria', 'Obsolete', 'xlat125', NULL, 0),
(1647, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CETAMOL  60MLS', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Painkiller', 'Obsolete', 'xlat125', NULL, 10000),
(1648, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE 4MG UK', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Painkiller', 'Obsolete', 'xlat125', NULL, 0),
(1649, 'DAPAGLIFOZIN(DAPZIN)10MG', '', 'DAPAGLIFOZIN(DAPZIN)10MG', '0', '0', '2500', '1500', 'WHITE STAR PHARMA (U) LTD', 0, 60, 0, '2027-11-12', 'DAPAGLIFOZIN(DAPZIN)10MG', 'DAPAGLIFOZIN(DAPZIN)10MG', '0', 'cash', '2023-11-18', NULL, '90000', NULL, 60, 'ANTI HYPERTENSIVE', 'Obsolete', '46YIU', NULL, 0),
(1650, 'G-CEFTRIA1GM', '', 'G-CEFTRIA1GM', '0', '0', '5000', '2500', 'WHITE STAR PHARMA (U) LTD', 0, 10, 0, '2024-11-20', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '0', 'cash', '2023-11-18', NULL, '25000', NULL, 10, 'ANTIBIOTICS', 'Obsolete', '43ETG', NULL, 0),
(1651, 'GLIMEPRIDE(EUGLIME)4MG', '', 'GLIMEPRIDE(EUGLIME)4MG', '0', '0', '1500', '280', 'WHITE STAR PHARMA (U) LTD', 0, 50, 0, '2026-05-30', 'GLIMEPRIDE(EUGLIME)4MG', 'GLIMEPRIDE(EUGLIME)4MG', '0', 'cash', '2023-11-18', NULL, '14000', NULL, 50, 'ANTI DIABETICS', 'Obsolete', '6JHQSD897', NULL, 0),
(1652, 'ACICON', 'ACICON', 'ACICON', '0', '0', '500', '325', 'WHITE STAR PHARMA (U) LTD', 0, 20, 0, '2026-11-30', 'ACICON', 'ACICON', '0', 'cash', '2023-11-14', NULL, '6500', 'D876', 20, 'NA', 'Obsolete', '4R4ADS', NULL, 0),
(1653, 'GLIMEPRIDE(EUGLIME)4MG', '', 'GLIMEPRIDE(EUGLIME)4MG', '0', '0', '1500', '350', 'WHITE STAR PHARMA (U) LTD', 0, 50, 0, '2028-11-30', 'GLIMEPRIDE(EUGLIME)4MG', 'GLIMEPRIDE(EUGLIME)4MG', '0', 'cash', '2023-11-14', NULL, '17500', NULL, 50, 'ANTI DIABETICS', 'Obsolete', '68Y9OI', NULL, 0),
(1654, 'G-CEFTRIA1GM', '', 'G-CEFTRIA1GM', '0', '0', '5000', '2500', 'WHITE STAR PHARMA (U) LTD', 0, 10, 0, '2028-11-30', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '0', 'cash', '2023-11-16', NULL, '25000', NULL, 10, 'ANTIBIOTICS', 'Obsolete', '78Y8IU', NULL, 0),
(1655, 'STERILEGAUZE', '', 'STERILEGAUZE', '0', '0', '5000', '3500', 'WHITE STAR PHARMA (U) LTD', 0, 5, 0, '2026-08-30', 'STERILEGAUZE', 'STERILEGAUZE', '0', 'cash', '2023-11-15', NULL, '17500', NULL, 5, 'NON CONSUMABLE', 'Obsolete', '89YHOI', NULL, 0),
(1656, 'FUROSEMIDEINJ', '', 'FUROSEMIDEINJ', '0', '0', '2000', '700', 'WHITE STAR PHARMA (U) LTD', 0, 20, 0, '2027-11-30', 'FUROSEMIDEINJ', 'FUROSEMIDEINJ', '0', 'cash', '2023-11-15', NULL, '14000', NULL, 20, 'ANTI HYPERTENSIVE', 'Obsolete', 'U09UIGTYTY', NULL, 0),
(1657, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'APIDONESYRUP100MLS', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 40000),
(1658, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'METFORMINDENK500MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPOGLYCEMIC', 'Active', 'xlat125', NULL, 0),
(1659, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'METHYLDOPA250MG(HYDOPA)', '10', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 12000),
(1660, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN625MG', '-140', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 56000),
(1661, '', '', 'None', NULL, '0', '22000', '0', '', 0, 0, 0, '2027-07-30', '', 'EPICEPHINE2GM', '3', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 44000),
(1662, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ALBENDAZOLETABS(WORMIN)', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIPROTOZOAL', 'Active', 'xlat125', NULL, 0),
(1663, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'D-ARTEPADULT', '-8', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Active', 'xlat125', NULL, 50000),
(1664, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'OMEPRAZOLE20MGI.V', '1', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Active', 'xlat125', NULL, 10000),
(1665, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHA500MG', '-8', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 36000),
(1666, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'EXAMINATIONGLOVES', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 2000),
(1667, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'STERILEGAUZE', '-45', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 25000),
(1668, '', '', 'None', NULL, '0', '13000', '0', '', 0, 0, 0, '2027-07-30', '', 'RELCERGEL200ML', '-1', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Active', 'xlat125', NULL, 26000),
(1669, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'MONTICOPE5/10MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Active', 'xlat125', NULL, 30000),
(1670, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSPAEDIACTRICLINCTUS', '-7', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 28000),
(1671, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'LIMZER', '30', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Active', 'xlat125', NULL, 72000),
(1672, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CREPBANDAGESSMALL', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 7500),
(1673, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'RL', '-8', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NA', 'Active', 'xlat125', NULL, 18000),
(1674, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DELEASEDDRYSYRUP', '-3', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 15000);
INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(1675, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DELEASEDPAEDSYRUP', '-8', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 20000),
(1676, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'APFLUESYRUP', '-10', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 15000),
(1677, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'SECNIDAZOLETABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANT HEMENTICS', 'Active', 'xlat125', NULL, 8000),
(1678, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'SECNIDAZOLESYRUP', NULL, 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANT HEMENTICS', 'Active', 'xlat125', NULL, 0),
(1679, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'G-CEFTRIA1GM', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 50000),
(1680, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'NOSPAINJECTION', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI SPOSMATIC', 'Active', 'xlat125', NULL, 7000),
(1681, '', '', 'None', NULL, '0', '700', '0', '', 0, 0, 0, '2027-07-30', '', 'NOSPATABS', '-180', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI SPOSMATIC', 'Active', 'xlat125', NULL, 35000),
(1682, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'MENTHOXYL', '-25', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1683, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINCTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'VITAMINS', 'Active', 'xlat125', NULL, 0),
(1684, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAPS', '40', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 10000),
(1685, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'PANADOLADVANCE', '-1900', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 60000),
(1686, '', '', 'None', NULL, '0', '250', '0', '', 0, 0, 0, '2027-07-30', '', 'PANADOLEXTRA', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1687, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'PARACETAMOL500MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1688, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'PARACETAMOLI.VINDIA', '3', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 40000),
(1689, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'METOCLOPROMIDE(PLASIL)10MGINJ', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Active', 'xlat125', NULL, 18000),
(1690, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERINJECTION', '-5', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1691, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1692, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'DYNAPERSPRAY', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 20000),
(1693, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'NS', '-5', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 27000),
(1694, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'D5%', '6', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 24000),
(1695, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'D50%', '1', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 5000),
(1696, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'GIVINGSETI.V', '-90', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 20000),
(1697, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'BLOODGIVINGSET', '3', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 9000),
(1698, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', '20MLSYRINGE', '2', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 12000),
(1699, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', '10MLSYRINGE', '20', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 10000),
(1700, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', '5MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 9000),
(1701, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', '2MLSYRINGE', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 9000),
(1702, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULAYELLOWI.V24G', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 20000),
(1703, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULABLUE22GI.V', '-130', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1704, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANNULAPINK', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1705, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '10', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 40000),
(1706, '', '', 'None', NULL, '0', '30000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN228/5ML', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 30000),
(1707, '', '', 'None', NULL, '0', '45000', '0', '', 0, 0, 0, '2027-07-30', '', 'AUGMENTIN457/5ML', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1708, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'AMICLOX500MGCAPS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1709, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMPICLOX500MGINJECTION', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1710, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMPICLOXSYRUPINDIA', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 5000),
(1711, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCILIN250MGCAPS', '100', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 10000),
(1712, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYCILIN500MGCAPS', '70', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 50000),
(1713, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXYLSYRUP', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 5000),
(1714, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLE200MG', '50', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 10000),
(1715, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLE400MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1716, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'METRONIDAZOLEI.V', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 12000),
(1717, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'DOXYCILIN100MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 10000),
(1718, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'NITROFUROTOIN100MG', '-2', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1719, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'SEPTRIN480', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1720, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'SEPTRIN960', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1721, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'CHLORAPHENICAL250MGCAPS', '-20', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1722, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTEFAN20/120MG', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Active', 'xlat125', NULL, 16000),
(1723, '', '', 'None', NULL, '0', '17000', '0', '', 0, 0, 0, '2027-07-30', '', 'DUOCOTEXIN', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Active', 'xlat125', NULL, 0),
(1724, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CRESTOR20MG', '-560', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 0),
(1725, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'BISOPROLOL5MGUK', '-532', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 56000),
(1726, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN30MG', '1', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Active', 'xlat125', NULL, 20000),
(1727, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN60MG', '1', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Active', 'xlat125', NULL, 28000),
(1728, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTESUN120MG', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Active', 'xlat125', NULL, 105000),
(1729, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'SUPIROCINOITMENT', '-10', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 15000),
(1730, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'DICLODAYCREAM', '2', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 10000),
(1731, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLONEMCREAM', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1732, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'MENTHOPLUS', NULL, 'Unit', '1900-07-21', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1733, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'DRAGONBALM', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1734, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'DRAGONLIQUID', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1735, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LANSOPRAZOLE(ZOLANAS)30MG', '-600', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI ULCERS', 'Active', 'xlat125', NULL, 25000),
(1736, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'OMEPRAZOLE20MG(OCID|)', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Active', 'xlat125', NULL, 0),
(1737, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLARITHROMYCIN500MGINDIA', '20', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 40000),
(1738, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'SURGICALGLOVES7.5MG', '1', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 4500),
(1739, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ALKA5SYRUP', '-13', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 15000),
(1740, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'D-ARTEPPAED', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Active', 'xlat125', NULL, 10000),
(1741, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'ETORICOXIB(BRUTAFLAM)90MG', '-360', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 45000),
(1742, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ETORICOXIB(BRUTAFLAM)60MG', '30', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 30000),
(1743, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'RELCERGEL100ML', NULL, 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Active', 'xlat125', NULL, 0),
(1744, '', '', 'None', NULL, '0', '8000', '0', '', 0, 0, 0, '2027-07-30', '', 'ASCORILSYRUP100ML', '1', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 16000),
(1745, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ASCORILSYRUP200ML', '3', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 45000),
(1746, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXIME400MG(CEFWELL)', '-120', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 30000),
(1747, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DIAZEPAMINJ5MG/ML', '-9', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'BARBITRATE', 'Active', 'xlat125', NULL, 4000),
(1748, '', '', 'None', NULL, '0', '1800', '0', '', 0, 0, 0, '2027-07-30', '', 'BINLINERSMEDIUM', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1749, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXIM200MGINDIATABS', NULL, 'Tab', '1905-07-14', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1750, '', '', 'None', NULL, '0', '35000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEFIXSYRUP', '1', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 35000),
(1751, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PARADENK250MG', '5', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 10000),
(1752, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'PARADENK125MG', '10', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 15000),
(1753, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'DICLODENKRECTAL100MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1754, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAXITROLEYEDROP', '1', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 15000),
(1755, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAMADOLINJ', '0', 'Sachet', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1756, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAMADOLCAPS', '100', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 20000),
(1757, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'NAPROXEN250MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1758, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'ORS', '-100', 'Sachet', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1759, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPRO500MGINDIA', '100', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 20000),
(1760, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPRODENK500MG', '5', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 20000),
(1761, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'LEVODENK500MG', '28', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 120000),
(1762, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'LEVOFLOXACIN500MG(LEVIN)', '-120', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1763, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRANSPOREPLASTERLARGE', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1764, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRANSPOREPLASTERMEDIUM', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1765, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'SKDERM15GM', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1766, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'SKDERM30GM', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1767, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOTRIMAZOLOECREAM(UNISTEN)', '0', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 6000),
(1768, '', '', 'None', NULL, '0', '40000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONCALLPLUSSTRIP', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1769, '', '', 'None', NULL, '0', '55000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONCALLPLUSGLUCOMETER', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1770, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'GRAMOCEFO400MG', '10', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 40000),
(1771, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'GRAMOCEFO200MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1772, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'LIVOLIN', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTMINERALS', 'Active', 'xlat125', NULL, 0),
(1773, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GINSOMIN', '30', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 45000),
(1774, '', '', 'None', NULL, '0', '45000', '0', '', 0, 0, 0, '2027-07-30', '', 'FORMONIDEINHALER200MCG', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'INHALER', 'Active', 'xlat125', NULL, 0),
(1775, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'PROBETANEYE/EARDROP', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1776, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'GENTAEYE/EARDROP', '1', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 2000),
(1777, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'AZITHROMYCIN500MGINDIA', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1778, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHA250MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1779, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZAHASYRUP', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 12000),
(1780, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PENEGRA50MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1781, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'PENEGRA100MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1782, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'KAMAGRA100MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1783, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KAMAGRA50MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1784, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'CETRIZINE10MGINDIA', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1785, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'PREDNISOLINETABSINDIA', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1786, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'DEXAMETHASONE0.5MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1787, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLO-DENK5MG', '-400', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 150000),
(1788, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLO-DENK10MG', '100', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 200000),
(1789, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINBCOMPLEXTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 0),
(1790, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINBCOMPLEXINJ', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 6000),
(1791, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'MULTVIT', '100', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 5000),
(1792, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'MAGNESIUMTABS', '100', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PPI', 'Active', 'xlat125', NULL, 0),
(1793, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAGNESIUMSYRUP', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-ULCERS', 'Active', 'xlat125', NULL, 0),
(1794, '', '', 'None', NULL, '0', '3500', '0', '', 0, 0, 0, '2027-07-30', '', 'ALWAYS', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1795, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'PRINCESS', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1796, '', '', 'None', NULL, '0', '3500', '0', '', 0, 0, 0, '2027-07-30', '', 'SOFTCARE', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1797, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'METFORMINDENK1000MG', '-600', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 90000),
(1798, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'MYOSPAZ', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Active', 'xlat125', NULL, 30000),
(1799, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'DURAGESIC', '50', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Active', 'xlat125', NULL, 30000),
(1800, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'TRAP', '20', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Active', 'xlat125', NULL, 8000),
(1801, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'BACKUP', '5', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Active', 'xlat125', NULL, 0),
(1802, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'LYDIA', '3', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Active', 'xlat125', NULL, 0),
(1803, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'POSTINOR2', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Active', 'xlat125', NULL, 0),
(1804, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'PILLPLANCOC', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Active', 'xlat125', NULL, 3000),
(1805, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'MICROGYNON', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Active', 'xlat125', NULL, 0),
(1806, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDAFLEXTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1807, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'SINARESTTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1808, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'PAINEX', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1809, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'ACTION', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1810, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'HEDONTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1811, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'HEDEXTABS', '36', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1812, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'COUGHLINCTUSSMALL', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1813, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'COUGHLINCTUSBIG', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1814, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUFEDTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1815, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TOFFPLUS', '20', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1816, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'KETACONAZOLETABSINDIA', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 0),
(1817, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCONAZOLECAPS200MGINDA', '-35', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 9000),
(1818, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'LIGNOCAININJ', '-1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'LOCAL ANESTHESIA', 'Active', 'xlat125', NULL, 0),
(1819, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTANH(TELVAS)80/12.5MG', '50', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 75000),
(1820, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTAN(TELVAS)80MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 0),
(1821, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTAN(TELVAS)40MG', '50', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 30000),
(1822, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'TELMISARTANH(TELVAS)40/12.5MG', '-180', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 16000),
(1823, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE(EUGLIME)4MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI DIABETICS', 'Active', 'xlat125', NULL, 0),
(1824, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE(EUGLIM)2MG', '50', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI DIABETICS', 'Active', 'xlat125', NULL, 25000),
(1825, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROXYUREA250MG', '6', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 6000),
(1826, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROXYUREA500MG', '15', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 22500),
(1827, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'WATERFORINJ', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1828, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDEASECAPS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1829, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1830, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'ERYTHROMYCIN250MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 10000),
(1831, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAMOXCAPS500MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1832, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CURAMOLPLUS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1833, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'EXTRADOL', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1834, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'FLURID', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1835, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KISSCONDOMSTRABERRY', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1836, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'KISSCONDOMSTUNDED', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1837, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CEPHALEXINSYRUP', NULL, 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1838, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'CEPHALEXINCAPS250MG', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1839, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'HAEMOFORTESYRUP90MLS', '1', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 5000),
(1840, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'HAEMOFORTE200MLS', '1', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 20000),
(1841, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDV6PESSARIES', '-12', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 20000),
(1842, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDVGEL', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 0),
(1843, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'DREZVGEL', NULL, 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 0),
(1844, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'MCGCREAM', NULL, 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 0),
(1845, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDERMCREAM', NULL, 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 0),
(1846, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'ABNALNASOLDROP', NULL, 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1847, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ISORYNPAED', '1', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 7000),
(1848, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'ISORYNADULT', '2', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 14000),
(1849, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'CONTUSDROP', '2', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 14000),
(1850, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'GROVITSYRUP', '2', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 14000),
(1851, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'GROVITDROP', '3', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 21000),
(1852, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUROSEMIDEINJ', '7', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 36000),
(1853, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'FUROSEMIDE40MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 0),
(1854, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON8MGINJ', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Active', 'xlat125', NULL, 0),
(1855, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON4MGINJ', '1', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Active', 'xlat125', NULL, 8000),
(1856, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON4MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Active', 'xlat125', NULL, 0),
(1857, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'ONDASENTRON8MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI MOTILITY', 'Active', 'xlat125', NULL, 0),
(1858, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'TRENAXAMICACIDINJ', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Active', 'xlat125', NULL, 0),
(1859, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TRENAXAMICACIDTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Active', 'xlat125', NULL, 0),
(1860, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ACICLOVIR200MGTABSINDIA', '32', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIVIRAL', 'Active', 'xlat125', NULL, 9600),
(1861, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'ACICLOVIRCREAM', NULL, 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-VIRAL', 'Active', 'xlat125', NULL, 0),
(1862, '', '', 'None', NULL, '0', '16000', '0', '', 0, 0, 0, '2027-07-30', '', 'ZARICORTCREAM', '1', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 16000),
(1863, '', '', 'None', NULL, '0', '16000', '0', '', 0, 0, 0, '2027-07-30', '', 'ORACUREGEL', '-13', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 0),
(1864, '', '', 'None', NULL, '0', '7000', '0', '', 0, 0, 0, '2027-07-30', '', 'BENZOXCREAM', NULL, 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 0),
(1865, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROCORTISONECREAMINDIA', '-12', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 4000),
(1866, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYDROCORTISONEINJINDIA', '12', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'CORTICOSTERIOD', 'Active', 'xlat125', NULL, 45000),
(1867, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINSCREAM', '1', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 10000),
(1868, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINCREAM', NULL, 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 0),
(1869, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'MEDIVINOITMENT', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 0),
(1870, '', '', 'None', NULL, '0', '13000', '0', '', 0, 0, 0, '2027-07-30', '', 'SILVEREXCREAM', NULL, 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1871, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUNGISAFECREAM', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 15000),
(1872, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'FUNGISAFE250MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FUNGAL', 'Active', 'xlat125', NULL, 0),
(1873, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'NEOMYCINCREAM', '2', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 6000),
(1874, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'EUDERMCREAM', NULL, 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1875, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'BENZATHINEINJ', '-7', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 12000),
(1876, '', '', 'None', NULL, '0', '17000', '0', '', 0, 0, 0, '2027-07-30', '', 'PISA4.5MGINJ', '2', 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 34000),
(1877, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CIPROI.V', '3', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 9000),
(1878, '', '', 'None', NULL, '0', '20000', '0', '', 0, 0, 0, '2027-07-30', '', 'FLUCAMOXSUSPENSION', '1', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 20000),
(1879, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'MAXITROLOITMENT', NULL, 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1880, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'DEXONAEYE/EARDROP', '1', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'CORTICOSTERIOD', 'Active', 'xlat125', NULL, 3000),
(1881, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'T.E.O', '2', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 4000),
(1882, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'BETASERC8MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1883, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'BETASERC16MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1884, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'CALCIVITA', '-400', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 25000),
(1885, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'FERROTONE', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1886, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'TORASDENK5MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 0),
(1887, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'TORASDENK10MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 0),
(1888, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'NOOTROPIL800MCG', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 2000),
(1889, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOPIDOGREL75MGUK', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1890, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLODIPINE(AMLODAC)5MG', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 24000),
(1891, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'AMLODIPINE(AMLODAC)10MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1892, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'NEBILONG5MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 0),
(1893, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'DAPAGLIFOZIN(FORZIGA)10MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 0),
(1894, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'DAPAGLIFOZIN(DAPZIN)10MG', '-433', 'Stp', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 0),
(1895, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'CARVEDILOL6.25MGTABSUK', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 0),
(1896, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'CARVEDILOL6.25MGTABSINDIA', '30', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 18000),
(1897, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'XYKAA1000MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1898, '', '', 'None', NULL, '0', '800', '0', '', 0, 0, 0, '2027-07-30', '', 'LOSACARH50/12.5MG', '-270', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 24000),
(1899, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LOSACAR50MGINDIA', '30', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 15000),
(1900, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'COLOSARDENK50/12.5MG', '6', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 54000),
(1901, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'SPIRONACTONE25MGINDIA', '-450', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 50000),
(1902, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'SALBUTAMOLNEBULES', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1903, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'SALBUTAMOLTABS4MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1904, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'METHOTREXATE2.5MGTABS', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 1500),
(1905, '', '', 'None', NULL, '0', '1100', '0', '', 0, 0, 0, '2027-07-30', '', 'METHOTREXATE5MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1906, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'CARBIMAZOLE5MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'HORMONAL PILLS', 'Active', 'xlat125', NULL, 0),
(1907, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TOLFREE100MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MUSCLE RELAXANT', 'Active', 'xlat125', NULL, 0),
(1908, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINDCHEWABLE', '3', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 6000),
(1909, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'IVERMECTIN12MGTABSUK', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIVIRAL', 'Active', 'xlat125', NULL, 0),
(1910, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'TRIGANDTABS', '43', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 21500),
(1911, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'MANNITOLI.V', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1912, '', '', 'None', NULL, '0', '4000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PSMALL', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1913, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PMEDIUM', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1914, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'P.O.PLARGE', '1', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 10000),
(1915, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'URINARYCATHETER16G', '2', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 9000),
(1916, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'URINEBAG', '2', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 4500),
(1917, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'NASALCANNULA', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1918, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '2027-07-30', '', 'INSULINSYRINGE', '4', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 4000),
(1919, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CHLORHEXIDINESOLUTIONSMALL', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1920, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'IODINESOLUTIONSMALL', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1921, '', '', 'None', NULL, '0', '25000', '0', '', 0, 0, 0, '2027-07-30', '', 'IODINESOLUTION1L', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1922, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'LORATIDINE(LORVIC)10MGTABS', '0', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HISTAMINE', 'Active', 'xlat125', NULL, 5000),
(1923, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'LORATIDINE(LORVIC)10MGSYRUP', '2', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HISTAMINE', 'Active', 'xlat125', NULL, 20000),
(1924, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMOLTABS', '-274', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 9000),
(1925, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMOLSYRUP', '0', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 5000),
(1926, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUPFOFEN200MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1927, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUPFOFEN400MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1928, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'IBUMEX60MLSSYRUP', NULL, 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0);
INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(1929, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'ZINCTABS', '50', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 10000),
(1930, '', '', 'None', NULL, '0', '10000', '0', '', 0, 0, 0, '2027-07-30', '', 'SEDIPROCTSUPPOSITORY', '2', 'Tab', '1905-07-25', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 20000),
(1931, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'SEDIPROCTCREAM', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1932, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'MEFANAMICACID500MGTABS', '90', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI FIBRINOLYTICS', 'Active', 'xlat125', NULL, 45000),
(1933, '', '', 'None', NULL, '0', '500', '0', '', 0, 0, 0, '2027-07-30', '', 'HYOSCINETABS', '100', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 50000),
(1934, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'HYOSCINEINJECTION', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1935, '', '', 'None', NULL, '0', '1200', '0', '', 0, 0, 0, '2027-07-30', '', 'TAMSULOSIN0.4MGTABS', '40', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 48000),
(1936, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'DUPHASTON10MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1937, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'MISOPROSTOL200MCGINDIA', '3', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 4500),
(1938, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'TADALAFIL4MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1939, '', '', 'None', NULL, '0', '6000', '0', '', 0, 0, 0, '2027-07-30', '', 'SUMATRIPTANTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1940, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'CORNPLASTER', '10', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 30000),
(1941, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'CARBAMAZIPINE200MG', '100', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 20000),
(1942, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXIKID125MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1943, '', '', 'None', NULL, '0', '150', '0', '', 0, 0, 0, '2027-07-30', '', 'AMOXIKID250MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1944, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMINACAPS200,000IU', '1', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 600),
(1945, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2027-07-30', '', 'ALLUPURINOL300MG', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1946, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'FEFOTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1947, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'FOLICACID5MG', '100', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'MULTIMINERALS', 'Active', 'xlat125', NULL, 5000),
(1948, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PROPANOLOL40MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI HYPERTENSIVE', 'Active', 'xlat125', NULL, 0),
(1949, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'ARTANE5MGTABS', '100', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 40000),
(1950, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2027-07-30', '', 'CAPTOPRIL25MGTABS', '50', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 20000),
(1951, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PHENYTOIN100MGTABSINDIA', '90', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 9000),
(1952, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'PHENYTOIN100MGTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1953, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'PRAZIQUENTAL600MGTABS', '1', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIPROTOZOAL', 'Active', 'xlat125', NULL, 3000),
(1954, '', '', 'None', NULL, '0', '8000', '0', '', 0, 0, 0, '2027-07-30', '', 'CANDIDPOWDER', '1', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 8000),
(1955, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'ULTRASOLVSYRUP', '1', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 15000),
(1956, '', '', 'None', NULL, '0', '18000', '0', '', 0, 0, 0, '2027-07-30', '', 'ENEMAX', NULL, 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1957, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'ERYTHROMYCINSYRUP', '2', 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 10000),
(1958, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'BISACODYL5MGTABS', '50', 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 2500),
(1959, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'HCGSTRIP', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1960, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PENVTABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTIBIOTICS', 'Active', 'xlat125', NULL, 0),
(1961, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'COLDCAP', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI COUGH', 'Active', 'xlat125', NULL, 0),
(1962, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CLOBETASOLCREAMINDIA', NULL, 'Tube', '1905-07-15', NULL, NULL, NULL, NULL, 'NON CONSUMABLE', 'Active', 'xlat125', NULL, 0),
(1963, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2027-07-30', '', 'QUININETABS', NULL, 'Tab', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Active', 'xlat125', NULL, 0),
(1964, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '2027-07-30', '', 'QUININEINJE', NULL, 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'ANTI-MALARIAL', 'Active', 'xlat125', NULL, 0),
(1965, '', '', 'None', NULL, '0', '100', '0', '', 0, 0, 0, '2027-07-30', '', 'PIROXICAM20MGCAPS', NULL, 'Bot', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 0),
(1966, '', '', 'None', NULL, '0', '50', '0', '', 0, 0, 0, '2027-07-30', '', 'INDOMETHACIN100MGTABS', '200', 'Unit', '1905-07-15', NULL, NULL, NULL, NULL, 'PainKIller', 'Active', 'xlat125', NULL, 10000),
(1967, '', '', 'None', NULL, '0', '2500', '0', '', 0, 0, 0, '2027-07-30', '', 'NORMAGUT', '-6', 'Capsules', '1900-01-10', NULL, NULL, NULL, NULL, 'Multivitamins', 'Active', 'xlat125', 'Consumable', 0),
(1968, '', '', 'None', NULL, '0', '35000', '0', '', 0, 0, 0, '2027-07-30', '', 'Vitamin B12 Nasal SPray ', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Anti-spasmotic', 'Active', 'xlat125', 'Consumable', 0),
(1969, '', '', 'None', NULL, '0', '30000', '0', '', 0, 0, 0, '2027-07-30', '', 'NASO B12 NASAL SPRAY', '0', 'Tabs', '1900-01-11', NULL, NULL, NULL, NULL, 'Anti-spasmotic', 'Active', 'xlat125', 'Consumable', 0),
(1970, '', '', 'None', NULL, '0', '15000', '0', '', 0, 0, 0, '2027-07-30', '', 'VITAMIN D3 INJECTION', '0', 'Vials', '1900-01-11', NULL, NULL, NULL, NULL, 'Vitamins', 'Active', 'xlat125', 'Consumable', 0),
(1971, '', '', 'None', NULL, '0', '3000', '0', '', 0, 0, 0, '2027-07-30', '', 'FANSIDAR  3\'S', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Antimalaria', 'Active', 'xlat125', NULL, 0),
(1972, '', '', 'None', NULL, '0', '5000', '0', '', 0, 0, 0, '2027-07-30', '', 'CETAMOL  60MLS', '-10', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Painkiller', 'Active', 'xlat125', NULL, 10000),
(1973, '', '', 'None', NULL, '0', '1500', '0', '', 0, 0, 0, '2027-07-30', '', 'GLIMEPRIDE 4MG UK', '0', 'cash', '1900-01-11', NULL, NULL, NULL, NULL, 'Painkiller', 'Active', 'xlat125', NULL, 0),
(1974, 'ACICONE S TABS', 'ACICONE S TABS', 'ACICONE S TABS', '0', '0', '500', '', 'None', 0, 0, 0, '', 'ACICONE S TABS', 'ACICONE S TABS', '0', 'Tabs', '11/18/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Active', '4ETR4', 'Consumable', 0),
(1975, 'ACICONE S TABS', 'ACICONE S TABS', 'ACICONE S TABS', '0', '0', '500', '325', 'WHITE STAR PHARMA (U) LTD', 0, 20, 0, '2024-12-09', 'ACICONE S TABS', 'ACICONE S TABS', '0', 'cash', '2023-11-14', NULL, '6500', 'D876', 20, 'Anti-spasmotic', 'Active', 'B99393', NULL, 0),
(1976, 'GLIMEPRIDE(EUGLIME)4MG', '', 'GLIMEPRIDE(EUGLIME)4MG', '0', '0', '1500', '350', 'WHITE STAR PHARMA (U) LTD', 0, 50, 0, '2024-11-18', 'GLIMEPRIDE(EUGLIME)4MG', 'GLIMEPRIDE(EUGLIME)4MG', '50', 'cash', '2023-11-14', NULL, '17500', NULL, 50, 'ANTI DIABETICS', 'Active', 'Bg632', NULL, 0),
(1977, 'G-CEFTRIA1GM', '', 'G-CEFTRIA1GM', '0', '0', '5000', '2500', 'WHITE STAR PHARMA (U) LTD', 0, 10, 0, '2024-12-08', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '5', 'cash', '2023-11-16', NULL, '25000', NULL, 10, 'ANTIBIOTICS', 'Active', 'bfg2031', NULL, 0),
(1978, 'STERILEGAUZE', '', 'STERILEGAUZE', '0', '0', '5000', '3500', 'WHITE STAR PHARMA (U) LTD', 0, 5, 0, '2025-12-05', 'STERILEGAUZE', 'STERILEGAUZE', '5', 'cash', '2023-11-15', NULL, '17500', NULL, 5, 'NON CONSUMABLE', 'Active', 'bnkl2012', NULL, 0),
(1979, 'G-CEFTRIA1GM', '', 'G-CEFTRIA1GM', '0', '0', '5000', '2500', 'WHITE STAR PHARMA (U) LTD', 0, 10, 0, '2026-11-08', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '10', 'cash', '2023-11-18', NULL, '25000', NULL, 10, 'ANTIBIOTICS', 'Active', 'nklA033', NULL, 0),
(1980, 'GLIMEPRIDE(EUGLIME)4MG', '', 'GLIMEPRIDE(EUGLIME)4MG', '0', '0', '1500', '280', 'WHITE STAR PHARMA (U) LTD', 0, 50, 0, '2028-11-18', 'GLIMEPRIDE(EUGLIME)4MG', 'GLIMEPRIDE(EUGLIME)4MG', '0', 'cash', '2023-11-18', NULL, '14000', NULL, 50, 'ANTI DIABETICS', 'Active', 'bqKER921', NULL, 0),
(1981, 'DAPAGLIFOZIN(DAPZIN)10MG', '', 'DAPAGLIFOZIN(DAPZIN)10MG', '0', '0', '2500', '1500', 'WHITE STAR PHARMA (U) LTD', 0, 60, 0, '2027-11-01', 'DAPAGLIFOZIN(DAPZIN)10MG', 'DAPAGLIFOZIN(DAPZIN)10MG', '23', 'cash', '2023-11-18', NULL, '90000', NULL, 60, 'ANTI HYPERTENSIVE', 'Active', 'BPGFS02', NULL, 0),
(1982, 'GRISEOFULVIN 500MG TABS', 'GRISEOFULVIN 500MG TABS', 'GRISEOFULVIN 500MG TABS', '0', '0', '300', '300', 'None', 0, 70, 0, '2027-04-30', 'GRISEOFULVIN 500MG TABS', 'GRISEOFULVIN 500MG TABS', '70', 'Tabs', '11/19/23', NULL, '0', 'D876', 70, 'Anti-fungal', 'Active', '876IJGJ', 'Consumable', 0),
(1983, 'ARTANE 5MG TABS', 'ARTANE 5MG TABS', 'ARTANE 5MG TABS', '0', '0', '300', '300', 'None', 0, 50, 0, '2025-03-30', 'ARTANE 5MG TABS', 'ARTANE 5MG TABS', '50', 'Tabs', '11/19/23', NULL, '0', 'D876', 50, 'NA', 'Active', '65Y6', 'Consumable', 0),
(1984, 'SURGICAL BLADES', 'SURGICAL BLADES', 'SURGICAL BLADES', '0', '0', '200', '200', 'None', 0, 80, 0, '2027-03-04', 'SURGICAL BLADES', 'SURGICAL BLADES', '80', 'NA', '11/19/23', NULL, '0', 'D876', 80, 'Anti-spasmotic', 'Active', '08YFG', 'Non Consumable', 0),
(1985, 'MONTELUKAST 10MG TABS ', 'MONTELUKAST 10MG TABS ', 'MONTELUKAST 10MG TABS ', '0', '0', '700', '700', 'None', 0, 30, 0, '2026-12-30', 'MONTELUKAST 10MG TABS ', 'MONTELUKAST 10MG TABS ', '30', 'Tabs', '11/19/23', NULL, '0', 'D876', 30, 'NA', 'Active', '7788I67', 'Consumable', 0),
(1986, 'ACECLOFENAC 100MG TABS ', 'ACECLOFENAC 100MG TABS ', 'ACECLOFENAC 100MG TABS ', '0', '0', '200', '200', 'None', 0, 70, 0, '2027-03-12', 'ACECLOFENAC 100MG TABS ', 'ACECLOFENAC 100MG TABS ', '70', 'Tabs', '11/19/23', NULL, '0', 'D876', 70, 'NA', 'Active', '67IKY7T', 'Consumable', 0),
(1987, 'SEPTIN SYRUP', 'SEPTIN SYRUP', 'SEPTIN SYRUP', '0', '0', '3000', '3000', 'None', 0, 2, 0, '2027-03-03', 'SEPTIN SYRUP', 'SEPTIN SYRUP', '2', 'NA', '11/19/23', NULL, '0', 'D876', 2, 'NA', 'Active', 'JH987', 'Consumable', 0),
(1988, 'DAFRACLAV 457/5MLS  ', 'DAFRACLAV 457/5MLS  ', 'DAFRACLAV 457/5MLS  ', '0', '0', '18000', '18000', 'None', 0, 2, 0, '2027-04-30', 'DAFRACLAV 457/5MLS  ', 'DAFRACLAV 457/5MLS  ', '2', 'Tabs', '11/19/23', NULL, '0', 'D876', 2, 'Antibiotics', 'Active', '867R76', 'Consumable', 0),
(1989, 'BENYLIN CODEIN SYRUP', 'BENYLIN CODEIN SYRUP', 'BENYLIN CODEIN SYRUP', '0', '0', '22000', '22000', 'None', 0, 1, 0, '2027-03-30', 'BENYLIN CODEIN SYRUP', 'BENYLIN CODEIN SYRUP', '1', 'Syrup', '11/19/23', NULL, '0', 'D876', 1, 'NA', 'Active', 'YHGTYR', 'Consumable', 0),
(1990, 'ZINC SYRUP ', 'ZINC SYRUP ', 'ZINC SYRUP ', '0', '0', '3000', '3000', 'None', 0, 1, 0, '2026-03-30', 'ZINC SYRUP ', 'ZINC SYRUP ', '0', 'Syrup', '11/19/23', NULL, '0', 'D876', 1, 'NA', 'Active', 'HVB8IU78', 'Consumable', 0),
(1991, 'OPELE LOTION ', 'OPELE LOTION ', 'OPELE LOTION ', '0', '0', '5000', '5000', 'None', 0, 1, 0, '2023-03-20', 'OPELE LOTION ', 'OPELE LOTION ', '1', 'Gell', '11/19/23', NULL, '0', 'D876', 1, 'NA', 'Active', 'TRE7Y56', 'Consumable', 0),
(1992, 'CALAMINE LOTION ', 'CALAMINE LOTION ', 'CALAMINE LOTION ', '0', '0', '3000', '300', 'None', 0, 2, 0, '2027-07-30', 'CALAMINE LOTION ', 'CALAMINE LOTION ', '2', 'Cream', '11/19/23', NULL, '0', 'D876', 2, 'NA', 'Active', 'H8I7', 'Consumable', 0),
(1993, 'LACTULOSE  SYRUP  BIG', 'LACTULOSE  SYRUP  BIG', 'LACTULOSE  SYRUP  BIG', '0', '0', '10000', '10000', 'None', 0, 2, 0, '2025-03-12', 'LACTULOSE  SYRUP  BIG', 'LACTULOSE  SYRUP  BIG', '2', 'NA', '11/19/23', NULL, '0', 'D876', 2, 'NA', 'Active', '675YUT', 'Consumable', 0),
(1994, 'BURNCURE CREAM', 'BURNCURE CREAM', 'BURNCURE CREAM', '0', '0', '3000', '3000', 'None', 0, 2, 0, '2027-04-06', 'BURNCURE CREAM', 'BURNCURE CREAM', '2', 'Cream', '11/19/23', NULL, '0', 'D876', 2, 'NA', 'Active', '756TF', 'Consumable', 0),
(1995, 'AMOXYCLAV 1.2GM INJ', 'AMOXYCLAV 1.2GM INJ', 'AMOXYCLAV 1.2GM INJ', '0', '0', '10000', '1000', 'None', 0, 3, 0, '2023-01-30', 'AMOXYCLAV 1.2GM INJ', 'AMOXYCLAV 1.2GM INJ', '3', 'NA', '11/19/23', NULL, '0', 'D876', 3, 'Antibiotics', 'Active', 'UTYJHYGH', 'Consumable', 0),
(1996, 'CONTUS BLUB SYRUP', 'CONTUS BLUB SYRUP', 'CONTUS BLUB SYRUP', '0', '0', '6000', '6000', 'None', 0, 1, 0, '2025-12-30', 'CONTUS BLUB SYRUP', 'CONTUS BLUB SYRUP', '1', 'Tabs', '11/19/23', NULL, '0', 'D876', 1, 'NA', 'Active', 'UIJHK79', 'Consumable', 0),
(1997, 'ASPIRIN (ECORIN) 75MG TABS', 'ASPIRIN (ECORIN) 75MG TABS', 'ASPIRIN (ECORIN) 75MG TABS', '0', '0', '300', '300', 'None', 0, 100, 0, '2027-04-30', 'ASPIRIN (ECORIN) 75MG TABS', 'ASPIRIN (ECORIN) 75MG TABS', '-900', 'Tabs', '11/19/23', NULL, '0', 'D876', 100, 'Anti-hypertensive', 'Active', 'JH8I768', 'Consumable', 0),
(1998, 'BBC  SPRAY', 'BBC  SPRAY', 'BBC  SPRAY', '0', '0', '25000', '25000', 'None', 0, 1, 0, '2027-12-30', 'BBC  SPRAY', 'BBC  SPRAY', '1', 'Bottles', '11/19/23', NULL, '0', 'D876', 1, 'NA', 'Active', 'BVCGHU8', 'Consumable', 0),
(1999, 'HALOPERIDONE 5MG TABS', 'HALOPERIDONE 5MG TABS', 'HALOPERIDONE 5MG TABS', '0', '0', '500', '500', 'None', 0, 15, 0, '2027-03-30', 'HALOPERIDONE 5MG TABS', 'HALOPERIDONE 5MG TABS', '15', 'Tabs', '11/19/23', NULL, '0', 'D876', 15, 'Anti-spasmotic', 'Active', 'UGFU67', 'Consumable', 0),
(2000, 'TRIAMCINOLONE  INJ', 'TRIAMCINOLONE  INJ', 'TRIAMCINOLONE  INJ', '0', '0', '12000', '12000', 'None', 0, 1, 0, '2027-04-30', 'TRIAMCINOLONE  INJ', 'TRIAMCINOLONE  INJ', '1', 'Tabs', '11/19/23', NULL, '0', 'D876', 1, 'NA', 'Active', 'BVNTI8U7', 'Consumable', 0),
(2001, 'AMITRIPTYLINE 25MG TABS INDIA', 'AMITRIPTYLINE 25MG TABS INDIA', 'AMITRIPTYLINE 25MG TABS INDIA', '0', '0', '100', '100', 'None', 0, 100, 0, '2027-03-30', 'AMITRIPTYLINE 25MG TABS INDIA', 'AMITRIPTYLINE 25MG TABS INDIA', '100', 'Tabs', '11/19/23', NULL, '0', 'D876', 100, 'NA', 'Active', 'ETREWY', 'Consumable', 0),
(2002, 'AUGMENTIN 375MG TABS', 'AUGMENTIN 375MG TABS', 'AUGMENTIN 375MG TABS', '0', '0', '2500', '2500', 'None', 0, 20, 0, '2027-03-30', 'AUGMENTIN 375MG TABS', 'AUGMENTIN 375MG TABS', '20', 'Tabs', '11/19/23', NULL, '0', 'D876', 20, 'Antibiotics', 'Active', 'NVBC8U', 'Consumable', 0),
(2003, 'THIAMINE TABS ', 'THIAMINE TABS ', 'THIAMINE TABS ', '0', '0', '700', '700', 'None', 0, 16, 0, '2027-03-30', 'THIAMINE TABS ', 'THIAMINE TABS ', '16', 'Tabs', '11/19/23', NULL, '0', 'D876', 16, 'NA', 'Active', 'VBJ7I', 'Consumable', 0),
(2004, 'CLOPIDOGREL 75MG INDIA ', 'CLOPIDOGREL 75MG INDIA ', 'CLOPIDOGREL 75MG INDIA ', '0', '0', '1000', '1000', 'None', 0, 30, 0, '2087-03-30', 'CLOPIDOGREL 75MG INDIA ', 'CLOPIDOGREL 75MG INDIA ', '30', 'Tabs', '11/19/23', NULL, '0', 'D876', 30, 'Anti-hypertensive', 'Active', 'XVBGY', 'Consumable', 0),
(2005, 'NAT B ', 'NAT B ', 'NAT B ', '0', '0', '1000', '1000', 'None', 0, 30, 0, '2078-03-30', 'NAT B ', 'NAT B ', '0', 'Tabs', '11/19/23', NULL, '0', 'D876', 30, 'Vitamins', 'Active', 'HBTUT', 'Consumable', 0),
(2006, 'ALPRAZOLAM 0.5MG TABS', 'ALPRAZOLAM 0.5MG TABS', 'ALPRAZOLAM 0.5MG TABS', '0', '0', '1500', '1500', 'None', 0, 7, 0, '2027-03-30', 'ALPRAZOLAM 0.5MG TABS', 'ALPRAZOLAM 0.5MG TABS', '-48', 'Tabs', '11/19/23', NULL, '0', 'D876', 7, 'NA', 'Active', 'HYTUJTY', 'Consumable', 0),
(2007, 'ROSUVASTATI 20MG INDIA', 'ROSUVASTATI 20MG INDIA', 'ROSUVASTATI 20MG INDIA', '0', '0', '1200', '1200', 'None', 0, 30, 0, '2027-03-30', 'ROSUVASTATI 20MG INDIA', 'ROSUVASTATI 20MG INDIA', '-270', 'Tabs', '11/19/23', NULL, '0', 'D876', 30, 'NA', 'Active', 'BCXFYHRT', 'Consumable', 0),
(2008, 'SEVOSTAT  SMALL', 'SEVOSTAT  SMALL', 'SEVOSTAT  SMALL', '0', '0', '3000', '3000', 'None', 0, 1, 0, '0029-03-30', 'SEVOSTAT  SMALL', 'SEVOSTAT  SMALL', '1', 'Tabs', '11/19/23', NULL, '0', 'D876', 1, 'NA', 'Active', 'BJYTI', 'Consumable', 0),
(2009, 'METFORMIN DENK 850MG TABS', 'METFORMIN DENK 850MG TABS', 'METFORMIN DENK 850MG TABS', '0', '0', '700', '700', 'None', 0, 15, 0, '2029-03-30', 'METFORMIN DENK 850MG TABS', 'METFORMIN DENK 850MG TABS', '15', 'Tabs', '11/19/23', NULL, '0', 'D876', 15, 'NA', 'Active', 'CVFSY56', 'Consumable', 0),
(2010, 'FUROSEMIDEINJ', '', 'FUROSEMIDEINJ', '0', '0', '2000', '700', 'WHITE STAR PHARMA (U) LTD', 0, 20, 0, '2027-03-14', 'FUROSEMIDEINJ', 'FUROSEMIDEINJ', '8', 'cash', '2023-11-15', NULL, '14000', NULL, 20, 'ANTI HYPERTENSIVE', 'Active', '1235890', NULL, 0),
(2011, 'BISOPROLOL5MGUK', 'BISOPROLOL 5MG UK', 'BISOPROLOL5MGUK', '0', '0', '1000', '300', 'BIOGEN PHARMA LTD', 0, 140, 0, '2028-12-30', 'BISOPROLOL5MGUK', 'BISOPROLOL5MGUK', '140', 'credit', '2023-11-18', NULL, '42000', 'D876', 140, 'ANTI HYPERTENSIVE', 'Obsolete', 'L50895', NULL, 0),
(2012, 'AMITRIPTYLINE 25MG TABS INDIA', 'AMITRIPTYLINE 25MG TABS INDIA', 'AMITRIPTYLINE 25MG TABS INDIA', '0', '0', '100', '40', 'BIOGEN PHARMA LTD', 0, 100, 0, '2028-12-30', 'AMITRIPTYLINE 25MG TABS INDIA', 'AMITRIPTYLINE 25MG TABS INDIA', '100', 'credit', '2023-11-18', NULL, '4000', 'D876', 100, 'NA', 'Active', 'FSC546', NULL, 0),
(2013, 'TELMISARTANH(TELVAS)80/12.5MG', '', 'TELMISARTANH(TELVAS)80/12.5MG', '0', '0', '1500', '850', 'BIOGEN PHARMA LTD', 0, 50, 0, '2028-12-30', 'TELMISARTANH(TELVAS)80/12.5MG', 'TELMISARTANH(TELVAS)80/12.5MG', '50', 'credit', '2023-11-18', NULL, '42500', NULL, 50, 'ANTI HYPERTENSIVE', 'Active', 'YTGVHV', NULL, 0),
(2014, 'METFORMINDENK1000MG', '', 'METFORMINDENK1000MG', '0', '0', '1000', '500', 'BIOGEN PHARMA LTD', 0, 60, 0, '2028-12-30', 'METFORMINDENK1000MG', 'METFORMINDENK1000MG', '-30', 'credit', '2023-11-18', NULL, '30000', NULL, 60, 'ANTI HYPERTENSIVE', 'Active', '76UIYU', NULL, 0),
(2015, 'CRESTOR20MG', 'CRESTOR 20MG', 'CRESTOR20MG', '0', '0', '2000', '1200', 'BIOGEN PHARMA LTD', 0, 28, 0, '2028-12-30', 'CRESTOR20MG', 'CRESTOR20MG', '28', 'credit', '2023-11-18', NULL, '33600', 'D876', 28, 'ANTI HYPERTENSIVE', 'Obsolete', 'FS3645', NULL, 0),
(2016, 'RELCERGEL200ML', 'RELCER GEL 200ML', 'RELCERGEL200ML', '0', '0', '13000', '5000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2028-12-30', 'RELCERGEL200ML', 'RELCERGEL200ML', '1', 'credit', '2023-11-18', NULL, '5000', 'D876', 1, 'ANTI-ULCERS', 'Obsolete', '4TYYU', NULL, 0),
(2017, 'AA', 'AA', 'AA', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'AA', 'AA', '0', 'Tabs', '11/19/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Active', '', 'Consumable', 0),
(2018, 'BB', 'BB', 'BB', '0', '0', '400', '400', 'None', 0, 0, 0, '', 'BB', 'BB', '0', 'Tabs', '11/19/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Active', '', 'Consumable', 0),
(2019, 'BETAPYNE TABS', 'BETAPYNE TABS', 'BETAPYNE TABS', '0', '0', '1200', '1200', 'None', 0, 0, 0, '', 'BETAPYNE TABS', 'BETAPYNE TABS', '0', 'Tabs', '11/19/23', NULL, '0', 'D876', 0, 'NA', 'Active', '', 'Consumable', 0),
(2020, 'LINEZOLID 600MG TABS', 'LINEZOLID 600MG TABS', 'LINEZOLID 600MG TABS', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'LINEZOLID 600MG TABS', 'LINEZOLID 600MG TABS', '0', 'Tabs', '11/19/23', NULL, '0', 'D876', 0, 'Antibiotics', 'Active', '', 'Consumable', 0),
(2021, 'IBUPROFEN SYRUP', 'IBUPROFEN SYRUP', 'IBUPROFEN SYRUP', '0', '0', '5000', '5000', 'None', 0, 0, 0, '', 'IBUPROFEN SYRUP', 'IBUPROFEN SYRUP', '0', 'Syrup', '11/19/23', NULL, '0', 'D876', 0, 'Painkiller', 'Active', '', 'Consumable', 0),
(2022, 'TYPHOID STIPS', 'TYPHOID STIPS', 'TYPHOID STIPS', '0', '0', '4000', '4000', 'None', 0, 0, 0, '', 'TYPHOID STIPS', 'TYPHOID STIPS', '0', 'NA', '11/19/23', NULL, '0', 'D876', 0, 'NA', 'Active', '', 'Non Consumable', 0),
(2023, 'MONTICOPE5/10MG', 'MONTICOPE 5/10MG', 'MONTICOPE5/10MG', '0', '0', '1000', '410', 'BIOGEN PHARMA LTD', 0, 30, 0, '2029-12-30', 'MONTICOPE5/10MG', 'MONTICOPE5/10MG', '30', 'credit', '2023-11-18', NULL, '12300', 'D876', 30, 'ANTI-ULCERS', 'Obsolete', '76UYTU', NULL, 0),
(2024, 'RELCERGEL200ML', 'RELCER GEL 200ML', 'RELCERGEL200ML', '0', '0', '13000', '7500', 'BIOGEN PHARMA LTD', 0, 2, 0, '2029-12-30', 'RELCERGEL200ML', 'RELCERGEL200ML', '2', 'credit', '2023-11-18', NULL, '15000', 'D876', 2, 'ANTI-ULCERS', 'Obsolete', 'WFREWRF', NULL, 0),
(2025, 'METFORMINDENK1000MG', 'METFORMIN DENK 1000MG', 'METFORMINDENK1000MG', '0', '0', '1000', '500', 'BIOGEN PHARMA LTD', 0, 90, 0, '2029-12-30', 'METFORMINDENK1000MG', 'METFORMINDENK1000MG', '90', 'credit', '2023-11-18', NULL, '45000', 'D876', 90, 'ANTI HYPERTENSIVE', 'Obsolete', 'FH6', NULL, 0),
(2026, 'IBUPFOFEN200MGTABS', '', 'IBUPFOFEN200MGTABS', '0', '0', '50', '23', 'BIOGEN PHARMA LTD', 0, 100, 0, '2029-12-30', 'IBUPFOFEN200MGTABS', 'IBUPFOFEN200MGTABS', '100', 'credit', '2023-11-18', NULL, '2300', NULL, 100, 'PainKIller', 'Obsolete', '76Y57U56', NULL, 0),
(2027, 'DELEASEDDRYSYRUP', 'DELEASED DRY SYRUP', 'DELEASEDDRYSYRUP', '0', '0', '5000', '3800', 'BIOGEN PHARMA LTD', 0, 2, 0, '2029-12-30', 'DELEASEDDRYSYRUP', 'DELEASEDDRYSYRUP', '2', 'credit', '2023-11-18', NULL, '7600', 'D876', 2, 'ANTI COUGH', 'Obsolete', '564Y45', NULL, 0),
(2028, 'DELEASEDPAEDSYRUP', 'DELEASED PAED SYRUP', 'DELEASEDPAEDSYRUP', '0', '0', '5000', '3800', 'BIOGEN PHARMA LTD', 0, 2, 0, '2029-12-30', 'DELEASEDPAEDSYRUP', 'DELEASEDPAEDSYRUP', '2', 'credit', '2023-11-18', NULL, '7600', 'D876', 2, 'ANTI COUGH', 'Obsolete', '7U65TYF', NULL, 0),
(2029, 'AMPICLOX 500MG CAPS', 'AMPICLOX 500MG CAPS', 'AMPICLOX 500MG CAPS', '0', '0', '200', '100', 'BIOGEN PHARMA LTD', 0, 50, 0, '2029-12-30', 'AMPICLOX 500MG CAPS', 'AMPICLOX 500MG CAPS', '10', 'credit', '2023-11-18', NULL, '5000', 'D876', 50, 'Antibiotics', 'Active', '7YU56', NULL, 0),
(2030, 'APIDONESYRUP100MLS', 'APIDONE SYRUP 100MLS', 'APIDONESYRUP100MLS', '0', '0', '20000', '18000', 'BIOGEN PHARMA LTD', 0, 2, 0, '2029-12-30', 'APIDONESYRUP100MLS', 'APIDONESYRUP100MLS', '2', 'credit', '2023-11-18', NULL, '36000', 'D876', 2, 'ANTI COUGH', 'Obsolete', 'GTRE6Y45', NULL, 0),
(2031, 'PANADOLADVANCE', 'PANADOL ADVANCE', 'PANADOLADVANCE', '0', '0', '200', '158', 'BIOGEN PHARMA LTD', 0, 100, 0, '2029-12-30', 'PANADOLADVANCE', 'PANADOLADVANCE', '100', 'credit', '2023-11-18', NULL, '15800', 'D876', 100, 'PainKIller', 'Obsolete', '4ET45', NULL, 0),
(2032, 'ALKA5SYRUP', 'ALKA 5 SYRUP', 'ALKA5SYRUP', '0', '0', '5000', '3500', 'BIOGEN PHARMA LTD', 0, 1, 0, '2028-12-30', 'ALKA5SYRUP', 'ALKA5SYRUP', '1', 'credit', '2023-11-17', NULL, '3500', 'D876', 1, 'NON CONSUMABLE', 'Obsolete', 'RETG4', NULL, 0),
(2033, 'AUGMENTIN625MG', 'AUGMENTIN 625MG', 'AUGMENTIN625MG', '0', '0', '4000', '2800', 'BIOGEN PHARMA LTD', 0, 14, 0, '2029-12-30', 'AUGMENTIN625MG', 'AUGMENTIN625MG', '14', 'credit', '2023-11-17', NULL, '39200', 'D876', 14, 'ANTIBIOTICS', 'Obsolete', 'DGFWR4EYT', NULL, 0),
(2034, '20MLSYRINGE', '20ML SYRINGE', '20MLSYRINGE', '0', '0', '1000', '500', 'BIOGEN PHARMA LTD', 0, 10, 0, '2029-12-30', '20MLSYRINGE', '20MLSYRINGE', '10', 'credit', '2023-11-17', NULL, '5000', 'D876', 10, 'NON CONSUMABLE', 'Obsolete', 'FWER43', NULL, 0),
(2035, 'ALBENDAZOLETABS(WORMIN)', 'ALBENDAZOLE TABS (WORMIN)', 'ALBENDAZOLETABS(WORMIN)', '0', '0', '1000', '400', 'BIOGEN PHARMA LTD', 0, 10, 0, '2029-12-30', 'ALBENDAZOLETABS(WORMIN)', 'ALBENDAZOLETABS(WORMIN)', '10', 'credit', '2023-11-17', NULL, '4000', 'D876', 10, 'ANTIPROTOZOAL', 'Obsolete', 'RTR34R4', NULL, 0),
(2036, 'EXAMINATIONGLOVES', 'EXAMINATION GLOVES', 'EXAMINATIONGLOVES', '0', '0', '1000', '11000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2029-12-30', 'EXAMINATIONGLOVES', 'EXAMINATIONGLOVES', '1', 'credit', '2023-11-17', NULL, '11000', 'D876', 1, 'NON CONSUMABLE', 'Obsolete', '4EE32', NULL, 0),
(2037, 'NAT B ', 'NAT B ', 'NAT B ', '0', '0', '1000', '550', 'BIOGEN PHARMA LTD', 0, 30, 0, '2029-12-30', 'NAT B ', 'NAT B ', '-510', 'credit', '2023-11-17', NULL, '16500', 'D876', 30, 'Vitamins', 'Active', 'Y65756', NULL, 0),
(2038, 'LEVODENK500MG', 'LEVODENK 500MG', 'LEVODENK500MG', '0', '0', '4000', '3000', 'BIOGEN PHARMA LTD', 0, 10, 0, '2029-12-30', 'LEVODENK500MG', 'LEVODENK500MG', '10', 'credit', '2023-11-17', NULL, '30000', 'D876', 10, 'ANTIBIOTICS', 'Obsolete', 'HTYU76', NULL, 0),
(2039, 'CRESTOR20MG', 'CRESTOR 20MG', 'CRESTOR20MG', '0', '0', '2000', '1200', 'BIOGEN PHARMA LTD', 0, 28, 0, '2029-12-30', 'CRESTOR20MG', 'CRESTOR20MG', '28', 'credit', '2023-11-17', NULL, '33600', 'D876', 28, 'ANTI HYPERTENSIVE', 'Obsolete', '576YT6HJUYT', NULL, 0),
(2040, 'DICLODAYCREAM', 'DICLODAY CREAM', 'DICLODAYCREAM', '0', '0', '5000', '2200', 'BIOGEN PHARMA LTD', 0, 2, 0, '2029-12-30', 'DICLODAYCREAM', 'DICLODAYCREAM', '2', 'credit', '2023-11-17', NULL, '4400', 'D876', 2, 'PainKIller', 'Obsolete', '4RWTER4', NULL, 0),
(2041, 'OMEPRAZOLE20MGI.V', 'OMEPRAZOLE  20MG I.V', 'OMEPRAZOLE20MGI.V', '0', '0', '10000', '3000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2029-12-30', 'OMEPRAZOLE20MGI.V', 'OMEPRAZOLE20MGI.V', '1', 'credit', '2023-11-17', NULL, '3000', 'D876', 1, 'PPI', 'Obsolete', '6TY45675', NULL, 0),
(2042, 'CEFIXIME400MG(CEFWELL)', 'CEFIXIME 400MG (CEFWELL)', 'CEFIXIME400MG(CEFWELL)', '0', '0', '1500', '900', 'BIOGEN PHARMA LTD', 0, 20, 0, '2029-12-30', 'CEFIXIME400MG(CEFWELL)', 'CEFIXIME400MG(CEFWELL)', '20', 'credit', '2023-11-17', NULL, '18000', 'D876', 20, 'ANTIBIOTICS', 'Obsolete', '20DFSIUJ', NULL, 0),
(2043, 'ZAHA500MG', 'ZAHA 500MG', 'ZAHA500MG', '0', '0', '6000', '1466', 'BIOGEN PHARMA LTD', 0, 9, 0, '2029-12-30', 'ZAHA500MG', 'ZAHA500MG', '9', 'credit', '2023-11-17', NULL, '13200', 'D876', 9, 'ANTIBIOTICS', 'Obsolete', 'GTHYTU', NULL, 0),
(2044, 'CLOTRIMAZOLOECREAM(UNISTEN)', 'CLOTRIMAZOLOE CREAM(UNISTEN)', 'CLOTRIMAZOLOECREAM(UNISTEN)', '0', '0', '6000', '1300', 'BIOGEN PHARMA LTD', 0, 1, 0, '2029-12-30', 'CLOTRIMAZOLOECREAM(UNISTEN)', 'CLOTRIMAZOLOECREAM(UNISTEN)', '1', 'credit', '2023-11-17', NULL, '1300', 'D876', 1, 'NON CONSUMABLE', 'Obsolete', '43543', NULL, 0),
(2045, 'IBUPROFEN SYRUP', 'IBUPROFEN SYRUP', 'IBUPROFEN SYRUP', '0', '0', '5000', '1300', 'BIOGEN PHARMA LTD', 0, 1, 0, '2029-12-30', 'IBUPROFEN SYRUP', 'IBUPROFEN SYRUP', '1', 'credit', '2023-11-17', NULL, '1300', 'D876', 1, 'Painkiller', 'Active', 'ERYRY', NULL, 0),
(2046, 'NS', 'NS', 'NS', '0', '0', '3000', '1900', 'BIOGEN PHARMA LTD', 0, 5, 0, '2029-12-30', 'NS', 'NS', '5', 'credit', '2023-11-17', NULL, '9500', 'D876', 5, 'NON CONSUMABLE', 'Obsolete', '564EY5Y', NULL, 0),
(2047, 'ETORICOXIB(BRUTAFLAM)90MG', 'ETORICOXIB(BRUTAFLAM) 90MG', 'ETORICOXIB(BRUTAFLAM)90MG', '0', '0', '1500', '850', 'BIOGEN PHARMA LTD', 0, 30, 0, '2029-12-30', 'ETORICOXIB(BRUTAFLAM)90MG', 'ETORICOXIB(BRUTAFLAM)90MG', '30', 'credit', '2023-11-17', NULL, '25500', 'D876', 30, 'PainKIller', 'Obsolete', '4544', NULL, 0),
(2048, 'ETORICOXIB(BRUTAFLAM)60MG', 'ETORICOXIB(BRUTAFLAM) 60MG', 'ETORICOXIB(BRUTAFLAM)60MG', '0', '0', '1000', '766', 'BIOGEN PHARMA LTD', 0, 30, 0, '2029-12-30', 'ETORICOXIB(BRUTAFLAM)60MG', 'ETORICOXIB(BRUTAFLAM)60MG', '30', 'credit', '2023-11-17', NULL, '23000', 'D876', 30, 'PainKIller', 'Obsolete', '43WTGER', NULL, 0),
(2049, 'MYOSPAZ', 'MYOSPAZ', 'MYOSPAZ', '0', '0', '600', '460', 'BIOGEN PHARMA LTD', 0, 50, 0, '2026-12-30', 'MYOSPAZ', 'MYOSPAZ', '50', 'credit', '2023-11-17', NULL, '23000', 'D876', 50, 'MUSCLE RELAXANT', 'Obsolete', '543WT564', NULL, 0),
(2050, 'GINSOMIN', 'GINSOMIN', 'GINSOMIN', '0', '0', '1500', '166', 'BIOGEN PHARMA LTD', 0, 90, 0, '2028-12-30', 'GINSOMIN', 'GINSOMIN', '90', 'credit', '2023-11-17', NULL, '15000', 'D876', 90, 'MULTIMINERALS', 'Obsolete', '4T4E', NULL, 0),
(2051, 'LIVOLIN', 'LIVOLIN', 'LIVOLIN', '0', '0', '1500', '950', 'BIOGEN PHARMA LTD', 0, 30, 0, '2028-12-30', 'LIVOLIN', 'LIVOLIN', '30', 'credit', '2023-11-17', NULL, '28500', 'D876', 30, 'MULTMINERALS', 'Obsolete', '46T35Y54R', NULL, 0),
(2052, 'PREGABALIN (PREGASAFE) 75MG', 'PREGABALIN (PREGASAFE) 75MG', 'PREGABALIN (PREGASAFE) 75MG', '0', '0', '1000', '1000', 'None', 0, 0, 0, '', 'PREGABALIN (PREGASAFE) 75MG', 'PREGABALIN (PREGASAFE) 75MG', '0', 'Capsules', '11/20/23', NULL, '0', 'D876', 0, 'NA', 'Active', '', 'Consumable', 0),
(2053, 'PREGABALIN (PREGASAFE) 75MG', 'PREGABALIN (PREGASAFE) 75MG', 'PREGABALIN (PREGASAFE) 75MG', '0', '0', '1000', '570', 'BIOGEN PHARMA LTD', 0, 30, 0, '2029-12-30', 'PREGABALIN (PREGASAFE) 75MG', 'PREGABALIN (PREGASAFE) 75MG', '30', 'credit', '2023-11-17', NULL, '17100', 'D876', 30, 'NA', 'Active', '54RRT', NULL, 0),
(2054, 'DYNAPERINJECTION', 'DYNAPER INJECTION', 'DYNAPERINJECTION', '0', '0', '2000', '1400', 'BIOGEN PHARMA LTD', 0, 10, 0, '2029-12-30', 'DYNAPERINJECTION', 'DYNAPERINJECTION', '10', 'credit', '2023-11-16', NULL, '14000', 'D876', 10, 'PainKIller', 'Obsolete', '105765', NULL, 0),
(2055, 'ORS', 'ORS', 'ORS', '0', '0', '1000', '300', 'BIOGEN PHARMA LTD', 0, 15, 0, '2027-12-30', 'ORS', 'ORS', '15', 'credit', '2023-11-16', NULL, '4500', 'D876', 15, 'NON CONSUMABLE', 'Obsolete', '698HYUI', NULL, 0),
(2056, 'EUDERMCREAM', 'EUDERM CREAM', 'EUDERMCREAM', '0', '0', '15000', '9500', 'BIOGEN PHARMA LTD', 0, 1, 0, '2029-12-30', 'EUDERMCREAM', 'EUDERMCREAM', '1', 'credit', '2023-11-16', NULL, '9500', 'D876', 1, 'NON CONSUMABLE', 'Obsolete', '435TY67', NULL, 0),
(2057, 'D-ARTEPADULT', '', 'D-ARTEPADULT', '0', '0', '10000', '4500', 'BIOGEN PHARMA LTD', 0, 2, 0, '2029-12-30', 'D-ARTEPADULT', 'D-ARTEPADULT', '2', 'credit', '2023-11-16', NULL, '9000', NULL, 2, 'ANTI-MALARIAL', 'Obsolete', '56787', NULL, 0),
(2058, 'HAEMOFORTE200MLS', 'HAEMOFORTE 200MLS', 'HAEMOFORTE200MLS', '0', '0', '10000', '7000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2029-12-30', 'HAEMOFORTE200MLS', 'HAEMOFORTE200MLS', '1', 'credit', '2023-11-16', NULL, '7000', 'D876', 1, 'MULTIMINERALS', 'Obsolete', '687U89', NULL, 0),
(2059, 'EXAMINATIONGLOVES', 'EXAMINATION GLOVES', 'EXAMINATIONGLOVES', '0', '0', '1000', '30000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2029-12-30', 'EXAMINATIONGLOVES', 'EXAMINATIONGLOVES', '1', 'credit', '2023-11-16', NULL, '30000', 'D876', 1, 'NON CONSUMABLE', 'Obsolete', '34675RF6', NULL, 0),
(2060, 'AMOXYCLAV625MG(BACTOCLAV)TABS', 'AMOXYCLAV 625MG (BACTOCLAV) TABS', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '0', '0', '2000', '750', 'BIOGEN PHARMA LTD', 0, 20, 0, '2028-12-30', 'AMOXYCLAV625MG(BACTOCLAV)TABS', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '20', 'credit', '2023-11-16', NULL, '15000', 'D876', 20, 'ANTIBIOTICS', 'Obsolete', '4678R7', NULL, 0),
(2061, 'ARTESUN120MG', '', 'ARTESUN120MG', '0', '0', '15000', '10000', 'BIOGEN PHARMA LTD', 0, 5, 0, '2029-12-30', 'ARTESUN120MG', 'ARTESUN120MG', '5', 'credit', '2023-11-15', NULL, '50000', NULL, 5, 'ANTI-MALARIAL', 'Obsolete', 'GRTYUH65', NULL, 0),
(2062, 'ARTESUN60MG', 'ARTESUN 60MG', 'ARTESUN60MG', '0', '0', '7000', '6200', 'BIOGEN PHARMA LTD', 0, 5, 0, '2029-12-30', 'ARTESUN60MG', 'ARTESUN60MG', '5', 'credit', '2023-11-15', NULL, '31000', 'D876', 5, 'ANTI-MALARIAL', 'Obsolete', 'Y767U65T', NULL, 0),
(2063, 'ARTESUN30MG', 'ARTESUN 30MG', 'ARTESUN30MG', '0', '0', '5000', '4200', 'BIOGEN PHARMA LTD', 0, 5, 0, '2029-12-30', 'ARTESUN30MG', 'ARTESUN30MG', '5', 'credit', '2023-11-15', NULL, '21000', 'D876', 5, 'ANTI-MALARIAL', 'Obsolete', '687IOIYU', NULL, 0),
(2064, 'LORATIDINE(LORVIC)10MGTABS', 'LORATIDINE (LORVIC) 10MG TABS', 'LORATIDINE(LORVIC)10MGTABS', '0', '0', '500', '140', 'BIOGEN PHARMA LTD', 0, 30, 0, '2029-12-30', 'LORATIDINE(LORVIC)10MGTABS', 'LORATIDINE(LORVIC)10MGTABS', '30', 'credit', '2023-11-15', NULL, '4200', 'D876', 30, 'ANTI HISTAMINE', 'Obsolete', '30EYT54', NULL, 0),
(2065, 'CETAMOL  60MLS', 'CETAMOL  60MLS', 'CETAMOL  60MLS', '0', '0', '5000', '2700', 'BIOGEN PHARMA LTD', 0, 2, 0, '2029-12-30', 'CETAMOL  60MLS', 'CETAMOL  60MLS', '2', 'credit', '2023-11-15', NULL, '5400', 'D876', 2, 'Painkiller', 'Obsolete', '564YHR5TY', NULL, 0),
(2066, 'ASCORILSYRUP100ML', 'ASCORIL SYRUP 100ML', 'ASCORILSYRUP100ML', '0', '0', '8000', '4500', 'BIOGEN PHARMA LTD', 0, 1, 0, '2029-12-30', 'ASCORILSYRUP100ML', 'ASCORILSYRUP100ML', '1', 'credit', '2023-11-15', NULL, '4500', 'D876', 1, 'ANTI COUGH', 'Obsolete', '878I7', NULL, 0),
(2067, 'ZAHASYRUP', '', 'ZAHASYRUP', '0', '0', '6000', '3800', 'BIOGEN PHARMA LTD', 0, 1, 0, '2029-12-30', 'ZAHASYRUP', 'ZAHASYRUP', '1', 'credit', '2023-11-15', NULL, '3800', NULL, 1, 'ANTIBIOTICS', 'Obsolete', '65TRUY767', NULL, 0),
(2068, 'METRONIDAZOLEI.V', '', 'METRONIDAZOLEI.V', '0', '0', '3000', '1300', 'BIOGEN PHARMA LTD', 0, 2, 0, '2029-12-30', 'METRONIDAZOLEI.V', 'METRONIDAZOLEI.V', '2', 'credit', '2023-11-15', NULL, '2600', NULL, 2, 'ANTIBIOTICS', 'Obsolete', '76U68UI', NULL, 0),
(2069, 'RELCERGEL200ML', 'RELCER GEL 200ML', 'RELCERGEL200ML', '0', '0', '13000', '7500', 'BIOGEN PHARMA LTD', 0, 1, 0, '2029-12-30', 'RELCERGEL200ML', 'RELCERGEL200ML', '1', 'credit', '2023-11-15', NULL, '7500', 'D876', 1, 'ANTI-ULCERS', 'Obsolete', '7YU6U', NULL, 0),
(2070, 'DELEASEDDRYSYRUP', 'DELEASED DRY SYRUP', 'DELEASEDDRYSYRUP', '0', '0', '5000', '6000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2023-12-30', 'DELEASEDDRYSYRUP', 'DELEASEDDRYSYRUP', '1', 'credit', '2023-11-15', NULL, '6000', 'D876', 1, 'ANTI COUGH', 'Obsolete', 'UTYY', NULL, 0),
(2071, 'VITAMINBCOMPLEXINJ', 'VITAMIN B COMPLEX INJ', 'VITAMINBCOMPLEXINJ', '0', '0', '2000', '500', 'BIOGEN PHARMA LTD', 0, 5, 0, '2023-12-30', 'VITAMINBCOMPLEXINJ', 'VITAMINBCOMPLEXINJ', '5', 'credit', '2023-11-15', NULL, '2500', 'D876', 5, 'MULTIMINERALS', 'Obsolete', 'GTRYR', NULL, 0),
(2072, 'URINEBAG', '', 'URINEBAG', '0', '0', '1500', '1000', 'BIOGEN PHARMA LTD', 0, 2, 0, '2024-12-30', 'URINEBAG', 'URINEBAG', '2', 'credit', '2023-11-15', NULL, '2000', NULL, 2, 'NON CONSUMABLE', 'Obsolete', 'YY56', NULL, 0),
(2073, 'LIGNOCAININJ', 'LIGNOCAIN INJ', 'LIGNOCAININJ', '0', '0', '4000', '1500', 'BIOGEN PHARMA LTD', 0, 1, 0, '2024-12-30', 'LIGNOCAININJ', 'LIGNOCAININJ', '1', 'credit', '2023-11-15', NULL, '1500', 'D876', 1, 'LOCAL ANESTHESIA', 'Obsolete', '654756', NULL, 0),
(2074, 'IODINESOLUTIONSMALL', 'IODINE SOLUTION SMALL', 'IODINESOLUTIONSMALL', '0', '0', '3000', '1800', 'BIOGEN PHARMA LTD', 0, 2, 0, '2024-02-20', 'IODINESOLUTIONSMALL', 'IODINESOLUTIONSMALL', '2', 'credit', '2023-11-15', NULL, '3600', 'D876', 2, 'NON CONSUMABLE', 'Obsolete', '56756', NULL, 0),
(2075, 'SURGICALGLOVES7.5MG', 'SURGICAL GLOVES 7.5MG', 'SURGICALGLOVES7.5MG', '0', '0', '1500', '1140', 'BIOGEN PHARMA LTD', 0, 5, 0, '2024-12-02', 'SURGICALGLOVES7.5MG', 'SURGICALGLOVES7.5MG', '5', 'credit', '2023-11-15', NULL, '5700', 'D876', 5, 'NON CONSUMABLE', 'Obsolete', '6T54Y', NULL, 0),
(2076, 'VITAMINCTABS', 'VITAMIN C TABS', 'VITAMINCTABS', '0', '0', '100', '18', 'BIOGEN PHARMA LTD', 0, 100, 0, '2024-12-04', 'VITAMINCTABS', 'VITAMINCTABS', '100', 'credit', '2023-11-15', NULL, '1800', 'D876', 100, 'VITAMINS', 'Obsolete', 'Y566I8', NULL, 0),
(2077, 'NORMAGUT', 'NORMAGUT', 'NORMAGUT', '0', '0', '2500', '1900', 'BIOGEN PHARMA LTD', 0, 15, 0, '2023-12-31', 'NORMAGUT', 'NORMAGUT', '15', 'credit', '2023-11-15', NULL, '28500', 'D876', 15, 'Multivitamins', 'Obsolete', '6556I7', NULL, 0),
(2078, 'PREGABALIN (PREGASAFE) 75MG', 'PREGABALIN (PREGASAFE) 75MG', 'PREGABALIN (PREGASAFE) 75MG', '0', '0', '1000', '50', 'BIOGEN PHARMA LTD', 0, 30, 0, '2023-12-30', 'PREGABALIN (PREGASAFE) 75MG', 'PREGABALIN (PREGASAFE) 75MG', '30', 'credit', '2023-11-15', NULL, '1500', 'D876', 30, 'NA', 'Active', '56TU678', NULL, 0),
(2079, 'RL', 'RL', 'RL', '0', '0', '3000', '1140', 'BIOGEN PHARMA LTD', 0, 5, 0, '0203-12-30', 'RL', 'RL', '5', 'credit', '2023-11-15', NULL, '5700', 'D876', 5, 'NA', 'Obsolete', '76TYUYT', NULL, 0),
(2080, 'ORS', '', 'ORS', '0', '0', '1000', '7500', 'BIOGEN PHARMA LTD', 0, 1, 0, '2023-12-01', 'ORS', 'ORS', '1', 'credit', '2023-11-15', NULL, '7500', NULL, 1, 'NON CONSUMABLE', 'Obsolete', '656787', NULL, 0),
(2081, 'ARTESUN30MG', 'ARTESUN 30MG', 'ARTESUN30MG', '0', '0', '5000', '4200', 'BIOGEN PHARMA LTD', 0, 5, 0, '0024-12-31', 'ARTESUN30MG', 'ARTESUN30MG', '5', 'credit', '2023-11-14', NULL, '21000', 'D876', 5, 'ANTI-MALARIAL', 'Obsolete', '678UIY', NULL, 0),
(2082, 'CLOTRIMAZOLOECREAM(UNISTEN)', 'CLOTRIMAZOLOE CREAM(UNISTEN)', 'CLOTRIMAZOLOECREAM(UNISTEN)', '0', '0', '6000', '1300', 'BIOGEN PHARMA LTD', 0, 1, 0, '2025-12-31', 'CLOTRIMAZOLOECREAM(UNISTEN)', 'CLOTRIMAZOLOECREAM(UNISTEN)', '1', 'credit', '2023-11-14', NULL, '1300', 'D876', 1, 'NON CONSUMABLE', 'Obsolete', 'TT5W4T64', NULL, 0),
(2083, 'MENTHOXYL', 'MENTHOXYL', 'MENTHOXYL', '0', '0', '500', '300', 'BIOGEN PHARMA LTD', 0, 25, 0, '2023-12-31', 'MENTHOXYL', 'MENTHOXYL', '25', 'credit', '2023-11-14', NULL, '7500', 'D876', 25, 'ANTI COUGH', 'Obsolete', 'T54645', NULL, 0),
(2084, 'EPICEPHINE2GM', 'EPICEPHINE 2GM', 'EPICEPHINE2GM', '0', '0', '22000', '18000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2026-01-03', 'EPICEPHINE2GM', 'EPICEPHINE2GM', '1', 'credit', '2023-11-14', NULL, '18000', 'D876', 1, 'ANTIBIOTICS', 'Obsolete', '31RE4ER', NULL, 0),
(2085, 'CANNULAYELLOWI.V24G', 'CANNULA YELLOW I.V 24G', 'CANNULAYELLOWI.V24G', '0', '0', '1000', '400', 'BIOGEN PHARMA LTD', 0, 10, 0, '2023-12-31', 'CANNULAYELLOWI.V24G', 'CANNULAYELLOWI.V24G', '10', 'credit', '2023-11-14', NULL, '4000', 'D876', 10, 'NON CONSUMABLE', 'Obsolete', '87U68', NULL, 0),
(2086, 'FLUCAMOXCAPS500MG', 'FLUCAMOX CAPS 500MG', 'FLUCAMOXCAPS500MG', '0', '0', '2000', '1300', 'BIOGEN PHARMA LTD', 0, 16, 0, '2023-12-31', 'FLUCAMOXCAPS500MG', 'FLUCAMOXCAPS500MG', '16', 'credit', '2023-11-14', NULL, '20800', 'D876', 16, 'ANTIBIOTICS', 'Obsolete', '45W64', NULL, 0),
(2087, 'ORS', '', 'ORS', '0', '0', '1000', '7500', 'BIOGEN PHARMA LTD', 0, 1, 0, '2023-12-31', 'ORS', 'ORS', '1', 'credit', '2023-11-14', NULL, '7500', NULL, 1, 'NON CONSUMABLE', 'Obsolete', '654444', NULL, 0),
(2088, 'ARTESUN30MG', 'ARTESUN 30MG', 'ARTESUN30MG', '0', '0', '5000', '4200', 'BIOGEN PHARMA LTD', 0, 1, 0, '2023-12-31', 'ARTESUN30MG', 'ARTESUN30MG', '1', 'credit', '2023-11-14', NULL, '4200', 'D876', 1, 'ANTI-MALARIAL', 'Obsolete', 'ER4ER', NULL, 0),
(2089, 'ORACUREGEL', 'ORACURE GEL', 'ORACUREGEL', '0', '0', '16000', '12200', 'BIOGEN PHARMA LTD', 0, 1, 0, '2023-12-31', 'ORACUREGEL', 'ORACUREGEL', '1', 'credit', '2023-11-14', NULL, '12200', 'D876', 1, 'ANTI FUNGAL', 'Obsolete', '53454', NULL, 0),
(2090, 'ERYTHROMYCIN250MGTABS', 'ERYTHROMYCIN 250MG TABS', 'ERYTHROMYCIN250MGTABS', '0', '0', '200', '100', 'BIOGEN PHARMA LTD', 0, 50, 0, '2023-12-31', 'ERYTHROMYCIN250MGTABS', 'ERYTHROMYCIN250MGTABS', '50', 'credit', '2023-11-14', NULL, '5000', 'D876', 50, 'ANTIBIOTICS', 'Obsolete', 'FEWTRR', NULL, 0),
(2091, 'ORAXIN SYRUP BIG', 'ORAXIN SYRUP BIG', 'ORAXIN SYRUP BIG', '0', '0', '10000', '10000', 'None', 0, 0, 0, '', 'ORAXIN SYRUP BIG', 'ORAXIN SYRUP BIG', '0', 'NA', '11/20/23', NULL, '0', 'D876', 0, 'NA', 'Active', '', 'Consumable', 0),
(2092, 'ORAXIN SYRUP SMALL', 'ORAXIN SYRUP SMALL', 'ORAXIN SYRUP SMALL', '0', '0', '6000', '6000', 'None', 0, 0, 0, '', 'ORAXIN SYRUP SMALL', 'ORAXIN SYRUP SMALL', '0', 'Syrup', '11/20/23', NULL, '0', 'D876', 0, 'NA', 'Active', '', 'Consumable', 0),
(2093, 'NETAZOX 500MG TABS', 'NETAZOX 500MG TABS', 'NETAZOX 500MG TABS', '0', '0', '2000', '2000', 'None', 0, 0, 0, '', 'NETAZOX 500MG TABS', 'NETAZOX 500MG TABS', '0', 'Tabs', '11/20/23', NULL, '0', 'D876', 0, 'NA', 'Active', '', 'Consumable', 0),
(2094, 'NETAZOX 500MG TABS', 'NETAZOX 500MG TABS', 'NETAZOX 500MG TABS', '0', '0', '2000', '1500', 'BIOGEN PHARMA LTD', 0, 10, 0, '2024-12-30', 'NETAZOX 500MG TABS', 'NETAZOX 500MG TABS', '10', 'credit', '2023-11-14', NULL, '15000', 'D876', 10, 'NA', 'Active', '5TTYU', NULL, 0),
(2095, 'METFORMINDENK500MG', 'METFORMIN DENK 500MG', 'METFORMINDENK500MG', '0', '0', '400', '240', 'BIOGEN PHARMA LTD', 0, 50, 0, '2023-12-31', 'METFORMINDENK500MG', 'METFORMINDENK500MG', '50', 'credit', '2023-11-14', NULL, '12000', 'D876', 50, 'ANTI HYPOGLYCEMIC', 'Obsolete', 'TYUYH', NULL, 0),
(2096, 'ORAXIN SYRUP BIG', 'ORAXIN SYRUP BIG', 'ORAXIN SYRUP BIG', '0', '0', '10000', '7500', 'BIOGEN PHARMA LTD', 0, 2, 0, '2023-12-31', 'ORAXIN SYRUP BIG', 'ORAXIN SYRUP BIG', '1', 'credit', '2023-11-14', NULL, '15000', 'D876', 2, 'NA', 'Active', 'Y8UJHU', NULL, 0),
(2097, 'APFLUESYRUP', 'APFLUE SYRUP', 'APFLUESYRUP', '0', '0', '5000', '3700', 'BIOGEN PHARMA LTD', 0, 2, 0, '2023-12-31', 'APFLUESYRUP', 'APFLUESYRUP', '2', 'credit', '2023-11-12', NULL, '7400', 'D876', 2, 'ANTI COUGH', 'Obsolete', '564654', NULL, 0),
(2098, 'CONTUSPAEDIACTRICLINCTUS', 'CONTUS PAEDIACTRIC LINCTUS', 'CONTUSPAEDIACTRICLINCTUS', '0', '0', '7000', '4500', 'BIOGEN PHARMA LTD', 0, 2, 0, '2023-12-31', 'CONTUSPAEDIACTRICLINCTUS', 'CONTUSPAEDIACTRICLINCTUS', '2', 'credit', '2023-11-12', NULL, '9000', 'D876', 2, 'ANTI COUGH', 'Obsolete', 'EWQEWQR', NULL, 0),
(2099, 'NAT B', 'NAT B', 'NAT B', '0', '0', '1000', '550', 'BIOGEN PHARMA LTD', 0, 30, 0, '2023-12-31', 'NAT B', 'NAT B', '30', 'credit', '2023-11-12', NULL, '16500', 'D876', 30, 'Multivitamins', 'Obsolete', '78TYUU', NULL, 0),
(2100, 'PARACETAMOLI.VINDIA', 'PARACETAMOL I.V INDIA', 'PARACETAMOLI.VINDIA', '0', '0', '10000', '3200', 'BIOGEN PHARMA LTD', 0, 2, 0, '2023-12-31', 'PARACETAMOLI.VINDIA', 'PARACETAMOLI.VINDIA', '2', 'credit', '2023-11-12', NULL, '6400', 'D876', 2, 'PainKIller', 'Obsolete', '75675', NULL, 0),
(2101, 'MEDIVINSCREAM', '', 'MEDIVINSCREAM', '0', '0', '10000', '8000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2023-12-31', 'MEDIVINSCREAM', 'MEDIVINSCREAM', '1', 'credit', '2023-11-12', NULL, '8000', NULL, 1, 'ANTI FUNGAL', 'Obsolete', '543645', NULL, 0),
(2102, 'CALCIVITA', '', 'CALCIVITA', '0', '0', '500', '550', 'BIOGEN PHARMA LTD', 0, 30, 0, '2023-12-31', 'CALCIVITA', 'CALCIVITA', '30', 'credit', '2023-11-12', NULL, '16500', NULL, 30, 'MULTIMINERALS', 'Obsolete', '64565', NULL, 0),
(2103, 'EXAMINATIONGLOVES', 'EXAMINATION GLOVES', 'EXAMINATIONGLOVES', '0', '0', '1000', '11000', 'BIOGEN PHARMA LTD', 0, 1, 0, '2023-12-31', 'EXAMINATIONGLOVES', 'EXAMINATIONGLOVES', '1', 'credit', '2023-11-12', NULL, '11000', 'D876', 1, 'NON CONSUMABLE', 'Obsolete', '56T7', NULL, 0),
(2104, 'ETORICOXIB(BRUTAFLAM)90MG', 'ETORICOXIB(BRUTAFLAM) 90MG', 'ETORICOXIB(BRUTAFLAM)90MG', '0', '0', '1500', '850', 'BIOGEN PHARMA LTD', 0, 30, 0, '2023-12-31', 'ETORICOXIB(BRUTAFLAM)90MG', 'ETORICOXIB(BRUTAFLAM)90MG', '30', 'credit', '2023-11-12', NULL, '25500', 'D876', 30, 'PainKIller', 'Obsolete', '8HUIJ8U', NULL, 0),
(2105, 'AMOXYCLAV625MG(BACTOCLAV)TABS', 'AMOXYCLAV 625MG (BACTOCLAV) TABS', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '0', '0', '2000', '450', 'BIOGEN PHARMA LTD', 0, 20, 0, '2023-12-31', 'AMOXYCLAV625MG(BACTOCLAV)TABS', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '20', 'credit', '2023-11-12', NULL, '9000', 'D876', 20, 'ANTIBIOTICS', 'Obsolete', '76YGU', NULL, 0),
(2106, '5MLSYRINGE', '5ML SYRINGE', '5MLSYRINGE', '0', '0', '300', '170', 'BIOGEN PHARMA LTD', 0, 30, 0, '2023-12-31', '5MLSYRINGE', '5MLSYRINGE', '30', 'credit', '2023-11-12', NULL, '5100', 'D876', 30, 'NON CONSUMABLE', 'Obsolete', 'TT768', NULL, 0),
(2107, '2MLSYRINGE', '2ML SYRINGE', '2MLSYRINGE', '0', '0', '300', '170', 'BIOGEN PHARMA LTD', 0, 30, 0, '2023-12-31', '2MLSYRINGE', '2MLSYRINGE', '30', 'credit', '2023-11-12', NULL, '5100', 'D876', 30, 'NON CONSUMABLE', 'Obsolete', '657T8', NULL, 0),
(2108, 'APIDONESYRUP100MLS', 'APIDONE SYRUP 100MLS', 'APIDONESYRUP100MLS', '0', '0', '20000', '18000', 'BIOGEN PHARMA LTD', 0, 2, 0, '2023-12-31', 'APIDONESYRUP100MLS', 'APIDONESYRUP100MLS', '2', 'credit', '2023-11-12', NULL, '36000', 'D876', 2, 'ANTI COUGH', 'Obsolete', '78T78', NULL, 0),
(2109, 'RL', 'RL', 'RL', '0', '0', '3000', '1900', 'BIOGEN PHARMA LTD', 0, 3, 0, '2023-12-23', 'RL', 'RL', '3', 'credit', '2023-11-12', NULL, '5700', 'D876', 3, 'NA', 'Obsolete', '67IUYJ', NULL, 0),
(2110, 'ZINCTABS', 'ZINC TABS', 'ZINCTABS', '0', '0', '200', '58', 'BIOGEN PHARMA LTD', 0, 50, 0, '2023-12-31', 'ZINCTABS', 'ZINCTABS', '50', 'credit', '2023-11-12', NULL, '1750', 'D876', 50, 'MULTIMINERALS', 'Obsolete', '546YTG', NULL, 0),
(2111, 'IBUMOLTABS', 'IBUMOL TABS', 'IBUMOLTABS', '0', '0', '300', '180', 'BIOGEN PHARMA LTD', 0, 30, 0, '2023-12-31', 'IBUMOLTABS', 'IBUMOLTABS', '30', 'credit', '2023-11-12', NULL, '5400', 'D876', 30, 'PainKIller', 'Obsolete', '65R768', NULL, 0),
(2112, 'AMLODIPINE(AMLODAC)5MG', '', 'AMLODIPINE(AMLODAC)5MG', '0', '0', '800', '200', 'BIOGEN PHARMA LTD', 0, 30, 0, '2023-12-31', 'AMLODIPINE(AMLODAC)5MG', 'AMLODIPINE(AMLODAC)5MG', '30', 'credit', '2023-11-12', NULL, '6000', NULL, 30, 'ANTI HYPERTENSIVE', 'Obsolete', '65T78Y', NULL, 0),
(2113, 'AMOXYCILIN500MGCAPS', 'AMOXYCILIN 500MG CAPS', 'AMOXYCILIN500MGCAPS', '0', '0', '500', '130', 'BIOGEN PHARMA LTD', 0, 50, 0, '2023-12-31', 'AMOXYCILIN500MGCAPS', 'AMOXYCILIN500MGCAPS', '50', 'credit', '2023-11-12', NULL, '6500', 'D876', 50, 'ANTIBIOTICS', 'Obsolete', 'R6678', NULL, 0),
(2114, 'DAPSON (B6) 100MG TABS', 'DAPSON (B6) 100MG TABS', 'DAPSON (B6) 100MG TABS', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'DAPSON (B6) 100MG TABS', 'DAPSON (B6) 100MG TABS', '0', 'Tabs', '11/21/23', NULL, '0', 'D876', 0, 'Vitamins', 'Active', '', 'Consumable', 0),
(2115, 'METHYLDOPA250MG(HYDOPA)', '', 'METHYLDOPA250MG(HYDOPA)', '0', '0', '300', '400', 'BIOGEN PHARMA LTD', 0, 80, 0, '2023-11-28', 'METHYLDOPA250MG(HYDOPA)', 'METHYLDOPA250MG(HYDOPA)', '80.00', 'credit', '2023-11-28', NULL, '32000.00', NULL, 80, 'ANTI HYPERTENSIVE', 'Active', 'b98kujg', NULL, 0),
(2116, 'CANNULAYELLOWI.V24G', '', 'CANNULAYELLOWI.V24G', '0', '0', '1000', '200', 'BIOGEN PHARMA LTD', 0, 4, 0, '2024-11-28', 'CANNULAYELLOWI.V24G', 'CANNULAYELLOWI.V24G', '4.00', 'credit', '2023-11-28', NULL, '800', NULL, 4, 'NON CONSUMABLE', 'Active', 'bnh7854', NULL, 0),
(2117, 'MICROGYNON', '', 'MICROGYNON', '0', '0', '5000', '483', 'BIOGEN PHARMA LTD', 0, 30, 0, '2024-11-28', 'MICROGYNON', 'MICROGYNON', '30', 'cash', '2023-11-28', NULL, '14500', NULL, 30, 'HORMONAL PILLS', 'Active', 'BH92399', NULL, 0),
(2118, 'G-CEFTRIA1GM', '', 'G-CEFTRIA1GM', '0', '0', '5000', '2500', 'BIOGEN PHARMA LTD', 0, 5, 0, '2025-11-28', 'G-CEFTRIA1GM', 'G-CEFTRIA1GM', '5', 'cash', '2023-11-28', NULL, '12500.00', NULL, 5, 'ANTIBIOTICS', 'Active', 'BHkd0093', NULL, 0),
(2119, 'METRONIDAZOLE200MG', '', 'METRONIDAZOLE200MG', '0', '0', '50', '22', 'BIOGEN PHARMA LTD', 0, 200, 0, '2024-12-08', 'METRONIDAZOLE200MG', 'METRONIDAZOLE200MG', '0', 'credit', '2023-11-25', NULL, '4400.00', NULL, 200, 'ANTIBIOTICS', 'Active', 'BN932', NULL, 0),
(2120, 'MAGNESIUMTABS', '', 'MAGNESIUMTABS', '0', '0', '50', '22', 'BIOGEN PHARMA LTD', 0, 200, 0, '2024-12-04', 'MAGNESIUMTABS', 'MAGNESIUMTABS', '100', 'credit', '2023-11-25', NULL, '4400.00', NULL, 200, 'PPI', 'Active', 'BH09ksdq', NULL, 0),
(2121, 'ARTEFAN20/120MG', '', 'ARTEFAN20/120MG', '0', '0', '4000', '2300', 'BIOGEN PHARMA LTD', 0, 3, 0, '2024-11-27', 'ARTEFAN20/120MG', 'ARTEFAN20/120MG', '3', 'credit', '2023-11-25', NULL, '6900.00', NULL, 3, 'ANTI-MALARIAL', 'Active', 'BHJ9321', NULL, 0),
(2122, 'HCGSTRIP', '', 'HCGSTRIP', '0', '0', '2000', '150', 'BIOGEN PHARMA LTD', 0, 25, 0, '2024-11-13', 'HCGSTRIP', 'HCGSTRIP', '10', 'credit', '2023-11-25', NULL, '3750.00', NULL, 25, 'NON CONSUMABLE', 'Active', 'BER9823', NULL, 0),
(2123, 'GLIMEPRIDE(EUGLIME)4MG', '', 'GLIMEPRIDE(EUGLIME)4MG', '0', '0', '1500', '335', 'BIOGEN PHARMA LTD', 0, 100, 0, '2025-11-14', 'GLIMEPRIDE(EUGLIME)4MG', 'GLIMEPRIDE(EUGLIME)4MG', '100', 'credit', '2023-11-25', NULL, '33500.00', NULL, 100, 'ANTI DIABETICS', 'Active', 'BRP93212', NULL, 0),
(2124, 'ALKA5SYRUP', '', 'ALKA5SYRUP', '0', '0', '5000', '2900', 'BIOGEN PHARMA LTD', 0, 2, 0, '2024-11-29', 'ALKA5SYRUP', 'ALKA5SYRUP', '0', 'credit', '2023-11-25', NULL, '5800.00', NULL, 2, 'NON CONSUMABLE', 'Active', 'BTY902', NULL, 0),
(2125, 'PROBETANEYE/EARDROP', '', 'PROBETANEYE/EARDROP', '0', '0', '5000', '3400', 'whitestar', 0, 2, 0, '2024-12-30', 'PROBETANEYE/EARDROP', 'PROBETANEYE/EARDROP', '-2', 'credit', '2023-12-05', NULL, '6800', NULL, 2, 'NON CONSUMABLE', 'Active', '686i67', NULL, 0);
INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(2126, 'CANDIDERMCREAM', '', 'CANDIDERMCREAM', '0', '0', '6000', '4800', 'whitestar', 0, 2, 0, '2024-11-23', 'CANDIDERMCREAM', 'CANDIDERMCREAM', '-2', 'credit', '2023-12-05', NULL, '9600', NULL, 2, 'ANTI FUNGAL', 'Active', 'ft65u6', NULL, 0),
(2127, 'SKDERM30GM', '', 'SKDERM30GM', '0', '0', '6000', '3300', 'whitestar', 0, 2, 0, '2024-11-30', 'SKDERM30GM', 'SKDERM30GM', '0', 'credit', '2023-12-05', NULL, '6600.00', NULL, 2, 'NON CONSUMABLE', 'Active', '567865', NULL, 0),
(2128, 'CURAMOLPLUS', '', 'CURAMOLPLUS', '0', '0', '500', '110', 'whitestar', 0, 50, 0, '2025-11-30', 'CURAMOLPLUS', 'CURAMOLPLUS', '10', 'credit', '2023-12-05', NULL, '5500', NULL, 50, 'PainKIller', 'Active', 'kityt7', NULL, 0),
(2129, 'PANADOLEXTRA', '', 'PANADOLEXTRA', '0', '0', '250', '188', 'whitestar', 0, 200, 0, '2025-11-30', 'PANADOLEXTRA', 'PANADOLEXTRA', '0', 'credit', '2023-12-05', NULL, '37600.00', NULL, 200, 'PainKIller', 'Active', 'yh7887', NULL, 0),
(2130, 'HEDEXTABS', '', 'HEDEXTABS', '0', '0', '200', '125', 'whitestar', 0, 50, 0, '2024-11-30', 'HEDEXTABS', 'HEDEXTABS', '-10', 'credit', '2023-12-05', NULL, '6250', NULL, 50, 'PainKIller', 'Active', '765ut', NULL, 0),
(2131, 'PARACETAMOL500MG', '', 'PARACETAMOL500MG', '0', '0', '50', '17', 'whitestar', 0, 500, 0, '2024-11-30', 'PARACETAMOL500MG', 'PARACETAMOL500MG', '300', 'credit', '2023-12-05', NULL, '8500.00', NULL, 500, 'PainKIller', 'Active', '879i78o', NULL, 0),
(2132, 'ARTEFAN20/120MG', '', 'ARTEFAN20/120MG', '0', '0', '4000', '2300', 'whitestar', 0, 5, 0, '2024-12-30', 'ARTEFAN20/120MG', 'ARTEFAN20/120MG', '1', 'credit', '2023-12-05', NULL, '11500.00', NULL, 5, 'ANTI-MALARIAL', 'Active', 'kjhkhj', NULL, 0),
(2133, 'FLUCAPS', '', 'FLUCAPS', '0', '0', '200', '110', 'whitestar', 0, 50, 0, '2025-12-30', 'FLUCAPS', 'FLUCAPS', '10', 'credit', '2023-12-05', NULL, '5500', NULL, 50, 'ANTI COUGH', 'Active', '8ouioi', NULL, 0),
(2134, 'DYNAPERTABS', '', 'DYNAPERTABS', '0', '0', '200', '110', 'whitestar', 0, 50, 0, '2024-11-30', 'DYNAPERTABS', 'DYNAPERTABS', '10', 'credit', '2023-12-05', NULL, '5500.00', NULL, 50, 'PainKIller', 'Active', 'iutyiku', NULL, 0),
(2135, 'ASCORILSYRUP200ML', '', 'ASCORILSYRUP200ML', '0', '0', '15000', '10500', 'whitestar', 0, 1, 0, '2024-11-30', 'ASCORILSYRUP200ML', 'ASCORILSYRUP200ML', '-1', 'credit', '2023-12-05', NULL, '10500.00', NULL, 1, 'ANTI COUGH', 'Active', 'utiytui', NULL, 0),
(2136, 'AMPICLOX 500MG CAPS', 'AMPICLOX 500MG CAPS', 'AMPICLOX 500MG CAPS', '0', '0', '200', '70', 'whitestar', 0, 50, 0, '2024-11-30', 'AMPICLOX 500MG CAPS', 'AMPICLOX 500MG CAPS', '50', 'credit', '2023-12-05', NULL, '3500.00', 'D876', 50, 'Antibiotics', 'Active', 'jkiyi', NULL, 0),
(2137, 'AMOXIKID125MGTABS', '', 'AMOXIKID125MGTABS', '0', '0', '100', '55', 'whitestar', 0, 100, 0, '2024-11-30', 'AMOXIKID125MGTABS', 'AMOXIKID125MGTABS', '30', 'credit', '2023-12-05', NULL, '5500.00', NULL, 100, 'ANTIBIOTICS', 'Active', 'eyteyt', NULL, 0),
(2138, 'SEPTRIN960', '', 'SEPTRIN960', '0', '0', '200', '90', 'whitestar', 0, 50, 0, '2024-11-30', 'SEPTRIN960', 'SEPTRIN960', '50', 'credit', '2023-12-05', NULL, '4500.00', NULL, 50, 'ANTIBIOTICS', 'Active', '867iu7', NULL, 0),
(2139, 'CEFIXIME400MG(CEFWELL)', '', 'CEFIXIME400MG(CEFWELL)', '0', '0', '1500', '90', 'whitestar', 0, 10, 0, '2025-11-30', 'CEFIXIME400MG(CEFWELL)', 'CEFIXIME400MG(CEFWELL)', '0', 'credit', '2023-12-05', NULL, '900.00', NULL, 10, 'ANTIBIOTICS', 'Active', 'ouiouo', NULL, 0),
(2140, 'PREDNISOLINETABSINDIA', '', 'PREDNISOLINETABSINDIA', '0', '0', '50', '23', 'whitestar', 0, 500, 0, '2025-11-30', 'PREDNISOLINETABSINDIA', 'PREDNISOLINETABSINDIA', '300', 'credit', '2023-12-05', NULL, '11500.00', NULL, 500, 'NON CONSUMABLE', 'Active', 'yjhuty', NULL, 0),
(2141, 'LEVOFLOXACIN500MG(LEVIN)', '', 'LEVOFLOXACIN500MG(LEVIN)', '0', '0', '1500', '250', 'whitestar', 0, 10, 0, '2024-11-30', 'LEVOFLOXACIN500MG(LEVIN)', 'LEVOFLOXACIN500MG(LEVIN)', '-10', 'credit', '2023-12-05', NULL, '2500.00', NULL, 10, 'ANTIBIOTICS', 'Active', '8u678', NULL, 0),
(2142, 'ASPIRIN (ECORIN) 75MG TABS', 'ASPIRIN (ECORIN) 75MG TABS', 'ASPIRIN (ECORIN) 75MG TABS', '0', '0', '300', '13', 'whitestar', 0, 200, 0, '2023-11-30', 'ASPIRIN (ECORIN) 75MG TABS', 'ASPIRIN (ECORIN) 75MG TABS', '100', 'credit', '2023-12-05', NULL, '2600.00', 'D876', 200, 'Anti-hypertensive', 'Active', 'tertger', NULL, 0),
(2143, 'IBUPFOFEN200MGTABS', '', 'IBUPFOFEN200MGTABS', '0', '0', '50', '580', 'whitestar', 0, 30, 0, '2025-11-30', 'IBUPFOFEN200MGTABS', 'IBUPFOFEN200MGTABS', '10', 'credit', '2023-12-05', NULL, '17400.00', NULL, 30, 'PainKIller', 'Active', '6t454', NULL, 0),
(2144, 'DEXAMETHASONE0.5MGTABS', '', 'DEXAMETHASONE0.5MGTABS', '0', '0', '50', '20', 'whitestar', 0, 300, 0, '2024-11-30', 'DEXAMETHASONE0.5MGTABS', 'DEXAMETHASONE0.5MGTABS', '100', 'credit', '2023-12-05', NULL, '6000.00', NULL, 300, 'NON CONSUMABLE', 'Active', 'rrr', NULL, 0),
(2145, 'MAGNESIUMTABS', '', 'MAGNESIUMTABS', '0', '0', '50', '18', 'whitestar', 0, 200, 0, '2024-11-30', 'MAGNESIUMTABS', 'MAGNESIUMTABS', '0', 'credit', '2023-12-05', NULL, '3600.00', NULL, 200, 'PPI', 'Active', 'yrtuytr', NULL, 0),
(2146, 'VITAMINCTABS', '', 'VITAMINCTABS', '0', '0', '100', '18', 'whitestar', 0, 200, 0, '2024-11-30', 'VITAMINCTABS', 'VITAMINCTABS', '0', 'credit', '2023-12-05', NULL, '3600.00', NULL, 200, 'VITAMINS', 'Active', 'ytuutyu', NULL, 0),
(2147, 'ACTION', '', 'ACTION', '0', '0', '500', '110', 'whitestar', 0, 50, 0, '2025-11-30', 'ACTION', 'ACTION', '10', 'credit', '2023-12-05', NULL, '5500.00', NULL, 50, 'PainKIller', 'Active', '8u568', NULL, 0),
(2148, 'KISSCONDOMSTRABERRY', '', 'KISSCONDOMSTRABERRY', '0', '0', '2000', '62', 'whitestar', 0, 12, 0, '2024-11-30', 'KISSCONDOMSTRABERRY', 'KISSCONDOMSTRABERRY', '8', 'credit', '2023-12-05', NULL, '750', NULL, 12, 'NON CONSUMABLE', 'Active', 'tutyu', NULL, 0),
(2149, 'EXTRADOL', '', 'EXTRADOL', '0', '0', '500', '110', 'whitestar', 0, 50, 0, '2025-11-30', 'EXTRADOL', 'EXTRADOL', '10', 'credit', '2023-12-05', NULL, '5500.00', NULL, 50, 'PainKIller', 'Active', 'uut', NULL, 0),
(2150, 'KISSCONDOMSTUNDED', '', 'KISSCONDOMSTUNDED', '0', '0', '2000', '750', 'whitestar', 0, 10, 0, '2025-11-30', 'KISSCONDOMSTUNDED', 'KISSCONDOMSTUNDED', '6', 'credit', '2023-12-05', NULL, '7500.00', NULL, 10, 'NON CONSUMABLE', 'Active', '867', NULL, 0),
(2151, 'OMEPRAZOLE20MG(OCID|)', '', 'OMEPRAZOLE20MG(OCID|)', '0', '0', '100', '40', 'whitestar', 0, 200, 0, '2024-11-30', 'OMEPRAZOLE20MG(OCID|)', 'OMEPRAZOLE20MG(OCID|)', '180', 'credit', '2023-12-05', NULL, '8000.00', NULL, 200, 'PPI', 'Active', 'ty54', NULL, 0),
(2152, 'COLDEASECAPS', '', 'COLDEASECAPS', '0', '0', '500', '120', 'whitestar', 0, 50, 0, '2025-11-30', 'COLDEASECAPS', 'COLDEASECAPS', '30', 'credit', '2023-12-05', NULL, '6000', NULL, 50, 'ANTI COUGH', 'Active', '6000', NULL, 0),
(2153, 'COLDCAP', '', 'COLDCAP', '0', '0', '200', '105', 'whitestar', 0, 40, 0, '2024-11-30', 'COLDCAP', 'COLDCAP', '20', 'credit', '2023-12-05', NULL, '4200', NULL, 40, 'ANTI COUGH', 'Active', 'ty4rh', NULL, 0),
(2154, 'SEPTRIN480', '', 'SEPTRIN480', '0', '0', '100', '42', 'whitestar', 0, 100, 0, '2024-11-30', 'SEPTRIN480', 'SEPTRIN480', '-20', 'credit', '2023-12-05', NULL, '4200.00', NULL, 100, 'ANTIBIOTICS', 'Active', '7y6u56', NULL, 0),
(2155, 'DELEASEDDRYSYRUP', '', 'DELEASEDDRYSYRUP', '0', '0', '5000', '3200', 'whitestar', 0, 1, 0, '2024-11-30', 'DELEASEDDRYSYRUP', 'DELEASEDDRYSYRUP', '1', 'credit', '2023-12-05', NULL, '3200.00', NULL, 1, 'ANTI COUGH', 'Active', '765756', NULL, 0),
(2156, 'CONTUSPAEDIACTRICLINCTUS', '', 'CONTUSPAEDIACTRICLINCTUS', '0', '0', '7000', '4500', 'whitestar', 0, 2, 0, '2024-11-30', 'CONTUSPAEDIACTRICLINCTUS', 'CONTUSPAEDIACTRICLINCTUS', '0', 'credit', '2023-12-05', NULL, '9000.00', NULL, 2, 'ANTI COUGH', 'Active', 't645', NULL, 0),
(2157, 'DELEASEDPAEDSYRUP', '', 'DELEASEDPAEDSYRUP', '0', '0', '5000', '3700', 'whitestar', 0, 2, 0, '2024-11-30', 'DELEASEDPAEDSYRUP', 'DELEASEDPAEDSYRUP', '-2', 'credit', '2023-12-05', NULL, '7400.00', NULL, 2, 'ANTI COUGH', 'Active', '7765u', NULL, 0),
(2158, 'CONTUSDROP', '', 'CONTUSDROP', '0', '0', '7000', '4500', 'whitestar', 0, 2, 0, '2024-11-30', 'CONTUSDROP', 'CONTUSDROP', '-2', 'credit', '2023-12-05', NULL, '9000.00', NULL, 2, 'NON CONSUMABLE', 'Active', 'ytrtry', NULL, 0),
(2159, 'ZAHA500MG', '', 'ZAHA500MG', '0', '0', '6000', '1466', 'whitestar', 0, 9, 0, '2024-11-30', 'ZAHA500MG', 'ZAHA500MG', '9', 'credit', '2023-12-09', NULL, '13200', NULL, 9, 'ANTIBIOTICS', 'Active', '7657y56', NULL, 0),
(2160, 'ALKA5SYRUP', '', 'ALKA5SYRUP', '0', '0', '5000', '3500', 'whitestar', 0, 2, 0, '2024-11-30', 'ALKA5SYRUP', 'ALKA5SYRUP', '2', 'credit', '2023-12-09', NULL, '7000.00', NULL, 2, 'NON CONSUMABLE', 'Active', '7465', NULL, 0),
(2161, 'DELEASEDDRYSYRUP', '', 'DELEASEDDRYSYRUP', '0', '0', '5000', '3800', 'whitestar', 0, 2, 0, '2024-11-30', 'DELEASEDDRYSYRUP', 'DELEASEDDRYSYRUP', '0', 'credit', '2023-12-09', NULL, '7600.00', NULL, 2, 'ANTI COUGH', 'Active', 't54tg', NULL, 0),
(2162, 'PANADOLADVANCE', '', 'PANADOLADVANCE', '0', '0', '200', '158', 'whitestar', 0, 200, 0, '2024-12-30', 'PANADOLADVANCE', 'PANADOLADVANCE', '100', 'credit', '2023-12-09', NULL, '31600.00', NULL, 200, 'PainKIller', 'Active', 'treg', NULL, 0),
(2163, 'ARTESUN120MG', '', 'ARTESUN120MG', '0', '0', '15000', '10000', 'whitestar', 0, 5, 0, '2024-12-30', 'ARTESUN120MG', 'ARTESUN120MG', '2', 'credit', '2023-12-09', NULL, '50000.00', NULL, 5, 'ANTI-MALARIAL', 'Active', 'y', NULL, 0),
(2164, 'ARTESUN60MG', '', 'ARTESUN60MG', '0', '0', '7000', '6200', 'whitestar', 0, 5, 0, '2024-12-30', 'ARTESUN60MG', 'ARTESUN60MG', '4', 'credit', '2023-12-09', NULL, '31000.00', NULL, 5, 'ANTI-MALARIAL', 'Active', 'q', NULL, 0),
(2165, 'AMOXYCLAV625MG(BACTOCLAV)TABS', '', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '0', '0', '2000', '450', 'whitestar', 0, 40, 0, '2024-12-30', 'AMOXYCLAV625MG(BACTOCLAV)TABS', 'AMOXYCLAV625MG(BACTOCLAV)TABS', '40', 'credit', '2023-12-09', NULL, '18000.00', NULL, 40, 'ANTIBIOTICS', 'Active', 'o', NULL, 0),
(2166, 'D-ARTEPADULT', '', 'D-ARTEPADULT', '0', '0', '10000', '6500', 'whitestar', 0, 3, 0, '2024-12-30', 'D-ARTEPADULT', 'D-ARTEPADULT', '1', 'credit', '2023-12-09', NULL, '19500.00', NULL, 3, 'ANTI-MALARIAL', 'Active', '9099', NULL, 0),
(2167, 'CANNULAYELLOWI.V24G', '', 'CANNULAYELLOWI.V24G', '0', '0', '1000', '370', 'whitestar', 0, 20, 0, '2024-12-30', 'CANNULAYELLOWI.V24G', 'CANNULAYELLOWI.V24G', '20', 'credit', '2023-12-09', NULL, '7400.00', NULL, 20, 'NON CONSUMABLE', 'Active', '33', NULL, 0),
(2168, 'DYNAPERINJECTION', '', 'DYNAPERINJECTION', '0', '0', '2000', '1400', 'whitestar', 0, 5, 0, '2024-12-30', 'DYNAPERINJECTION', 'DYNAPERINJECTION', '5', 'credit', '2023-12-09', NULL, '7000.00', NULL, 5, 'PainKIller', 'Active', 'e', NULL, 0),
(2169, 'RELCERGEL200ML', '', 'RELCERGEL200ML', '0', '0', '13000', '7500', 'whitestar', 0, 2, 0, '2024-12-30', 'RELCERGEL200ML', 'RELCERGEL200ML', '2', 'credit', '2023-12-09', NULL, '15000.00', NULL, 2, 'ANTI-ULCERS', 'Active', '1', NULL, 0),
(2170, 'SUPIROCINOITMENT', '', 'SUPIROCINOITMENT', '0', '0', '15000', '13000', 'whitestar', 0, 1, 0, '2024-12-30', 'SUPIROCINOITMENT', 'SUPIROCINOITMENT', '0', 'credit', '2023-12-09', NULL, '13000.00', NULL, 1, 'ANTIBIOTICS', 'Active', '3', NULL, 0),
(2171, 'TRAP', '', 'TRAP', '0', '0', '400', '260', 'whitestar', 0, 20, 0, '2024-12-30', 'TRAP', 'TRAP', '20', 'credit', '2023-12-09', NULL, '5200', NULL, 20, 'MUSCLE RELAXANT', 'Active', '4', NULL, 0),
(2172, 'BLOODGIVINGSET', '', 'BLOODGIVINGSET', '0', '0', '3000', '1000', 'whitestar', 0, 3, 0, '2024-12-30', 'BLOODGIVINGSET', 'BLOODGIVINGSET', '0', 'credit', '2023-12-09', NULL, '3000.00', NULL, 3, 'NON CONSUMABLE', 'Active', '5', NULL, 0),
(2173, 'MONTICOPE5/10MG', '', 'MONTICOPE5/10MG', '0', '0', '1000', '410', 'whitestar', 0, 60, 0, '2024-12-30', 'MONTICOPE5/10MG', 'MONTICOPE5/10MG', '60', 'credit', '2023-12-09', NULL, '24600.00', NULL, 60, 'ANTI-ULCERS', 'Active', '6', NULL, 0),
(2174, 'METOCLOPROMIDE(PLASIL)10MGINJ', '', 'METOCLOPROMIDE(PLASIL)10MGINJ', '0', '0', '3000', '500', 'whitestar', 0, 5, 0, '2024-12-30', 'METOCLOPROMIDE(PLASIL)10MGINJ', 'METOCLOPROMIDE(PLASIL)10MGINJ', '3', 'credit', '2023-12-09', NULL, '2500.00', NULL, 5, 'ANTI MOTILITY', 'Active', '9', NULL, 0),
(2175, 'CETAMOL  60MLS', '', 'CETAMOL  60MLS', '0', '0', '5000', '2700', 'whitestar', 0, 1, 0, '2024-12-30', 'CETAMOL  60MLS', 'CETAMOL  60MLS', '0', 'credit', '2023-12-09', NULL, '2700.00', NULL, 1, 'Painkiller', 'Active', '8', NULL, 0),
(2176, 'CIPRO500MGINDIA', '', 'CIPRO500MGINDIA', '0', '0', '200', '100', 'whitestar', 0, 100, 0, '2024-12-30', 'CIPRO500MGINDIA', 'CIPRO500MGINDIA', '100', 'credit', '2023-12-09', NULL, '10000.00', NULL, 100, 'ANTIBIOTICS', 'Active', '2', NULL, 0),
(2177, 'FLUCAPS', '', 'FLUCAPS', '0', '0', '200', '275', 'whitestar', 0, 20, 0, '2024-12-30', 'FLUCAPS', 'FLUCAPS', '20', 'credit', '2023-12-09', NULL, '5500', NULL, 20, 'ANTI COUGH', 'Active', '545', NULL, 0),
(2178, 'CETRIZINE10MGINDIA', '', 'CETRIZINE10MGINDIA', '0', '0', '50', '60', 'whitestar', 0, 50, 0, '2024-12-30', 'CETRIZINE10MGINDIA', 'CETRIZINE10MGINDIA', '45', 'credit', '2023-12-09', NULL, '3000', NULL, 50, 'NON CONSUMABLE', 'Active', '5444444', NULL, 0),
(2179, 'CURAMOLPLUS', '', 'CURAMOLPLUS', '0', '0', '500', '120', 'whitestar', 0, 50, 0, '2024-12-30', 'CURAMOLPLUS', 'CURAMOLPLUS', '30', 'credit', '2023-12-09', NULL, '6000', NULL, 50, 'PainKIller', 'Active', 'ee', NULL, 0),
(2180, 'SKDERM15GM', '', 'SKDERM15GM', '0', '0', '4000', '2300', 'whitestar', 0, 4, 0, '2024-12-30', 'SKDERM15GM', 'SKDERM15GM', '2', 'credit', '2023-12-09', NULL, '9200.00', NULL, 4, 'NON CONSUMABLE', 'Active', 'rer', NULL, 0),
(2181, 'AMLO-DENK5MG', '', 'AMLO-DENK5MG', '0', '0', '1500', '750', 'Super Medic', 0, 50, 0, '2024-12-30', 'AMLO-DENK5MG', 'AMLO-DENK5MG', '50', 'credit', '2023-12-09', NULL, '37500', NULL, 50, 'ANTI HYPERTENSIVE', 'Active', '68y', NULL, 0),
(2182, 'FLUCAMOXCAPS500MG', '', 'FLUCAMOXCAPS500MG', '0', '0', '2000', '1300', 'Super Medic', 0, 16, 0, '2024-12-30', 'FLUCAMOXCAPS500MG', 'FLUCAMOXCAPS500MG', '16', 'credit', '2023-12-09', NULL, '20800', NULL, 16, 'ANTIBIOTICS', 'Active', 'gf', NULL, 0),
(2183, 'LIVOLIN', '', 'LIVOLIN', '0', '0', '1500', '950', 'Super Medic', 0, 30, 0, '2025-12-30', 'LIVOLIN', 'LIVOLIN', '30', 'credit', '2023-12-09', NULL, '28500', NULL, 30, 'MULTMINERALS', 'Active', 'f', NULL, 0),
(2184, 'BBC  SPRAY', 'BBC  SPRAY', 'BBC  SPRAY', '0', '0', '25000', '22000', 'Super Medic', 0, 1, 0, '2024-12-30', 'BBC  SPRAY', 'BBC  SPRAY', '1', 'credit', '2023-12-09', NULL, '22000', 'D876', 1, 'NA', 'Active', 'gg', NULL, 0),
(2185, 'DELEASEDDRYSYRUP', '', 'DELEASEDDRYSYRUP', '0', '0', '5000', '3800', 'Super Medic', 0, 1, 0, '2024-12-30', 'DELEASEDDRYSYRUP', 'DELEASEDDRYSYRUP', '1', 'credit', '2023-12-09', NULL, '3800.00', NULL, 1, 'ANTI COUGH', 'Active', 'ff', NULL, 0),
(2186, 'BISOPROLOL5MGUK', '', 'BISOPROLOL5MGUK', '0', '0', '1000', '300', 'Super Medic', 0, 28, 0, '2024-12-30', 'BISOPROLOL5MGUK', 'BISOPROLOL5MGUK', '28', 'credit', '2023-12-09', NULL, '8400', NULL, 28, 'ANTI HYPERTENSIVE', 'Active', '8400', NULL, 0),
(2187, 'NORMAGUT', '', 'NORMAGUT', '0', '0', '2500', '1900', 'Super Medic', 0, 15, 0, '2025-12-30', 'NORMAGUT', 'NORMAGUT', '15', 'credit', '2023-12-09', NULL, '28500', NULL, 15, 'Multivitamins', 'Active', 'UJYTGTYG', NULL, 0),
(2188, 'METRONIDAZOLE200MG', '', 'METRONIDAZOLE200MG', '0', '0', '50', '600', 'Guardian Pharmacy', 0, 20, 0, '2025-12-30', 'METRONIDAZOLE200MG', 'METRONIDAZOLE200MG', '20', 'credit', '2023-12-09', NULL, '12000.00', NULL, 20, 'ANTIBIOTICS', 'Active', '0UPPI', NULL, 0),
(2189, 'GRAMOCEFO400MG', '', 'GRAMOCEFO400MG', '0', '0', '4000', '48000', 'Guardian Pharmacy', 0, 10, 0, '2024-12-30', 'GRAMOCEFO400MG', 'GRAMOCEFO400MG', '10', 'credit', '2023-12-09', NULL, '480000.00', NULL, 10, 'ANTIBIOTICS', 'Active', '97U9', NULL, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_ret`
--

CREATE TABLE `purchases_ret` (
  `transaction_id` int(11) NOT NULL,
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
  `amt_paid` int(11) DEFAULT NULL,
  `tme` varchar(255) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `batch_no` varchar(266) DEFAULT NULL,
  `productid` varchar(266) DEFAULT NULL,
  `total` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL,
  `quantity` varchar(266) DEFAULT NULL,
  `exp_date` varchar(266) DEFAULT NULL,
  `suplier_id` varchar(266) DEFAULT NULL,
  `return_invoice` varchar(255) DEFAULT NULL,
  `med_name` varchar(255) DEFAULT NULL,
  `vouch_type` varchar(255) DEFAULT 'Purchases'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchases_ret`
--

INSERT INTO `purchases_ret` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `exp_date`, `suplier_id`, `return_invoice`, `med_name`, `vouch_type`) VALUES
(1, '6747', 'admin', NULL, 'credit', '3400.00', '3400', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:25', '2023-12-05', '686i67', '1775', '6800', 'credit', '2', '2024-12-30', '3', NULL, 'PROBETANEYE/EARDROP', 'Purchases'),
(2, '6747', 'admin', NULL, 'credit', '4800.00', '4800', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:26', '2023-12-05', 'ft65u6', '1845', '9600', 'credit', '2', '2024-11-23', '3', NULL, 'CANDIDERMCREAM', 'Purchases'),
(3, '6747', 'admin', NULL, 'credit', '3300', '3300', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:26', '2023-12-05', '567865', '1766', '6600.00', 'credit', '2', '2024-11-30', '3', NULL, 'SKDERM30GM', 'Purchases'),
(4, '6747', 'admin', NULL, 'credit', '110.00', '110', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:26', '2023-12-05', 'kityt7', '1832', '5500', 'credit', '50', '2025-11-30', '3', NULL, 'CURAMOLPLUS', 'Purchases'),
(5, '6747', 'admin', NULL, 'credit', '188', '188', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:26', '2023-12-05', 'yh7887', '1686', '37600.00', 'credit', '200', '2025-11-30', '3', NULL, 'PANADOLEXTRA', 'Purchases'),
(6, '6747', 'admin', NULL, 'credit', '125.00', '125', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:26', '2023-12-05', '765ut', '1811', '6250', 'credit', '50', '2024-11-30', '3', NULL, 'HEDEXTABS', 'Purchases'),
(7, '6747', 'admin', NULL, 'credit', '17', '17', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:26', '2023-12-05', '879i78o', '1687', '8500.00', 'credit', '500', '2024-11-30', '3', NULL, 'PARACETAMOL500MG', 'Purchases'),
(8, '6747', 'admin', NULL, 'credit', '2300', '2300', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:27', '2023-12-05', 'kjhkhj', '1722', '11500.00', 'credit', '5', '2024-12-30', '3', NULL, 'ARTEFAN20/120MG', 'Purchases'),
(9, '6747', 'admin', NULL, 'credit', '110.00', '110', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:27', '2023-12-05', '8ouioi', '1684', '5500', 'credit', '50', '2025-12-30', '3', NULL, 'FLUCAPS', 'Purchases'),
(10, '6747', 'admin', NULL, 'credit', '110', '110', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:27', '2023-12-05', 'iutyiku', '1691', '5500.00', 'credit', '50', '2024-11-30', '3', NULL, 'DYNAPERTABS', 'Purchases'),
(11, '6747', 'admin', NULL, 'credit', '10500', '10500', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:27', '2023-12-05', 'utiytui', '1745', '10500.00', 'credit', '1', '2024-11-30', '3', NULL, 'ASCORILSYRUP200ML', 'Purchases'),
(12, '6747', 'admin', NULL, 'credit', '70', '70', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:27', '2023-12-05', 'jkiyi', '331', '3500.00', 'credit', '50', '2024-11-30', '3', NULL, 'AMPICLOX 500MG CAPS', 'Purchases'),
(13, '6747', 'admin', NULL, 'credit', '55', '55', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:27', '2023-12-05', 'eyteyt', '1942', '5500.00', 'credit', '100', '2024-11-30', '3', NULL, 'AMOXIKID125MGTABS', 'Purchases'),
(14, '6747', 'admin', NULL, 'credit', '90', '90', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:27', '2023-12-05', '867iu7', '1720', '4500.00', 'credit', '50', '2024-11-30', '3', NULL, 'SEPTRIN960', 'Purchases'),
(15, '6747', 'admin', NULL, 'credit', '90', '90', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:27', '2023-12-05', 'ouiouo', '1746', '900.00', 'credit', '10', '2025-11-30', '3', NULL, 'CEFIXIME400MG(CEFWELL)', 'Purchases'),
(16, '6747', 'admin', NULL, 'credit', '23', '23', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:27', '2023-12-05', 'yjhuty', '1785', '11500.00', 'credit', '500', '2025-11-30', '3', NULL, 'PREDNISOLINETABSINDIA', 'Purchases'),
(17, '6747', 'admin', NULL, 'credit', '250', '250', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:27', '2023-12-05', '8u678', '1762', '2500.00', 'credit', '10', '2024-11-30', '3', NULL, 'LEVOFLOXACIN500MG(LEVIN)', 'Purchases'),
(18, '6747', 'admin', NULL, 'credit', '13', '13', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:28', '2023-12-05', 'tertger', '1997', '2600.00', 'credit', '200', '2023-11-30', '3', NULL, 'ASPIRIN (ECORIN) 75MG TABS', 'Purchases'),
(19, '6747', 'admin', NULL, 'credit', '580', '580', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:28', '2023-12-05', '6t454', '1926', '17400.00', 'credit', '30', '2025-11-30', '3', NULL, 'IBUPFOFEN200MGTABS', 'Purchases'),
(20, '6747', 'admin', NULL, 'credit', '20', '20', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:28', '2023-12-05', 'rrr', '1786', '6000.00', 'credit', '300', '2024-11-30', '3', NULL, 'DEXAMETHASONE0.5MGTABS', 'Purchases'),
(21, '6747', 'admin', NULL, 'credit', '18', '18', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:28', '2023-12-05', 'yrtuytr', '1792', '3600.00', 'credit', '200', '2024-11-30', '3', NULL, 'MAGNESIUMTABS', 'Purchases'),
(22, '6747', 'admin', NULL, 'credit', '18', '18', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:28', '2023-12-05', 'ytuutyu', '1683', '3600.00', 'credit', '200', '2024-11-30', '3', NULL, 'VITAMINCTABS', 'Purchases'),
(23, '6747', 'admin', NULL, 'credit', '110', '110', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:28', '2023-12-05', '8u568', '1809', '5500.00', 'credit', '50', '2025-11-30', '3', NULL, 'ACTION', 'Purchases'),
(24, '6747', 'admin', NULL, 'credit', '62.50', '62', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:28', '2023-12-05', 'tutyu', '1835', '750', 'credit', '12', '2024-11-30', '3', NULL, 'KISSCONDOMSTRABERRY', 'Purchases'),
(25, '6747', 'admin', NULL, 'credit', '110', '110', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:28', '2023-12-05', 'uut', '1833', '5500.00', 'credit', '50', '2025-11-30', '3', NULL, 'EXTRADOL', 'Purchases'),
(26, '6747', 'admin', NULL, 'credit', '750', '750', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:28', '2023-12-05', '867', '1836', '7500.00', 'credit', '10', '2025-11-30', '3', NULL, 'KISSCONDOMSTUNDED', 'Purchases'),
(27, '6747', 'admin', NULL, 'credit', '40', '40', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:28', '2023-12-05', 'ty54', '1736', '8000.00', 'credit', '200', '2024-11-30', '3', NULL, 'OMEPRAZOLE20MG(OCID|)', 'Purchases'),
(28, '6747', 'admin', NULL, 'credit', '120.00', '120', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:29', '2023-12-05', '6000', '1828', '6000', 'credit', '50', '2025-11-30', '3', NULL, 'COLDEASECAPS', 'Purchases'),
(29, '6747', 'admin', NULL, 'credit', '105.00', '105', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:29', '2023-12-05', 'ty4rh', '1961', '4200', 'credit', '40', '2024-11-30', '3', NULL, 'COLDCAP', 'Purchases'),
(30, '6747', 'admin', NULL, 'credit', '42', '42', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:29', '2023-12-05', '7y6u56', '1719', '4200.00', 'credit', '100', '2024-11-30', '3', NULL, 'SEPTRIN480', 'Purchases'),
(31, '6747', 'admin', NULL, 'credit', '3200', '3200', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:29', '2023-12-05', '765756', '1674', '3200.00', 'credit', '1', '2024-11-30', '3', NULL, 'DELEASEDDRYSYRUP', 'Purchases'),
(32, '6747', 'admin', NULL, 'credit', '4500', '4500', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:29', '2023-12-05', 't645', '1670', '9000.00', 'credit', '2', '2024-11-30', '3', NULL, 'CONTUSPAEDIACTRICLINCTUS', 'Purchases'),
(33, '6747', 'admin', NULL, 'credit', '3700', '3700', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:29', '2023-12-05', '7765u', '1675', '7400.00', 'credit', '2', '2024-11-30', '3', NULL, 'DELEASEDPAEDSYRUP', 'Purchases'),
(34, '6747', 'admin', NULL, 'credit', '4500', '4500', '2023-12-08', 'whitestar', '0', NULL, NULL, '21:24:29', '2023-12-05', 'ytrtry', '1849', '9000.00', 'credit', '2', '2024-11-30', '3', NULL, 'CONTUSDROP', 'Purchases'),
(35, '6949', 'admin', NULL, 'credit', '1466.67', '1466', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:20:59', '2023-12-09', '7657y56', '1665', '-4933.34', 'credit', '1', '2024-11-30', '3', NULL, 'ZAHA500MG', 'Purchases'),
(36, '6949', 'admin', NULL, 'credit', '3500', '3500', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:00', '2023-12-09', '7465', '1739', '-7000', 'credit', '0', '2024-11-30', '3', NULL, 'ALKA5SYRUP', 'Purchases'),
(37, '6949', 'admin', NULL, 'credit', '3800', '3800', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:00', '2023-12-09', 't54tg', '1674', '7600.00', 'credit', '2', '2024-11-30', '3', NULL, 'DELEASEDDRYSYRUP', 'Purchases'),
(38, '6949', 'admin', NULL, 'credit', '158', '158', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:00', '2023-12-09', 'treg', '1685', '31600.00', 'credit', '200', '2024-12-30', '3', NULL, 'PANADOLADVANCE', 'Purchases'),
(39, '6949', 'admin', NULL, 'credit', '10000', '10000', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:00', '2023-12-09', 'y', '1728', '0', 'credit', '4', '2024-12-30', '3', NULL, 'ARTESUN120MG', 'Purchases'),
(40, '6949', 'admin', NULL, 'credit', '6200', '6200', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:00', '2023-12-09', 'q', '1727', '31000.00', 'credit', '5', '2024-12-30', '3', NULL, 'ARTESUN60MG', 'Purchases'),
(41, '6949', 'admin', NULL, 'credit', '450', '450', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:00', '2023-12-09', 'o', '1705', '18000.00', 'credit', '40', '2024-12-30', '3', NULL, 'AMOXYCLAV625MG(BACTOCLAV)TABS', 'Purchases'),
(42, '6949', 'admin', NULL, 'credit', '6500', '6500', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:00', '2023-12-09', '9099', '1663', '19500.00', 'credit', '3', '2024-12-30', '3', NULL, 'D-ARTEPADULT', 'Purchases'),
(43, '6949', 'admin', NULL, 'credit', '370', '370', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:00', '2023-12-09', '33', '1702', '7400.00', 'credit', '20', '2024-12-30', '3', NULL, 'CANNULAYELLOWI.V24G', 'Purchases'),
(44, '6949', 'admin', NULL, 'credit', '1400', '1400', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:01', '2023-12-09', 'e', '1690', '7000.00', 'credit', '5', '2024-12-30', '3', NULL, 'DYNAPERINJECTION', 'Purchases'),
(45, '6949', 'admin', NULL, 'credit', '7500', '7500', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:01', '2023-12-09', '1', '1668', '15000.00', 'credit', '2', '2024-12-30', '3', NULL, 'RELCERGEL200ML', 'Purchases'),
(46, '6949', 'admin', NULL, 'credit', '13000', '13000', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:01', '2023-12-09', '3', '1729', '13000.00', 'credit', '1', '2024-12-30', '3', NULL, 'SUPIROCINOITMENT', 'Purchases'),
(47, '6949', 'admin', NULL, 'credit', '260.00', '260', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:01', '2023-12-09', '4', '1800', '5200', 'credit', '20', '2024-12-30', '3', NULL, 'TRAP', 'Purchases'),
(48, '6949', 'admin', NULL, 'credit', '3600', '3600', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:01', '2023-12-09', '4', '1849', '7200.00', 'credit', '2', '2025-12-30', '3', NULL, 'CONTUSDROP', 'Purchases'),
(49, '6949', 'admin', NULL, 'credit', '1000', '1000', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:01', '2023-12-09', '5', '1697', '3000.00', 'credit', '3', '2024-12-30', '3', NULL, 'BLOODGIVINGSET', 'Purchases'),
(50, '6949', 'admin', NULL, 'credit', '200', '200', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:01', '2023-12-09', '5', '1890', '6000.00', 'credit', '30', '2024-12-30', '3', NULL, 'AMLODIPINE(AMLODAC)5MG', 'Purchases'),
(51, '6949', 'admin', NULL, 'credit', '410', '410', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:01', '2023-12-09', '6', '1669', '24600.00', 'credit', '60', '2024-12-30', '3', NULL, 'MONTICOPE5/10MG', 'Purchases'),
(52, '6949', 'admin', NULL, 'credit', '500', '500', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:01', '2023-12-09', '9', '1689', '2500.00', 'credit', '5', '2024-12-30', '3', NULL, 'METOCLOPROMIDE(PLASIL)10MGINJ', 'Purchases'),
(53, '6949', 'admin', NULL, 'credit', '1300', '1300', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:01', '2023-12-09', '3', '1767', '2600.00', 'credit', '2', '2024-12-30', '3', NULL, 'CLOTRIMAZOLOECREAM(UNISTEN)', 'Purchases'),
(54, '6949', 'admin', NULL, 'credit', '2200', '2200', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '4', '1873', '2200.00', 'credit', '1', '2024-12-30', '3', NULL, 'NEOMYCINCREAM', 'Purchases'),
(55, '6949', 'admin', NULL, 'credit', '18000', '18000', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '4', '1661', '36000.00', 'credit', '2', '2024-12-30', '3', NULL, 'EPICEPHINE2GM', 'Purchases'),
(56, '6949', 'admin', NULL, 'credit', '4200', '4200', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '6', '1726', '21000.00', 'credit', '5', '2024-12-30', '3', NULL, 'ARTESUN30MG', 'Purchases'),
(57, '6949', 'admin', NULL, 'credit', '2700', '2700', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '8', '1972', '2700.00', 'credit', '1', '2024-12-30', '3', NULL, 'CETAMOL  60MLS', 'Purchases'),
(58, '6949', 'admin', NULL, 'credit', '100', '100', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '2', '1759', '10000.00', 'credit', '100', '2024-12-30', '3', NULL, 'CIPRO500MGINDIA', 'Purchases'),
(59, '6949', 'admin', NULL, 'credit', '22', '22', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '6', '1792', '4400.00', 'credit', '200', '2024-12-30', '3', NULL, 'MAGNESIUMTABS', 'Purchases'),
(60, '6949', 'admin', NULL, 'credit', '1700', '1700', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '8', '1802', '8500.00', 'credit', '5', '2024-12-30', '3', NULL, 'LYDIA', 'Purchases'),
(61, '6949', 'admin', NULL, 'credit', '2700', '2700', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '2', '1801', '13500.00', 'credit', '5', '2024-12-30', '3', NULL, 'BACKUP', 'Purchases'),
(62, '6949', 'admin', NULL, 'credit', '275.00', '275', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '545', '1684', '5500', 'credit', '20', '2024-12-30', '3', NULL, 'FLUCAPS', 'Purchases'),
(63, '6949', 'admin', NULL, 'credit', '60.00', '60', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '5444444', '1784', '3000', 'credit', '50', '2024-12-30', '3', NULL, 'CETRIZINE10MGINDIA', 'Purchases'),
(64, '6949', 'admin', NULL, 'credit', '110.00', '110', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:02', '2023-12-09', '3', '1811', '5500', 'credit', '50', '2024-12-30', '3', NULL, 'HEDEXTABS', 'Purchases'),
(65, '6949', 'admin', NULL, 'credit', '120.00', '120', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:03', '2023-12-09', 'ee', '1832', '6000', 'credit', '50', '2024-12-30', '3', NULL, 'CURAMOLPLUS', 'Purchases'),
(66, '6949', 'admin', NULL, 'credit', '2300', '2300', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:03', '2023-12-09', 'rer', '1765', '9200.00', 'credit', '4', '2024-12-30', '3', NULL, 'SKDERM15GM', 'Purchases'),
(67, '6949', 'admin', NULL, 'credit', '390', '390', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:03', '2023-12-09', '4', '1815', '15600.00', 'credit', '40', '2024-12-30', '3', NULL, 'TOFFPLUS', 'Purchases'),
(68, '6949', 'admin', NULL, 'credit', '550.00', '550', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:03', '2023-12-09', 'ee', '2037', '16500', 'credit', '30', '2024-12-30', '3', NULL, 'NAT B ', 'Purchases'),
(69, '6949', 'admin', NULL, 'credit', '3300', '3300', '2023-12-09', 'whitestar', '0', NULL, NULL, '12:21:03', '2023-12-09', '1', '2127', '6600.00', 'credit', '2', '2024-12-30', '3', NULL, 'SKDERM30GM', 'Purchases'),
(70, '6946', 'admin', NULL, 'credit', '750.00', '750', '2023-12-09', 'Super Medic', '0', NULL, NULL, '16:36:01', '2023-12-09', '68y', '1787', '37500', 'credit', '50', '2024-12-30', '4', NULL, 'AMLO-DENK5MG', 'Purchases'),
(71, '6946', 'admin', NULL, 'credit', '1300.00', '1300', '2023-12-09', 'Super Medic', '0', NULL, NULL, '16:36:01', '2023-12-09', 'gf', '1831', '20800', 'credit', '16', '2024-12-30', '4', NULL, 'FLUCAMOXCAPS500MG', 'Purchases'),
(72, '6946', 'admin', NULL, 'credit', '950.00', '950', '2023-12-09', 'Super Medic', '0', NULL, NULL, '16:36:01', '2023-12-09', 'f', '1772', '28500', 'credit', '30', '2025-12-30', '4', NULL, 'LIVOLIN', 'Purchases'),
(73, '6946', 'admin', NULL, 'credit', '22000.00', '22000', '2023-12-09', 'Super Medic', '0', NULL, NULL, '16:36:01', '2023-12-09', 'gg', '1998', '22000', 'credit', '1', '2024-12-30', '4', NULL, 'BBC  SPRAY', 'Purchases'),
(74, '6946', 'admin', NULL, 'credit', '3800', '3800', '2023-12-09', 'Super Medic', '0', NULL, NULL, '16:36:01', '2023-12-09', 'ff', '1674', '3800.00', 'credit', '1', '2024-12-30', '4', NULL, 'DELEASEDDRYSYRUP', 'Purchases'),
(75, '6946', 'admin', NULL, 'credit', '300.00', '300', '2023-12-09', 'Super Medic', '0', NULL, NULL, '16:36:01', '2023-12-09', '8400', '1725', '8400', 'credit', '28', '2024-12-30', '4', NULL, 'BISOPROLOL5MGUK', 'Purchases'),
(76, '6946', 'admin', NULL, 'credit', '320.00', '320', '2023-12-09', 'Super Medic', '0', NULL, NULL, '16:36:02', '2023-12-09', 'f', '1884', '16000', 'credit', '50', '2024-12-30', '4', NULL, 'CALCIVITA', 'Purchases'),
(77, '6946', 'admin', NULL, 'credit', '1900.00', '1900', '2023-12-09', 'Super Medic', '0', NULL, NULL, '16:36:02', '2023-12-09', 'UJYTGTYG', '1967', '28500', 'credit', '15', '2025-12-30', '4', NULL, 'NORMAGUT', 'Purchases'),
(78, '6946', 'admin', NULL, 'credit', '800.00', '800', '2023-12-09', 'Super Medic', '0', NULL, NULL, '16:36:02', '2023-12-09', 'iutyiku', '1788', '40000', 'credit', '50', '2024-12-30', '4', NULL, 'AMLO-DENK10MG', 'Purchases'),
(79, '6946', 'admin', NULL, 'credit', '18000', '18000', '2023-12-09', 'Super Medic', '0', NULL, NULL, '16:36:02', '2023-12-09', 'UJYTGTYG', '1661', '36000.00', 'credit', '2', '2024-12-30', '4', NULL, 'EPICEPHINE2GM', 'Purchases'),
(80, '4789', 'admin', NULL, 'credit', '600', '600', '2023-12-09', 'Guardian Pharmacy', '0', NULL, NULL, '17:33:48', '2023-12-09', '0UPPI', '1714', '12000.00', 'credit', '20', '2025-12-30', '6', NULL, 'METRONIDAZOLE200MG', 'Purchases'),
(81, '4789', 'admin', NULL, 'credit', '48000', '48000', '2023-12-09', 'Guardian Pharmacy', '0', NULL, NULL, '17:33:48', '2023-12-09', '97U9', '1770', '480000.00', 'credit', '10', '2024-12-30', '6', NULL, 'GRAMOCEFO400MG', 'Purchases'),
(82, '6949', 'admin', NULL, 'credit', '7000.00', '7000', '2023-12-11', 'Super Medic', '0', NULL, NULL, '13:41:09', '2023-12-09', '7465', '1739', '7000.00', 'credit', '1', '2024-11-30', '4', 'RT-0223867', 'ALKA5SYRUP', 'Credit Note'),
(83, '6949', 'admin', NULL, 'credit', '2640.00', '2640', '2023-12-11', 'Super Medic', '0', NULL, NULL, '13:41:09', '2023-12-09', '7657y56', '1665', '13200.00', 'credit', '5', '2024-11-30', '4', 'RT-0223867', 'ZAHA500MG', 'Credit Note'),
(84, '6949', 'admin', NULL, 'credit', '1466.67', '1466', '2023-12-11', 'Super Medic', '0', NULL, NULL, '13:44:49', '2023-12-11', '7657y56', '1665', '2933.34', 'credit', '2', '2024-11-30', '4', 'RT-233030', 'ZAHA500MG', 'Credit Note'),
(85, '6949', 'admin', NULL, 'credit', '50000.00', '50000', '2023-12-11', 'Super Medic', '0', NULL, NULL, '13:44:49', '2023-12-11', 'y', '1728', '50000.00', 'credit', '1', '2024-12-30', '4', 'RT-233030', 'ARTESUN120MG', 'Credit Note'),
(86, '6949', 'admin', NULL, 'cash', '2000', '2000', '2023-12-11', 'Super Medic', '0', NULL, NULL, '13:50:21', '2023-12-09', '7657y56', '1665', '2000.00', 'cash', '1', '2024-11-30', '4', 'RT-02632253', 'ZAHA500MG', 'Credit Note'),
(87, '6949', 'admin', NULL, 'cash', '7000', '7000', '2023-12-11', 'Super Medic', '0', NULL, NULL, '13:50:21', '2023-12-09', '7465', '1739', '7000.00', 'cash', '1', '2024-11-30', '4', 'RT-02632253', 'ALKA5SYRUP', 'Credit Note');

-- --------------------------------------------------------

--
-- Table structure for table `purchases_rever`
--

CREATE TABLE `purchases_rever` (
  `transaction_id` int(11) NOT NULL DEFAULT 0,
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
  `amt_paid` int(11) DEFAULT NULL,
  `tme` varchar(255) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `batch_no` varchar(266) DEFAULT NULL,
  `productid` varchar(266) DEFAULT NULL,
  `total` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL,
  `quantity` varchar(266) DEFAULT NULL,
  `exp_date` varchar(266) DEFAULT NULL,
  `suplier_id` varchar(266) DEFAULT NULL,
  `acc_approve` varchar(255) DEFAULT 'Pending',
  `man_approve` varchar(255) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `onhand_qty` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `qty_sold` int(11) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  `med_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `sell_type` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `tot_buy` varchar(255) DEFAULT NULL,
  `del_no` varchar(255) DEFAULT NULL,
  `qty_left` int(11) DEFAULT NULL,
  `category` varchar(266) DEFAULT NULL,
  `status` varchar(266) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purch_revenue`
--

CREATE TABLE `purch_revenue` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `credit` int(11) DEFAULT 0,
  `cash` int(11) DEFAULT 0,
  `pay_type` varchar(255) DEFAULT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purch_revenue`
--

INSERT INTO `purch_revenue` (`suplier_id`, `suplier_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(1, 'WHITE STAR PHARMA (U) LTD', 0, 209500, 'cash', '2023-11-15'),
(2, 'BIOGEN PHARMA LTD', 330500, 27000, 'credit', '2023-11-25'),
(3, 'whitestar', 683300, 0, 'credit', '2023-12-09'),
(4, 'Super Medic', 68367, -9000, 'cash', '2023-12-09'),
(6, 'Guardian Pharmacy', 399999, 0, 'credit', '2023-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `retcreditnote`
--

CREATE TABLE `retcreditnote` (
  `transaction_id` varchar(255) DEFAULT NULL,
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
  `amt_paid` int(11) DEFAULT NULL,
  `tme` varchar(255) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `batch_no` varchar(266) DEFAULT NULL,
  `productid` varchar(266) DEFAULT NULL,
  `total` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL,
  `quantity` varchar(266) DEFAULT NULL,
  `customer_id` varchar(266) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retcustomer_credit`
--

CREATE TABLE `retcustomer_credit` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `credit` int(11) DEFAULT 0,
  `cash` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `retcustomer_credit`
--

INSERT INTO `retcustomer_credit` (`customer_id`, `customer_name`, `credit`, `cash`) VALUES
(3, 'FAYHA MEDICAL CENTER', 498680, 120),
(2, 'OJINGA RETAIL SALES', 800000, 526900);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
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
  `amt_paid` int(11) DEFAULT NULL,
  `tme` varchar(255) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `batch_no` varchar(266) DEFAULT NULL,
  `productid` varchar(266) DEFAULT NULL,
  `total` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL,
  `quantity` varchar(266) DEFAULT NULL,
  `customer_id` varchar(266) DEFAULT NULL,
  `expiry_date` varchar(266) DEFAULT NULL,
  `vouch_type` varchar(255) DEFAULT 'Sales',
  `med_name` varchar(2550) DEFAULT NULL,
  `return_invoice` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `customer_id`, `expiry_date`, `vouch_type`, `med_name`, `return_invoice`) VALUES
(1, 'RS-26672', 'admin', NULL, 'credit', '5000', '5000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:34', '2023-12-06', '686i67', '2125', '10000.00', 'credit', '2.00', '3', '2024-12-30', 'Sales', 'PROBETANEYE/EARDROP', NULL),
(2, 'RS-26672', 'admin', NULL, 'credit', '6000', '6000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:35', '2023-12-06', 'ft65u6', '2126', '12000.00', 'credit', '2.00', '3', '2024-11-23', 'Sales', 'CANDIDERMCREAM', NULL),
(3, 'RS-26672', 'admin', NULL, 'credit', '5000', '5000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:35', '2023-12-06', '567865', '2127', '10000.00', 'credit', '2.00', '3', '2024-11-30', 'Sales', 'SKDERM30GM', NULL),
(4, 'RS-26672', 'admin', NULL, 'credit', '500', '500', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:35', '2023-12-06', 'kityt7', '2128', '10000.00', 'credit', '20.00', '3', '2025-11-30', 'Sales', 'CURAMOLPLUS', NULL),
(5, 'RS-26672', 'admin', NULL, 'credit', '250', '250', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:35', '2023-12-06', 'yh7887', '2129', '25000.00', 'credit', '100.00', '3', '2025-11-30', 'Sales', 'PANADOLEXTRA', NULL),
(6, 'RS-26672', 'admin', NULL, 'credit', '500', '500', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:35', '2023-12-06', '765ut', '2130', '15000.00', 'credit', '30.00', '3', '2024-11-30', 'Sales', 'HEDEXTABS', NULL),
(7, 'RS-26672', 'admin', NULL, 'credit', '50', '50', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:35', '2023-12-06', '879i78o', '2131', '5000.00', 'credit', '100.00', '3', '2024-11-30', 'Sales', 'PARACETAMOL500MG', NULL),
(8, 'RS-26672', 'admin', NULL, 'credit', '4000', '4000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:35', '2023-12-06', 'kjhkhj', '2132', '8000.00', 'credit', '2.00', '3', '2024-12-30', 'Sales', 'ARTEFAN20/120MG', NULL),
(9, 'RS-26672', 'admin', NULL, 'credit', '200', '200', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:35', '2023-12-06', '8ouioi', '2133', '4000.00', 'credit', '20.00', '3', '2025-12-30', 'Sales', 'FLUCAPS', NULL),
(10, 'RS-26672', 'admin', NULL, 'credit', '200', '200', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:36', '2023-12-06', 'iutyiku', '2134', '4000.00', 'credit', '20.00', '3', '2024-11-30', 'Sales', 'DYNAPERTABS', NULL),
(11, 'RS-26672', 'admin', NULL, 'credit', '12000', '12000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:36', '2023-12-06', 'utiytui', '2135', '12000.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'ASCORILSYRUP200ML', NULL),
(12, 'RS-26672', 'admin', NULL, 'credit', '200', '200', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:36', '2023-12-06', '7YU56', '2029', '4000.00', 'credit', '20.00', '3', '2029-12-30', 'Sales', 'AMPICLOX 500MG CAPS', NULL),
(13, 'RS-26672', 'admin', NULL, 'credit', '200', '200', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:36', '2023-12-06', 'eyteyt', '2137', '4000.00', 'credit', '20.00', '3', '2024-11-30', 'Sales', 'AMOXIKID125MGTABS', NULL),
(14, 'RS-26672', 'admin', NULL, 'credit', '100', '100', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:36', '2023-12-06', '7y6u56', '2154', '5000.00', 'credit', '50.00', '3', '2024-11-30', 'Sales', 'SEPTRIN480', NULL),
(15, 'RS-26672', 'admin', NULL, 'credit', '2000', '2000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:36', '2023-12-06', 'ouiouo', '2139', '10000.00', 'credit', '5.00', '3', '2025-11-30', 'Sales', 'CEFIXIME400MG(CEFWELL)', NULL),
(16, 'RS-26672', 'admin', NULL, 'credit', '50', '50', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:36', '2023-12-06', 'yjhuty', '2140', '5000.00', 'credit', '100.00', '3', '2025-11-30', 'Sales', 'PREDNISOLINETABSINDIA', NULL),
(17, 'RS-26672', 'admin', NULL, 'credit', '3000', '3000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:36', '2023-12-06', '8u678', '2141', '30000.00', 'credit', '10.00', '3', '2024-11-30', 'Sales', 'LEVOFLOXACIN500MG(LEVIN)', NULL),
(18, 'RS-26672', 'admin', NULL, 'credit', '200', '200', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:36', '2023-12-06', 'tertger', '2142', '10000.00', 'credit', '50.00', '3', '2023-11-30', 'Sales', 'ASPIRIN (ECORIN) 75MG TABS', NULL),
(19, 'RS-26672', 'admin', NULL, 'credit', '50', '50', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:36', '2023-12-06', '6t454', '2143', '500.00', 'credit', '10.00', '3', '2025-11-30', 'Sales', 'IBUPFOFEN200MGTABS', NULL),
(20, 'RS-26672', 'admin', NULL, 'credit', '50', '50', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:37', '2023-12-06', 'rrr', '2144', '5000.00', 'credit', '100.00', '3', '2024-11-30', 'Sales', 'DEXAMETHASONE0.5MGTABS', NULL),
(21, 'RS-26672', 'admin', NULL, 'credit', '50', '50', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:37', '2023-12-06', 'yrtuytr', '2145', '5000.00', 'credit', '100.00', '3', '2024-11-30', 'Sales', 'MAGNESIUMTABS', NULL),
(22, 'RS-26672', 'admin', NULL, 'credit', '100', '100', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:37', '2023-12-06', 'ytuutyu', '2146', '10000.00', 'credit', '100.00', '3', '2024-11-30', 'Sales', 'VITAMINCTABS', NULL),
(23, 'RS-26672', 'admin', NULL, 'credit', '500', '500', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:37', '2023-12-06', '8u568', '2147', '10000.00', 'credit', '20.00', '3', '2025-11-30', 'Sales', 'ACTION', NULL),
(24, 'RS-26672', 'admin', NULL, 'credit', '2000', '2000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:37', '2023-12-06', '867', '2150', '4000.00', 'credit', '2.00', '3', '2025-11-30', 'Sales', 'KISSCONDOMSTUNDED', NULL),
(25, 'RS-26672', 'admin', NULL, 'credit', '300', '300', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:37', '2023-12-06', 'uut', '2149', '6000.00', 'credit', '20.00', '3', '2025-11-30', 'Sales', 'EXTRADOL', NULL),
(26, 'RS-26672', 'admin', NULL, 'credit', '300', '300', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:38', '2023-12-06', 'tutyu', '2148', '600.00', 'credit', '2.00', '3', '2024-11-30', 'Sales', 'KISSCONDOMSTRABERRY', NULL),
(27, 'RS-26672', 'admin', NULL, 'credit', '100', '100', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:38', '2023-12-06', 'ty54', '2151', '1000.00', 'credit', '10.00', '3', '2024-11-30', 'Sales', 'OMEPRAZOLE20MG(OCID|)', NULL),
(28, 'RS-26672', 'admin', NULL, 'credit', '300', '300', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:38', '2023-12-06', 'ty4rh', '2153', '3000.00', 'credit', '10.00', '3', '2024-11-30', 'Sales', 'COLDCAP', NULL),
(29, 'RS-26672', 'admin', NULL, 'credit', '500', '500', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:38', '2023-12-06', '6000', '2152', '5000.00', 'credit', '10.00', '3', '2025-11-30', 'Sales', 'COLDEASECAPS', NULL),
(30, 'RS-26672', 'admin', NULL, 'credit', '300', '300', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:38', '2023-12-06', '7y6u56', '2154', '3000.00', 'credit', '10.00', '3', '2024-11-30', 'Sales', 'SEPTRIN480', NULL),
(31, 'RS-26672', 'admin', NULL, 'credit', '300', '300', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:38', '2023-12-06', '7765u', '2157', '300.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'DELEASEDPAEDSYRUP', NULL),
(32, 'RS-26672', 'admin', NULL, 'credit', '3000', '3000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:38', '2023-12-06', 't645', '2156', '3000.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'CONTUSPAEDIACTRICLINCTUS', NULL),
(33, 'RS-26672', 'admin', NULL, 'credit', '3000', '3000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:38', '2023-12-06', 'ytrtry', '2158', '3000.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'CONTUSDROP', NULL),
(34, 'RS-26672', 'admin', NULL, 'credit', '2000', '2000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:39', '2023-12-06', '7765u', '2157', '2000.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'DELEASEDPAEDSYRUP', NULL),
(35, 'RS-26672', 'admin', NULL, 'credit', '5000', '5000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:39:39', '2023-12-06', 'ytrtry', '2158', '5000.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'CONTUSDROP', NULL),
(36, 'RS-26672', 'admin', NULL, 'credit', '5000', '5000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:57', '2023-12-06', '686i67', '2125', '10000.00', 'credit', '2.00', '3', '2024-12-30', 'Sales', 'PROBETANEYE/EARDROP', NULL),
(37, 'RS-26672', 'admin', NULL, 'credit', '6000', '6000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:57', '2023-12-06', 'ft65u6', '2126', '12000.00', 'credit', '2.00', '3', '2024-11-23', 'Sales', 'CANDIDERMCREAM', NULL),
(38, 'RS-26672', 'admin', NULL, 'credit', '5000', '5000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:57', '2023-12-06', '567865', '2127', '10000.00', 'credit', '2.00', '3', '2024-11-30', 'Sales', 'SKDERM30GM', NULL),
(39, 'RS-26672', 'admin', NULL, 'credit', '500', '500', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:58', '2023-12-06', 'kityt7', '2128', '10000.00', 'credit', '20.00', '3', '2025-11-30', 'Sales', 'CURAMOLPLUS', NULL),
(40, 'RS-26672', 'admin', NULL, 'credit', '250', '250', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:58', '2023-12-06', 'yh7887', '2129', '25000.00', 'credit', '100.00', '3', '2025-11-30', 'Sales', 'PANADOLEXTRA', NULL),
(41, 'RS-26672', 'admin', NULL, 'credit', '500', '500', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:58', '2023-12-06', '765ut', '2130', '15000.00', 'credit', '30.00', '3', '2024-11-30', 'Sales', 'HEDEXTABS', NULL),
(42, 'RS-26672', 'admin', NULL, 'credit', '50', '50', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:58', '2023-12-06', '879i78o', '2131', '5000.00', 'credit', '100.00', '3', '2024-11-30', 'Sales', 'PARACETAMOL500MG', NULL),
(43, 'RS-26672', 'admin', NULL, 'credit', '4000', '4000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:58', '2023-12-06', 'kjhkhj', '2132', '8000.00', 'credit', '2.00', '3', '2024-12-30', 'Sales', 'ARTEFAN20/120MG', NULL),
(44, 'RS-26672', 'admin', NULL, 'credit', '200', '200', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:58', '2023-12-06', '8ouioi', '2133', '4000.00', 'credit', '20.00', '3', '2025-12-30', 'Sales', 'FLUCAPS', NULL),
(45, 'RS-26672', 'admin', NULL, 'credit', '200', '200', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:58', '2023-12-06', 'iutyiku', '2134', '4000.00', 'credit', '20.00', '3', '2024-11-30', 'Sales', 'DYNAPERTABS', NULL),
(46, 'RS-26672', 'admin', NULL, 'credit', '12000', '12000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:58', '2023-12-06', 'utiytui', '2135', '12000.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'ASCORILSYRUP200ML', NULL),
(47, 'RS-26672', 'admin', NULL, 'credit', '200', '200', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:58', '2023-12-06', '7YU56', '2029', '4000.00', 'credit', '20.00', '3', '2029-12-30', 'Sales', 'AMPICLOX 500MG CAPS', NULL),
(48, 'RS-26672', 'admin', NULL, 'credit', '200', '200', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', 'eyteyt', '2137', '4000.00', 'credit', '20.00', '3', '2024-11-30', 'Sales', 'AMOXIKID125MGTABS', NULL),
(49, 'RS-26672', 'admin', NULL, 'credit', '100', '100', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', '7y6u56', '2154', '5000.00', 'credit', '50.00', '3', '2024-11-30', 'Sales', 'SEPTRIN480', NULL),
(50, 'RS-26672', 'admin', NULL, 'credit', '2000', '2000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', 'ouiouo', '2139', '10000.00', 'credit', '5.00', '3', '2025-11-30', 'Sales', 'CEFIXIME400MG(CEFWELL)', NULL),
(51, 'RS-26672', 'admin', NULL, 'credit', '50', '50', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', 'yjhuty', '2140', '5000.00', 'credit', '100.00', '3', '2025-11-30', 'Sales', 'PREDNISOLINETABSINDIA', NULL),
(52, 'RS-26672', 'admin', NULL, 'credit', '3000', '3000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', '8u678', '2141', '30000.00', 'credit', '10.00', '3', '2024-11-30', 'Sales', 'LEVOFLOXACIN500MG(LEVIN)', NULL),
(53, 'RS-26672', 'admin', NULL, 'credit', '200', '200', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', 'tertger', '2142', '10000.00', 'credit', '50.00', '3', '2023-11-30', 'Sales', 'ASPIRIN (ECORIN) 75MG TABS', NULL),
(54, 'RS-26672', 'admin', NULL, 'credit', '50', '50', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', '6t454', '2143', '500.00', 'credit', '10.00', '3', '2025-11-30', 'Sales', 'IBUPFOFEN200MGTABS', NULL),
(55, 'RS-26672', 'admin', NULL, 'credit', '50', '50', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', 'rrr', '2144', '5000.00', 'credit', '100.00', '3', '2024-11-30', 'Sales', 'DEXAMETHASONE0.5MGTABS', NULL),
(56, 'RS-26672', 'admin', NULL, 'credit', '50', '50', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', 'yrtuytr', '2145', '5000.00', 'credit', '100.00', '3', '2024-11-30', 'Sales', 'MAGNESIUMTABS', NULL),
(57, 'RS-26672', 'admin', NULL, 'credit', '100', '100', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', 'ytuutyu', '2146', '10000.00', 'credit', '100.00', '3', '2024-11-30', 'Sales', 'VITAMINCTABS', NULL),
(58, 'RS-26672', 'admin', NULL, 'credit', '500', '500', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:58:59', '2023-12-06', '8u568', '2147', '10000.00', 'credit', '20.00', '3', '2025-11-30', 'Sales', 'ACTION', NULL),
(59, 'RS-26672', 'admin', NULL, 'credit', '2000', '2000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', '867', '2150', '4000.00', 'credit', '2.00', '3', '2025-11-30', 'Sales', 'KISSCONDOMSTUNDED', NULL),
(60, 'RS-26672', 'admin', NULL, 'credit', '300', '300', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', 'uut', '2149', '6000.00', 'credit', '20.00', '3', '2025-11-30', 'Sales', 'EXTRADOL', NULL),
(61, 'RS-26672', 'admin', NULL, 'credit', '300', '300', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', 'tutyu', '2148', '600.00', 'credit', '2.00', '3', '2024-11-30', 'Sales', 'KISSCONDOMSTRABERRY', NULL),
(62, 'RS-26672', 'admin', NULL, 'credit', '100', '100', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', 'ty54', '2151', '1000.00', 'credit', '10.00', '3', '2024-11-30', 'Sales', 'OMEPRAZOLE20MG(OCID|)', NULL),
(63, 'RS-26672', 'admin', NULL, 'credit', '300', '300', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', 'ty4rh', '2153', '3000.00', 'credit', '10.00', '3', '2024-11-30', 'Sales', 'COLDCAP', NULL),
(64, 'RS-26672', 'admin', NULL, 'credit', '500', '500', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', '6000', '2152', '5000.00', 'credit', '10.00', '3', '2025-11-30', 'Sales', 'COLDEASECAPS', NULL),
(65, 'RS-26672', 'admin', NULL, 'credit', '300', '300', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', '7y6u56', '2154', '3000.00', 'credit', '10.00', '3', '2024-11-30', 'Sales', 'SEPTRIN480', NULL),
(66, 'RS-26672', 'admin', NULL, 'credit', '300', '300', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', '7765u', '2157', '300.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'DELEASEDPAEDSYRUP', NULL),
(67, 'RS-26672', 'admin', NULL, 'credit', '3000', '3000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', 't645', '2156', '3000.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'CONTUSPAEDIACTRICLINCTUS', NULL),
(68, 'RS-26672', 'admin', NULL, 'credit', '3000', '3000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', 'ytrtry', '2158', '3000.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'CONTUSDROP', NULL),
(69, 'RS-26672', 'admin', NULL, 'credit', '2000', '2000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:00', '2023-12-06', '7765u', '2157', '2000.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'DELEASEDPAEDSYRUP', NULL),
(70, 'RS-26672', 'admin', NULL, 'credit', '5000', '5000', '2023-12-08', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '21:59:01', '2023-12-06', 'ytrtry', '2158', '5000.00', 'credit', '1.00', '3', '2024-11-30', 'Sales', 'CONTUSDROP', NULL),
(71, 'RS-2092358', 'admin', NULL, 'cash', '5000', '5000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:34', '2023-12-09', '7465', '2160', '0', 'cash', '0', '2', '2024-11-30', 'Sales', 'ALKA5SYRUP', NULL),
(72, 'RS-2092358', 'admin', NULL, 'cash', '5000', '5000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:34', '2023-12-09', 't54tg', '2161', '5000.00', 'cash', '1', '2', '2024-11-30', 'Sales', 'DELEASEDDRYSYRUP', NULL),
(73, 'RS-2092358', 'admin', NULL, 'cash', '5000', '5000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:34', '2023-12-09', 't54tg', '2161', '5000.00', 'cash', '1', '2', '2024-11-30', 'Sales', 'DELEASEDDRYSYRUP', NULL),
(74, 'RS-2092358', 'admin', NULL, 'cash', '500', '500', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:34', '2023-12-09', 'treg', '2162', '50000.00', 'cash', '100', '2', '2024-12-30', 'Sales', 'PANADOLADVANCE', NULL),
(75, 'RS-2092358', 'admin', NULL, 'cash', '11000', '11000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:34', '2023-12-09', 'q', '2164', '0', 'cash', '1', '2', '2024-12-30', 'Sales', 'ARTESUN60MG', NULL),
(76, 'RS-2092358', 'admin', NULL, 'cash', '10000', '10000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:34', '2023-12-09', 'y', '2163', '30000.00', 'cash', '3', '2', '2024-12-30', 'Sales', 'ARTESUN120MG', NULL),
(77, 'RS-2092358', 'admin', NULL, 'cash', '2000', '2000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:34', '2023-12-09', 'xlat125', '1665', '6000.00', 'cash', '3', '2', '2027-07-30', 'Sales', 'ZAHA500MG', NULL),
(78, 'RS-2092358', 'admin', NULL, 'cash', '2000', '2000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:34', '2023-12-09', 'eyteyt', '2137', '60000.00', 'cash', '30', '2', '2024-11-30', 'Sales', 'AMOXIKID125MGTABS', NULL),
(79, 'RS-2092358', 'admin', NULL, 'cash', '2000', '2000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:34', '2023-12-09', 'xlat125', '1705', '20000.00', 'cash', '10', '2', '2027-07-30', 'Sales', 'AMOXYCLAV625MG(BACTOCLAV)TABS', NULL),
(80, 'RS-2092358', 'admin', NULL, 'cash', '300', '300', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', 'xlat125', '1712', '9000.00', 'cash', '30', '2', '2027-07-30', 'Sales', 'AMOXYCILIN500MGCAPS', NULL),
(81, 'RS-2092358', 'admin', NULL, 'cash', '2000', '2000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', '9099', '2166', '4000.00', 'cash', '2', '2', '2024-12-30', 'Sales', 'D-ARTEPADULT', NULL),
(82, 'RS-2092358', 'admin', NULL, 'cash', '600', '600', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', 'xlat125', '1702', '12000.00', 'cash', '20', '2', '2027-07-30', 'Sales', 'CANNULAYELLOWI.V24G', NULL),
(83, 'RS-2092358', 'admin', NULL, 'cash', '12000', '12000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', '5', '2172', '36000.00', 'cash', '3', '2', '2024-12-30', 'Sales', 'BLOODGIVINGSET', NULL),
(84, 'RS-2092358', 'admin', NULL, 'cash', '12000', '12000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', 'xlat125', '1692', '12000.00', 'cash', '1', '2', '2027-07-30', 'Sales', 'DYNAPERSPRAY', NULL),
(85, 'RS-2092358', 'admin', NULL, 'cash', '12000', '12000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', '3', '2170', '12000.00', 'cash', '1', '2', '2024-12-30', 'Sales', 'SUPIROCINOITMENT', NULL),
(86, 'RS-2092358', 'admin', NULL, 'cash', '100', '100', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', 'xlat125', '1890', '1000.00', 'cash', '10', '2', '2027-07-30', 'Sales', 'AMLODIPINE(AMLODAC)5MG', NULL),
(87, 'RS-2092358', 'admin', NULL, 'cash', '2300', '2300', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', 'xlat125', '1767', '2300.00', 'cash', '1', '2', '2027-07-30', 'Sales', 'CLOTRIMAZOLOECREAM(UNISTEN)', NULL),
(88, 'RS-2092358', 'admin', NULL, 'cash', '19500', '19500', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', 'xlat125', '1661', '39000.00', 'cash', '2', '2', '2027-07-30', 'Sales', 'EPICEPHINE2GM', NULL),
(89, 'RS-2092358', 'admin', NULL, 'cash', '10000', '10000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', 'xlat125', '1726', '10000.00', 'cash', '1', '2', '2027-07-30', 'Sales', 'ARTESUN30MG', NULL),
(90, 'RS-2092358', 'admin', NULL, 'cash', '5000', '5000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:35', '2023-12-09', 'rer', '2180', '10000.00', 'cash', '2', '2', '2024-12-30', 'Sales', 'SKDERM15GM', NULL),
(91, 'RS-2092358', 'admin', NULL, 'cash', '4000', '4000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:36', '2023-12-09', 'xlat125', '1815', '80000.00', 'cash', '20', '2', '2027-07-30', 'Sales', 'TOFFPLUS', NULL),
(92, 'RS-2092358', 'admin', NULL, 'cash', '300', '300', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:36', '2023-12-09', 'ee', '2179', '6000.00', 'cash', '20', '2', '2024-12-30', 'Sales', 'CURAMOLPLUS', NULL),
(93, 'RS-2092358', 'admin', NULL, 'cash', '500', '500', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:36', '2023-12-09', 'xlat125', '1811', '7000.00', 'cash', '14', '2', '2027-07-30', 'Sales', 'HEDEXTABS', NULL),
(94, 'RS-2092358', 'admin', NULL, 'cash', '200', '200', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:36', '2023-12-09', '5444444', '2178', '1000.00', 'cash', '5', '2', '2024-12-30', 'Sales', 'CETRIZINE10MGINDIA', NULL),
(95, 'RS-2092358', 'admin', NULL, 'cash', '300', '300', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:36', '2023-12-09', 'xlat125', '1684', '3000.00', 'cash', '10', '2', '2027-07-30', 'Sales', 'FLUCAPS', NULL),
(96, 'RS-2092358', 'admin', NULL, 'cash', '300', '300', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:36', '2023-12-09', 'xlat125', '1792', '30000.00', 'cash', '100', '2', '2027-07-30', 'Sales', 'MAGNESIUMTABS', NULL),
(97, 'RS-2092358', 'admin', NULL, 'cash', '300', '300', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:36', '2023-12-09', '9', '2174', '600.00', 'cash', '2', '2', '2024-12-30', 'Sales', 'METOCLOPROMIDE(PLASIL)10MGINJ', NULL),
(98, 'RS-2092358', 'admin', NULL, 'cash', '3000', '3000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:36', '2023-12-09', '8', '2175', '3000.00', 'cash', '1', '2', '2024-12-30', 'Sales', 'CETAMOL  60MLS', NULL),
(99, 'RS-2092358', 'admin', NULL, 'cash', '5000', '5000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '13:14:36', '2023-12-09', 'xlat125', '1802', '10000.00', 'cash', '2', '2', '2027-07-30', 'Sales', 'LYDIA', NULL),
(100, 'RS-2092358', 'admin', NULL, 'cash', '5000.00', '5000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '17:00:52', '2023-12-09', '7465', '2160', '5000.00', 'cash', '1', '2', '2024-11-30', 'Credit Note', 'ALKA5SYRUP', 'RT-297692'),
(101, 'RS-2092358', 'admin', NULL, 'cash', '16500.00', '16500', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '17:00:52', '2023-12-09', 'q', '2164', '33000.00', 'cash', '2', '2', '2024-12-30', 'Credit Note', 'ARTESUN60MG', 'RT-297692'),
(102, 'RS-2923432', 'admin', NULL, 'credit', '25000', '25000', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '17:27:27', '2023-12-09', 'xlat125', '1689', '50000.00', 'credit', '2', '2', '2027-07-30', 'Sales', 'METOCLOPROMIDE(PLASIL)10MGINJ', NULL),
(103, 'RS-2923432', 'admin', NULL, 'credit', '15500', '15500', '2023-12-09', 'OJINGA RETAIL SALES', '0', NULL, NULL, '17:27:27', '2023-12-09', 'xlat125', '1714', '775000.00', 'credit', '50', '2', '2027-07-30', 'Sales', 'METRONIDAZOLE200MG', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `note` varchar(655) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`, `location`) VALUES
(3, 'whitestar', 'P.box 123', '0786031442', 'Peter Ken', ' iphones, android', 'Jinja'),
(4, 'Super Medic', 'p.o box dfd', '0765428193', 'John', 'androids, iphone, blue', 'Jinja'),
(5, 'abacus pharmacy', 'nizam road', '075432876', 'kumar', 'notes2', 'Jinja'),
(6, 'Guardian Pharmacy', 'P.box 23', '0755943443', 'Susan Maria', 'cloves,hcg', 'Jinja'),
(7, 'Hans kk2', 'jinn', '0755943416', 'mary', 'hins', 'Jinja'),
(8, 'dddd5', 'hhh', '075432876', 'hhh', NULL, 'gg'),
(9, 'MEDVIN PHARMACY', 'MAIN STREAT JINJA', '07777165566', 'HASSAN MOHA', NULL, 'JINJA UGANDA');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `unit_id` int(11) NOT NULL,
  `unit` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit`) VALUES
(629, NULL),
(630, 'Syrup'),
(631, 'Gell'),
(632, 'Cream'),
(633, 'Oitments'),
(634, 'Bottles'),
(635, 'Gelletins'),
(636, 'Pessories'),
(637, 'Capsules'),
(639, 'Ampules'),
(640, 'Vials'),
(641, 'Drops'),
(642, 'Sprays'),
(643, 'Stp'),
(644, 'Sachet'),
(645, 'Unit'),
(646, 'Tube'),
(649, 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(266) DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`, `emp_id`, `fname`, `lname`) VALUES
(14, 'PAZD', 'PAZ123', NULL, 'pharmacist', 4, 'MARTHA', 'PAZ');

-- --------------------------------------------------------

--
-- Table structure for table `wcategory`
--

CREATE TABLE `wcategory` (
  `category_id` int(11) NOT NULL,
  `cat` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcategory`
--

INSERT INTO `wcategory` (`category_id`, `cat`) VALUES
(629, 'Anti-spasmotic22'),
(630, 'Antibiotics'),
(631, 'Antiprotoazol'),
(632, 'Antidiabetics'),
(633, 'Antimalaria'),
(634, 'Anti-hypertensive'),
(635, 'Anti-ulcers'),
(638, 'Anti-Vomitus'),
(639, 'Painkiller'),
(640, 'Anti-fungal'),
(641, 'Multivitamins'),
(642, 'Vitamins'),
(643, 'Antihemedics'),
(644, 'Antihaemorhaid'),
(645, 'Lazatives'),
(646, 'Antimotility'),
(647, 'PPI'),
(648, 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `wcredit_payhist`
--

CREATE TABLE `wcredit_payhist` (
  `transaction_id` int(11) NOT NULL,
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `credit` int(11) DEFAULT 0,
  `cash` int(11) DEFAULT 0,
  `pay_type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcredit_payhist`
--

INSERT INTO `wcredit_payhist` (`transaction_id`, `suplier_id`, `suplier_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(1, 4, 'Super Medic', 312200, 0, 'credit', '2023-12-30'),
(2, 5, 'abacus pharmacy', 478700, 0, 'credit', '2023-12-09'),
(3, 4, 'Super Medic', 0, 12200, 'cash', '2023-12-09'),
(4, 5, 'abacus pharmacy', 0, 66880, 'cash', '2023-12-09'),
(5, 5, 'abacus pharmacy', 0, 47505, 'cash', '2023-12-09'),
(6, 4, 'Super Medic', 65000, 0, 'credit', '2023-12-30'),
(7, 4, 'Super Medic', 65000, 0, 'credit', '2023-12-30'),
(8, 4, 'Super Medic', 65000, 0, 'credit', '2023-12-30'),
(9, 4, 'Super Medic', 65000, 0, 'credit', '2023-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `wproducts`
--

CREATE TABLE `wproducts` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL DEFAULT '',
  `gen_name` varchar(200) NOT NULL DEFAULT '',
  `product_name` varchar(200) NOT NULL DEFAULT 'None',
  `cost` varchar(255) DEFAULT NULL,
  `o_price` varchar(100) NOT NULL DEFAULT '0',
  `price` varchar(266) DEFAULT NULL,
  `profit` varchar(100) NOT NULL DEFAULT '0',
  `supplier` varchar(100) NOT NULL DEFAULT '',
  `onhand_qty` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `qty_sold` int(11) NOT NULL DEFAULT 0,
  `expiry_date` varchar(266) DEFAULT NULL,
  `date_arrival` varchar(500) NOT NULL DEFAULT '',
  `med_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `sell_type` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `tot_buy` varchar(255) DEFAULT NULL,
  `del_no` varchar(255) DEFAULT NULL,
  `qty_left` int(11) DEFAULT NULL,
  `category` varchar(266) DEFAULT NULL,
  `status` varchar(266) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `inventory` varchar(300) DEFAULT NULL,
  `stockval` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wproducts`
--

INSERT INTO `wproducts` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(3, '', '', '', '', '900', '1500', '600', 'Phones Ltd', 0, 0, 0, '', '2044-11-01', 'Periton ', '109991', 'Bot', '11/23/20', '07/14/22', '18900', '9s', 100000, 'Head ache', 'Obsolete', 'B211', NULL, 0),
(4, '', '', '', '', '900', '1600', '700', 'Phones Ltd', 0, 0, 0, '', '2044-11-01', 'Periton	', '109920', 'Bot', '11/23/20', '07/14/22', '18900', '9s', 100000, 'Head ache', 'Obsolete', 'B111', NULL, 0),
(5, '', '', '', '', '200', '1000', '800', 'Tech Ltd', 0, 0, 0, '', '2044-11-16', 'Painkiller', '267', 'Bot', '11/15/20', '07/13/22', '32000', 'n-20', 160, 'Abdominal', 'Obsolete', NULL, NULL, 0),
(7, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '200', '50', 'abacus pharmacy', 0, 20, 20, '2022-07-12', '2022-07-08', 'Paracetamol', '100676', 'Bot', '2022-07-06', '2022-07-12', '3000', '124', 20, 'Painkillers', 'Obsolete', 'BK9201', NULL, 0),
(8, 'Painv', 'Painv', 'Painv', '150', '150', '200', '50', 'White star', 0, 300, 0, '07/14/22', '2033-07-12', 'Painv', '311', 'Bot', '07/13/22', '07/13/22', '4575000', '203', 305, 'Painkillers', 'Obsolete', 'BR732', NULL, 0),
(9, 'Mabendozol', 'Mabendozol', 'Mabendozol', '150', '150', '200', '50', 'abacus pharmacy', 0, 200, 0, '07/16/22', '2022-07-11', 'Mabendozol', '1171', 'Bot', '07/13/22', '07/14/55', '3000000', '392', 200, 'Urinary affection', 'Obsolete', 'BN021', NULL, 0),
(10, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '100', 'abacus pharmacy', 0, 9000, 0, '2023-09-28', 'Asprine', 'Asprine', '9401', 'Tab', '2023-09-28', NULL, NULL, 'fff-933', 0, 'PainKiller', 'Obsolete', 'BH892', NULL, 0),
(11, 'Capsul', 'Capsul', 'Capsul', '150', '150', '200', '50', 'whitestar', 0, 90000, 0, '2026-11-02', 'Capsul', 'Capsul', '89996', 'Tab', '2023-10-02', NULL, NULL, 'f34', 0, 'Painkiller', 'Obsolete', 'BC721', NULL, 0),
(12, 'Quatem', 'Quatem', 'Quatem', '200', '200', '300', '100', 'Guardian Pharmacy', 0, 9000, 0, '2027-10-07', 'Quatem', 'Quatem', '18904', 'Tab', '2023-10-02', NULL, NULL, 'DD093', 0, 'Painkiller', 'Obsolete', NULL, NULL, 0),
(13, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '500', 'Super Medic', 0, 10000, 0, '2055-10-05', 'Ceptrine', 'Ceptrine', '10021', 'Tab', '2023-10-01', NULL, '4000000', 'HFFF43', 0, 'Painkiller', 'Obsolete', NULL, NULL, 0),
(14, 'ArtEFAN', 'ArtEFAN', 'ArtEFAN', '2400', '2400', '4000', '1600', 'Super Medic', 0, 9000, 0, '2033-06-02', 'ArtEFAN', 'ArtEFAN', '8988', 'Tab', '2023-10-02', NULL, '21600000', 'nn-303', 0, 'Antimalario', 'Obsolete', NULL, NULL, 0),
(15, 'Periton	', '', 'Periton	', NULL, '900', '1600', '2600', 'Super Medic', 0, 200, 0, '2023-10-26', 'Periton	', 'Periton	', '184', 'cash', '2023-10-05', NULL, '700000', '9s', 100000, 'Head ache', 'Obsolete', 'B632', NULL, 0),
(16, 'Mabendozol', 'Mabendozol', 'Mabendozol', NULL, '150', '200', '5564', 'Super Medic', 0, 140, 0, '2023-11-03', 'Mabendozol', 'Mabendozol', '143', 'cash', '2023-10-05', NULL, '800000', '392', 200, 'Urinary affection', 'Obsolete', 'B6432', NULL, 0),
(17, 'Asprin 75MG UK', 'Asprin 75MG UK', 'Asprin 75MG UK', '0', '0', '150', '', 'None', 0, 3993, 0, '', 'Nov-11-2023', 'Asprin 75MG UK', '3992', 'Tabs', '11/11/23', NULL, '0', 'D876', 3993, 'Anti-spasmotic', 'Obsolete', 'B11873', 'Consumable', 0),
(18, 'Mabendozol', 'Mabendozol', 'Mabendozol', '150', '150', '200', '111516', 'whitestar', 0, 6, 0, '2023-10-05', 'Mabendozol', 'Mabendozol', '310', 'cash', '2023-10-11', NULL, '670000', '392', 6, 'Urinary affection', 'Obsolete', 'RS2132', NULL, 0),
(19, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '6903', 'abacus pharmacy', 0, 89, 0, '2023-10-04', 'Ceptrine', 'Ceptrine', '8975', 'cash', '2023-10-05', NULL, '650000', 'HFFF43', 89, 'Painkiller', 'Obsolete', 'B987544', NULL, 0),
(21, 'Capsul', 'Capsul', 'Capsul', '150', '150', '200', '304', 'Super Medic', 0, 44, 0, '2023-10-12', 'Capsul', 'Capsul', '90037', 'credit', '2023-10-05', NULL, '20000', 'f34', 44, 'Painkiller', 'Obsolete', 'B7201', NULL, 0),
(22, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '9600', 'Super Medic', 0, 34, 0, '2023-11-01', 'Ceptrine', 'Ceptrine', '123', 'credit', '2023-10-05', NULL, '340000', 'HFFF43', 34, 'Painkiller', 'Obsolete', 'B78532', NULL, 0),
(23, 'D-Artepp', 'D-Artepp', 'D-Artepp', '120', '120', '200', '80', 'None', 0, 20, 0, '2023-11-01', 'D-Artepp', 'D-Artepp', '16', 'Stp', '2023-10-06', NULL, '2400', 'D876', 0, 'Healer', 'Obsolete', NULL, NULL, 0),
(24, 'Painkiller', '', 'Painkiller', '200', '200', '1000', '1050', 'Super Medic', 0, 4, 0, '2023-10-07', 'Painkiller', 'Painkiller', '2', 'cash', '2023-10-07', NULL, '5000', 'n-20', 4, 'Abdominal', 'Obsolete', 'b3', NULL, 0),
(25, 'Painkiller', '', 'Painkiller', '200', '200', '1000', '800', 'Super Medic', 0, 5, 0, '2023-10-04', 'Painkiller', 'Painkiller', '2', 'cash', '2023-10-07', NULL, '5000', 'n-20', 5, 'Abdominal', 'Obsolete', 'b6', NULL, 0),
(26, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '600', 'Super Medic', 0, 2, 0, '2023-10-25', 'Ceptrine', 'Ceptrine', '2', 'cash', '2023-10-07', NULL, '2000', 'HFFF43', 2, 'Painkiller', 'Obsolete', 'B66', NULL, 0),
(27, 'Mabendozol', 'Mabendozol', 'Mabendozol', '150', '150', '200', '3850', 'Super Medic', 0, 3, 0, '2023-10-25', 'Mabendozol', 'Mabendozol', '3', 'cash', '2023-10-07', NULL, '12000', '392', 3, 'Urinary affection', 'Obsolete', 'b4', NULL, 0),
(28, 'Painkiller', '', 'Painkiller', '200', '200', '1000', '-20', 'abacus pharmacy', 0, 5, 0, '2023-10-07', 'Painkiller', 'Painkiller', '0', 'cash', '', NULL, '900', 'n-20', 5, 'Abdominal', 'Obsolete', 'B64', NULL, 0),
(29, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '-234', 'abacus pharmacy', 0, 6, 0, '2023-10-05', 'Ceptrine', 'Ceptrine', '90200', 'cash', '', NULL, '1000', 'HFFF43', 6, 'Painkiller', 'Obsolete', 'B88', NULL, 0),
(30, 'Mabendozol', 'Mabendozol', 'Mabendozol', '150', '150', '200', '3350', 'Guardian Pharmacy', 0, 2, 0, '2023-10-25', 'Mabendozol', 'Mabendozol', '2', 'cash', '2023-10-12', NULL, '7000', '392', 2, 'Urinary affection', 'Obsolete', 'B31', NULL, 0),
(31, 'Kuiris', 'Kuiris', 'Kuiris', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'Kuiris', 'Kuiris', '0', 'Bot', '2023-10-07', NULL, '0', 'D876', 0, 'Antibiotics', 'Obsolete', NULL, NULL, 0),
(32, 'Centaprintecil', 'Centaprintecil', 'Centaprintecil', '0', '0', '300', '300', 'None', 0, 4, 0, '', 'Centaprintecil', 'Centaprintecil', '4', 'Tab', '2023-10-07', NULL, '0', 'D876', 0, 'Painkiller', 'Obsolete', NULL, NULL, 0),
(33, 'Pensil', 'Pensil', 'Pensil', '0', '0', '300', '300', 'None', 0, 12, 0, '', 'Pensil', 'Pensil', '24', 'Bot', '2023-10-07', NULL, '0', 'D876', 0, 'Antibiotics', 'Obsolete', NULL, NULL, 0),
(34, 'Muniscapuls', 'Munis capuls', 'Muniscapuls', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'Muniscapuls', 'Muniscapuls', '', 'Tab', '2023-10-07', NULL, '0', 'D876', 0, 'Painkiller', 'Obsolete', NULL, NULL, 0),
(35, 'Asprine99', 'Asprine99', 'Asprine99', '0', '0', '150', '', 'None', 0, 0, 0, '2023-10-11', 'Nov-10-2023', 'Asprine99', '91', 'Tabs', '11/10/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'B43', 'Consumable', 0),
(36, 'ARTEFAN 20/120MG', 'ARTEFAN 20/120MG', 'ARTEFAN 20/120MG', '0', '0', '4000', '', 'None', 0, 0, 0, '2023-10-17', 'Nov-11-2023', 'ARTEFAN 20/120MG', '0', 'Tabs', '11/11/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'B722', 'Consumable', 0),
(38, 'REMOS', 'REMOS', 'REMOS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'REMOS', 'REMOS', '8994', 'Tabs', '10/11/23', NULL, '0', 'D876', 0, 'Anti-ulcers', 'Obsolete', '', 'Consumable', 0),
(39, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 40, 0, '', 'Periton	', 'Periton	', '40', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'B111', 'Consumable', 0),
(40, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 40, 0, '', 'Periton	', 'Periton	', '40', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'B111', 'Consumable', 0),
(41, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 40, 0, '', 'Periton	', 'Periton	', '40', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'B111', 'Consumable', 0),
(42, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 40, 0, '', 'Periton	', 'Periton	', '40', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'B111', 'Consumable', 0),
(43, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 10000, 0, '', 'Periton	', 'Periton	', '10000', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'B111', 'Consumable', 0),
(44, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 10000, 0, '', 'Periton	', 'Periton	', '10000', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'B111', 'Consumable', 0),
(45, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 10000, 0, '', 'Periton	', 'Periton	', '10000', 'Tabs', '10/12/23', NULL, '0', 'D876', 10000, 'Anti-spasmotic', 'Obsolete', 'B111', 'Consumable', 0),
(46, 'PIRITON', 'PIRITON', 'PIRITON', '0', '0', '1600', '', 'None', 0, 109920, 0, '', 'Nov-11-2023', 'PIRITON', '109720', 'Tabs', '11/11/23', NULL, '0', 'D876', 109920, 'NA', 'Obsolete', 'B111', 'Consumable', 0),
(47, 'Amoin88', 'Amoin88', 'Amoin88', '0', '0', '400', '', 'None', 0, 0, 0, '', 'Nov-10-2023', 'Amoin88', '0', 'Tabs', '11/10/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', '', 'Consumable', 0),
(48, 'Periton	', '', 'Periton	', '900', '900', '1600', '-868', 'Guardian Pharmacy', 0, 8000, 0, '2023-10-26', 'Periton	', 'Periton	', '8003', 'cash', '2023-10-12', NULL, '260000', '9s', 8000, 'Head ache', 'Obsolete', 'B7777', NULL, 0),
(49, 'Mabendozol', 'Mabendozol', 'Mabendozol', '150', '150', '200', '19850', 'Super Medic', 0, 3, 0, '2023-10-18', 'Mabendozol', 'Mabendozol', '3', 'cash', '2023-10-27', NULL, '60000', '392', 3, 'Urinary affection', 'Obsolete', 'B33', NULL, 0),
(50, 'Capsul', 'Capsul', 'Capsul', '150', '150', '200', '14850', 'Super Medic', 0, 6, 0, '2023-10-31', 'Capsul', 'Capsul', '6', 'cash', '2023-10-27', NULL, '90000', 'f34', 6, 'Painkiller', 'Obsolete', 'B7322', NULL, 0),
(51, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '6616', 'dddd5', 0, 3, 0, '2023-10-28', 'Asprine', 'Asprine', '1', 'cash', '2023-10-28', NULL, '20000', 'fff-933', 3, 'PainKiller', 'Obsolete', 'B344', NULL, 0),
(52, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '124950', 'Hans kk2', 0, 2, 0, '2023-11-04', 'Asprine', 'Asprine', '0', 'cash', '2023-10-28', NULL, '250000', 'fff-933', 2, 'PainKiller', 'Obsolete', 'B544', NULL, 0),
(53, 'Asprine44', 'Asprine44', 'Asprine44', '0', '0', '150', '', 'None', 0, 0, 0, '2023-11-02', 'Nov-10-2023', 'Asprine44', '0', 'Tabs', '11/10/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'B123', 'Consumable', 0),
(54, 'Painkiller', '', 'Painkiller', '200', '200', '1000', '6800', 'whitestar', 0, 3, 0, '2023-11-09', 'Painkiller', 'Painkiller', '2', 'credit', '2023-11-09', NULL, '21000', 'n-20', 3, 'Abdominal', 'Obsolete', 'B023', NULL, 0),
(55, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '5950', 'whitestar', 0, 2, 0, '2023-11-09', 'Asprine', 'Asprine', '2', 'cash', '2023-11-09', NULL, '12000', 'fff-933', 2, 'PainKiller', 'Obsolete', 'B233', NULL, 0),
(56, 'Painkiller', '', 'Painkiller', '200', '200', '1000', '10800', 'whitestar', 0, 1, 0, '2023-11-09', 'Painkiller', 'Painkiller', '1', 'cash', '2023-11-09', NULL, '11000', 'n-20', 1, 'Abdominal', 'Obsolete', 'B883', NULL, 0),
(57, 'Periton ', '', 'Periton ', '900', '900', '1500', '10100', 'abacus pharmacy', 0, 2, 0, '2023-11-09', 'Periton ', 'Periton ', '2', 'cash', '2023-11-09', NULL, '22000', '9s', 2, 'Head ache', 'Obsolete', 'B83992', NULL, 0),
(58, 'Quatem7', 'Quatem7', 'Quatem7', '0', '0', '300', '', 'None', 0, -1, 0, '', 'Nov-10-2023', 'Quatem7', '-1', 'Tabs', '11/10/23', NULL, '0', 'D876', -1, 'Anti-spasmotic', 'Obsolete', 'B533', 'Consumable', 0),
(59, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '200', '21850', 'abacus pharmacy', 0, 1, 20, '2023-11-09', 'Paracetamol', 'Paracetamol', '1', 'cash', '2023-11-09', NULL, '22000', '124', 1, 'Painkillers', 'Obsolete', 'B8293', NULL, 0),
(60, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '200', '1109850', 'abacus pharmacy', 0, 3, 20, '2023-11-09', 'Paracetamol', 'Paracetamol', '2', 'cash', '2023-11-09', NULL, '3330000', '124', 3, 'Painkillers', 'Obsolete', 'B332', NULL, 0),
(61, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '200', '169850', 'Guardian Pharmacy', 0, 2, 20, '2023-11-09', 'Paracetamol', 'Paracetamol', '2', 'cash', '2023-11-09', NULL, '340000', '124', 2, 'Painkillers', 'Obsolete', 'b532', NULL, 0),
(62, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '7450', 'Guardian Pharmacy', 0, 2, 0, '2023-12-09', 'Asprine', 'Asprine', '2', 'credit', '2023-11-09', NULL, '15000', 'fff-933', 2, 'PainKiller', 'Obsolete', 'B23', NULL, 0),
(63, 'Painv', 'Painv', 'Painv', '150', '150', '200', '266516', 'Guardian Pharmacy', 0, 3, 0, '2023-12-08', 'Painv', 'Painv', '0', 'credit', '2023-11-09', NULL, '800000', '203', 3, 'Painkillers', 'Obsolete', 'B434', NULL, 0),
(64, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '350', 'Super Medic', 0, 10, 0, '2023-11-11', 'Asprine', 'Asprine', '10', 'cash', '2023-11-11', NULL, '4000', 'fff-933', 10, 'PainKiller', 'Obsolete', 'B992', NULL, 0),
(65, 'PIRITON  INDIA', 'PIRITON  INDIA', 'PIRITON  INDIA', '0', '0', '1600', '', 'None', 0, 0, 0, '2026-11-30', 'Nov-11-2023', 'PIRITON  INDIA', '0', 'Tabs', '11/11/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', '10345', 'Consumable', 0),
(122, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin', NULL, 'Unit', '45241', NULL, NULL, NULL, NULL, 'Antibiotics', 'Obsolete', 'B920', 'Consumable', 0),
(123, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole', NULL, 'Tab', '45241', NULL, NULL, NULL, NULL, 'Antipyretics', 'Obsolete', 'BC291', 'Consumable', 0),
(124, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril', NULL, 'Tab', '45241', NULL, NULL, NULL, NULL, 'Antipyretics', 'Obsolete', 'BK023', 'None Consumable', 0),
(125, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol', NULL, 'Unit', '45241', NULL, NULL, NULL, NULL, 'Antifungals', 'Obsolete', 'BK024', 'Consumable', 0),
(126, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45976', '', 'Omeprazole', NULL, 'Unit', '45241', NULL, NULL, NULL, NULL, 'Antibiotics', 'Obsolete', 'BK025', 'Consumable', 0),
(127, '', '', 'None', NULL, '0', '900', '0', '', 0, 0, 0, '45612', '', 'Ibuprofen', NULL, 'Unit', '45241', NULL, NULL, NULL, NULL, 'Analgesic Balm', 'Obsolete', 'BK026', 'None Consumable', 0),
(128, '', '', 'None', NULL, '0', '2000', '0', '', 0, 0, 0, '45613', '', 'Multivitamins:', NULL, 'Tab', '45241', NULL, NULL, NULL, NULL, 'Antibiotics', 'Obsolete', 'BK027', 'Consumable', 0),
(129, '', '', 'None', NULL, '0', '1000', '0', '', 0, 0, 0, '45614', '', 'Artemether', NULL, 'Tab', '45241', NULL, NULL, NULL, NULL, 'Analgesic Balm', 'Obsolete', 'BK028', 'Consumable', 0),
(132, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole22', NULL, 'Tab', '45241', NULL, NULL, NULL, NULL, 'Antipyretics', 'Obsolete', 'BC291', 'Consumable', 0),
(133, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril22', NULL, 'Tab', '45241', NULL, NULL, NULL, NULL, 'Antipyretics', 'Obsolete', 'BK023', 'None Consumable', 0),
(134, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril33', NULL, 'Tab', '45241', NULL, NULL, NULL, NULL, 'Antipyretics', 'Obsolete', 'BK023', 'None Consumable', 0),
(135, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(136, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(137, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril33', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(138, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(139, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(140, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(141, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(142, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(143, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(144, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(145, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(146, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(147, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril33', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(148, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(149, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(150, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(151, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(152, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(153, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(154, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(155, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(156, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(157, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(158, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(159, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(160, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(161, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(162, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(163, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(164, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(165, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(166, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(167, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(168, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(169, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(170, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(171, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(172, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(173, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(174, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(175, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(176, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(177, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(178, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol5', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(179, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(180, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(181, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(182, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(183, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(184, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(185, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(186, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(187, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(188, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(189, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(190, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(191, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(192, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(193, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(194, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(195, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(196, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(197, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(198, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(199, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(200, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(201, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(202, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(203, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(204, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(205, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(206, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(207, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(208, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(209, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(210, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(211, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(212, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(213, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(214, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(215, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(216, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(217, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(218, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(219, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(220, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(221, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(222, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(223, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(224, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(225, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(226, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(227, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(228, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(229, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(230, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(231, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(232, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(233, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(234, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(235, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin6', NULL, NULL, '45241', NULL, NULL, NULL, NULL, NULL, 'Obsolete', 'B920', NULL, 40000),
(236, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole6', NULL, NULL, '45241', NULL, NULL, NULL, NULL, NULL, 'Obsolete', 'BC291', NULL, 160000),
(237, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril6', NULL, NULL, '45241', NULL, NULL, NULL, NULL, NULL, 'Obsolete', 'BK023', NULL, 360000),
(238, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol6', NULL, NULL, '45241', NULL, NULL, NULL, NULL, NULL, 'Obsolete', 'BK024', NULL, 90000),
(239, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Obsolete', NULL, NULL, 0),
(240, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Obsolete', NULL, NULL, 0),
(241, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Obsolete', NULL, NULL, 0),
(242, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Obsolete', NULL, NULL, 0),
(243, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Obsolete', NULL, NULL, 0),
(244, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Obsolete', NULL, NULL, 0),
(245, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin6', NULL, '', '45241', NULL, NULL, NULL, NULL, 'Anti Malaria', 'Obsolete', 'B920', 'Consumable', 40000),
(246, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(247, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(248, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol6', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(250, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(251, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(252, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(253, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(254, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(255, 'Ciprofloxacin7', 'Ciprofloxacin7', 'Ciprofloxacin7', '0', '0', '200', '', 'None', 0, 0, 0, '', 'Nov-15-2023', 'Ciprofloxacin7', '0', 'Tabs', '11/15/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'B920', 'Consumable', 40000),
(256, 'Metronidazole7', 'Metronidazole7', 'Metronidazole7', '0', '0', '400', '', 'None', 0, 0, 0, '', 'Nov-15-2023', 'Metronidazole7', '0', 'Tabs', '11/15/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'BC291', 'Consumable', 160000),
(257, 'Lisinopril7', 'Lisinopril7', 'Lisinopril7', '0', '0', '600', '', 'None', 0, 0, 0, '', 'Nov-15-2023', 'Lisinopril7', '0', 'Tabs', '11/15/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Obsolete', 'BK023', 'Consumable', 360000),
(258, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol7', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(259, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(260, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(261, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(262, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(263, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(264, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, 'coms', 0),
(265, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin71', NULL, '', '45241', NULL, NULL, NULL, NULL, 'Anti Mala', 'Obsolete', 'B920', '', 40000),
(266, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole71', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(267, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril71', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(268, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol71', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(269, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(270, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(271, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(272, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(273, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(274, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(275, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin7', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(276, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole1', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(277, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril7', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(278, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol7', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(279, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(280, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(281, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(282, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(283, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(284, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(285, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin7', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(286, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole1', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(287, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril7', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(288, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol7', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(289, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(290, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(291, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(292, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(293, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(294, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(295, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin7', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 40000),
(296, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole1', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(297, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril7', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK023', '', 360000),
(298, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol7', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(299, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(300, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(301, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(302, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(303, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(304, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(305, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin11', NULL, '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria', 'Obsolete', 'B920', 'Consumable', 40000),
(306, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole11', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 160000),
(307, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril91', NULL, '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', '', 360000),
(308, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol91', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 90000),
(309, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(310, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(311, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(312, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(313, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(314, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(315, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin11', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 10000),
(316, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole11', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 140000),
(317, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril91', NULL, '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', '', 330000),
(318, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol91', NULL, '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 75000),
(319, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(320, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(321, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(322, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(323, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(324, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(325, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin11', '50', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'B920', '', 10000),
(326, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole11', '350', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria', 'Obsolete', 'BC291', '', 140000),
(327, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril91', '550', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', '', 330000),
(328, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol91', '250', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 75000),
(330, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(331, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(333, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(334, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(335, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin11', '50', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria', 'Obsolete', 'B920', 'Consumable', 10000),
(336, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole11', '350', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 140000),
(337, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril91', '550', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', '', 330000),
(338, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol91', '250', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 75000),
(339, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(340, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(341, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(342, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(343, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(344, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(345, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin11', '50', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria', 'Obsolete', 'B920', 'Consumable', 10000),
(346, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole11', '350', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 140000),
(347, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril91', '550', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', '', 330000),
(348, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol91', '250', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 75000),
(349, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(350, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(351, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(352, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(353, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(354, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(355, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin11', '50', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria', 'Obsolete', 'B920', 'Consumable', 10000),
(356, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole11', '350', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 140000),
(357, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril91', '550', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', '', 330000),
(358, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol91', '250', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 75000);
INSERT INTO `wproducts` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(359, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(360, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(361, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(362, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(363, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(364, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(365, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin11', '50', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria', 'Obsolete', 'B920', 'Consumable', 10000),
(366, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole11', '350', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 140000),
(367, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril91', '550', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', 'Consumable', 330000),
(368, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol91', '250', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 75000),
(369, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(370, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(371, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(372, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(373, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(374, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(375, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin11', '50', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria', 'Obsolete', 'B920', 'Consumable', 10000),
(376, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole11', '350', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 140000),
(377, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril91', '550', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', '', 330000),
(378, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol91', '250', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 75000),
(379, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(380, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(381, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(382, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(383, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(384, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(385, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '45607', '', 'Ciprofloxacin11', '50', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria', 'Obsolete', 'B920', 'Consumable', 10000),
(386, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '45608', '', 'Metronidazole11', '350', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 140000),
(387, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '45974', '', 'Lisinopril91', '550', '', '45241', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', '', 330000),
(388, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '45610', '', 'Atenolol91', '250', '', '45241', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 75000),
(389, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(390, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(391, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(392, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(393, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(394, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(395, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin11', '50', '', '2023-11-11', NULL, NULL, NULL, NULL, 'Anti malaria', 'Obsolete', 'B920', 'Consumable', 10000),
(396, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole11', '350', '', '2023-11-11', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 140000),
(397, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril91', '550', '', '2023-11-11', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', '', 330000),
(398, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol91', '250', '', '2023-11-11', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 75000),
(399, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, '', '1970-01-01', NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(400, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, '', '1970-01-01', NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(401, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, '', '1970-01-01', NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(402, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, '', '1970-01-01', NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(403, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, '', '1970-01-01', NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(404, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, '', '1970-01-01', NULL, NULL, NULL, NULL, '', 'Obsolete', NULL, '', 0),
(405, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '1905-07-16', '', 'Ciprofloxacin11', '25', '', '1905-07-15', NULL, NULL, NULL, NULL, 'Anti malaria', 'Obsolete', 'B920', 'Consumable', 5000),
(406, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '1905-07-16', '', 'Metronidazole11', '325', '', '1905-07-15', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BC291', '', 130000),
(407, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '1905-07-17', '', 'Lisinopril91', '525', '', '1905-07-15', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Obsolete', 'BK023', '', 315000),
(408, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '1905-07-16', '', 'Atenolol91', '225', '', '1905-07-15', NULL, NULL, NULL, NULL, '', 'Obsolete', 'BK024', '', 67500),
(409, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '1905-03-19', '', 'Ciprofloxacin11', '-8', '', '1905-03-19', NULL, NULL, NULL, NULL, 'Anti malaria', 'Active', 'B920', 'Consumable', 4000),
(410, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '1905-03-19', '', 'Metronidazole11', '52', '', '1905-03-19', NULL, NULL, NULL, NULL, '', 'Active', 'BC291', '', 120000),
(411, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '1905-03-19', '', 'Lisinopril91', '367', '', '1905-03-19', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Active', 'BK023', '', 300000),
(412, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '1905-03-19', '', 'Atenolol91', '327', '', '1905-03-19', NULL, NULL, NULL, NULL, '', 'Active', 'BK024', '', 60000),
(413, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '302', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(414, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '838', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(415, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '1497', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(416, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '289', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(417, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(418, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(419, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(420, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(421, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(422, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(423, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(424, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '20', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(425, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '196', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(426, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(427, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(428, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(429, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(430, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(431, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(432, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(433, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(434, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(435, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(436, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(437, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(438, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '396', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(439, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(440, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(441, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(442, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(443, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(444, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(445, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(446, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(447, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(448, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(449, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(450, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '397', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(451, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '596', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(452, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(453, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(454, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(455, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(456, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(457, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(458, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(459, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(460, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(461, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(462, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(463, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(464, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(465, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(466, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(467, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(468, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(469, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(470, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(471, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(472, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(473, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(474, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(475, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(476, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(477, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(478, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(479, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(480, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(481, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(482, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(483, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(484, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(485, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(486, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(487, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(488, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(489, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(490, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(491, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(492, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(493, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(494, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(495, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(496, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(497, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(498, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(499, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(500, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(501, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(502, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(503, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(504, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(505, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(506, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(507, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(508, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(509, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(510, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(511, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(512, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(513, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(514, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(515, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(516, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(517, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(518, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(519, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(520, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(521, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(522, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(523, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(524, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(525, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(526, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(527, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(528, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(529, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(530, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(531, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(532, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(533, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(534, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(535, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '642', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(536, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(537, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(538, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(539, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(540, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(541, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(542, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(543, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(544, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(545, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(546, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(547, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(548, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '300', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(549, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(550, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(551, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(552, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(553, 'Ciprofloxacin888', 'Ciprofloxacin888', 'Ciprofloxacin888', '0', '0', '200', '', 'None', 0, 0, 0, '1905-03-19', 'Nov-28-2023', 'Ciprofloxacin888', '0', 'Tabs', '11/28/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Approved', 'B920', 'Consumable', 0),
(554, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(555, 'Lisinopril99', 'Lisinopril99', 'Lisinopril99', '0', '0', '600', '', 'None', 0, 0, 0, '1905-03-19', 'Nov-28-2023', 'Lisinopril99', '0', 'Tabs', '11/28/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Active', 'BK023', 'Consumable', 0),
(556, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(557, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Panadol', '334', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC821', NULL, 40000),
(558, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Asprine', '384', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC119', NULL, 160000),
(559, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Mabend', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL931', NULL, 360000),
(560, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'alprazolam', '274', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR982', NULL, 90000),
(561, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Amoxicillin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(562, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'atorvastatin ', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(563, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'azithromycin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(564, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'carisoprodol', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(565, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'carvedilol', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BN29133', NULL, 0),
(566, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'cefdinir', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BM932', NULL, 0),
(567, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'celecoxib', '-10', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BH9022', NULL, 0),
(568, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'cephalexin ', '18', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK021', NULL, 0),
(569, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'clonazepam', '177', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B920333', NULL, 40000),
(570, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'clopidogrel', '384', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC2912', NULL, 160000),
(571, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'diazepam', '574', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02333', NULL, 360000),
(572, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Duloxetine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK0243333', NULL, 90000),
(573, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'enalapril', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(574, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'escitalopram', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(575, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'esomeprazole', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(576, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'fenofibrate', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(577, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'fexofenadine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B9030', NULL, 0),
(578, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'folic acid', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BN9222', NULL, 0),
(579, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'furosemide', '20', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK8393', NULL, 0),
(580, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'gabapentin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BJ982', NULL, 0),
(581, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'glimepiride', '104', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(582, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'glipizide', '429', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK9201', NULL, 160000),
(583, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'ibuprophen', '748', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK891', NULL, 360000),
(584, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'lansoprazole', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK0189', NULL, 90000),
(585, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'levofloxacin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(586, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'lovastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(587, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'meloxicam', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(588, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'methylprednisone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(589, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B920221', NULL, 0),
(590, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'mometasone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29122', NULL, 0),
(591, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'montelukast', '30', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02321', NULL, 0),
(592, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'paroxetine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK024121', NULL, 0),
(593, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'pioglitazone', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BG920221', NULL, 40000),
(594, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'pravastatin', '395', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'KC291928', NULL, 160000),
(595, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'prednisone', '598', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BH2921', NULL, 360000),
(596, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'pregabalin', '268', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK8891', NULL, 90000),
(597, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'promethazine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(598, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'quetiapine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(599, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'ranitidine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(600, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'rosuvastatin', '20', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(601, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'simvastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL9382', NULL, 0),
(602, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'spironolactone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29123', NULL, 0),
(603, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'tamsulosin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL02321', NULL, 0),
(604, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'temezepam', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BU29924', NULL, 0),
(605, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'topiramate', '198', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(606, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'tramadol', '396', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BT992', NULL, 160000),
(607, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'valaciclovir', '444', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR89222', NULL, 360000),
(608, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'zolpidem', '278', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02922', NULL, 90000),
(609, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'simvastatin4', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL9382', NULL, 0),
(610, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'spironolactone6', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29123', NULL, 0),
(611, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'tamsulosin3', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL02321', NULL, 0),
(612, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'temezepam3', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BU29924', NULL, 0),
(613, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'topiramate5', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(614, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'tramadol8', '370', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BT992', NULL, 160000),
(615, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'valaciclovir5', '600', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR89222', NULL, 360000),
(616, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'zolpidem2', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02922', NULL, 90000),
(617, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(618, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(619, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(620, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(621, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(622, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(623, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(624, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(625, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(626, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(627, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(628, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(629, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Panadol', '190', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC821', NULL, 40000),
(630, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Asprine', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC119', NULL, 160000),
(631, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Mabend', '1074', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL931', NULL, 360000),
(632, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'alprazolam', '306', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR982', NULL, 90000),
(633, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Amoxicillin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(634, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'atorvastatin ', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(635, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'azithromycin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(636, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'carisoprodol', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(637, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'carvedilol', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BN29133', NULL, 0),
(638, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'cefdinir', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BM932', NULL, 0),
(639, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'celecoxib', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BH9022', NULL, 0),
(640, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'cephalexin ', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK021', NULL, 0),
(641, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'clonazepam', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B920333', NULL, 40000);
INSERT INTO `wproducts` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
(642, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'clopidogrel', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC2912', NULL, 160000),
(643, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'diazepam', '600', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02333', NULL, 360000),
(644, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Duloxetine', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK0243333', NULL, 90000),
(645, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'enalapril', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(646, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'escitalopram', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(647, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'esomeprazole', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(648, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'fenofibrate', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(649, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'fexofenadine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B9030', NULL, 0),
(650, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'folic acid', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BN9222', NULL, 0),
(651, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'furosemide', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK8393', NULL, 0),
(652, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'gabapentin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BJ982', NULL, 0),
(653, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'glimepiride', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(654, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'glipizide', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK9201', NULL, 160000),
(655, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'ibuprophen', '550', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK891', NULL, 360000),
(656, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'lansoprazole', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK0189', NULL, 90000),
(657, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'levofloxacin', '10', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(658, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'lovastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(659, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'meloxicam', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(660, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'methylprednisone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(661, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B920221', NULL, 0),
(662, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'mometasone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29122', NULL, 0),
(663, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'montelukast', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02321', NULL, 0),
(664, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'paroxetine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK024121', NULL, 0),
(665, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'pioglitazone', '192', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BG920221', NULL, 40000),
(666, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'pravastatin', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'KC291928', NULL, 160000),
(667, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'prednisone', '599', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BH2921', NULL, 360000),
(668, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'pregabalin', '296', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK8891', NULL, 90000),
(669, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'promethazine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(670, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'quetiapine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(671, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'ranitidine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(672, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'rosuvastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(673, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'simvastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL9382', NULL, 0),
(674, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'spironolactone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29123', NULL, 0),
(675, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'tamsulosin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL02321', NULL, 0),
(676, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'temezepam', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BU29924', NULL, 0),
(677, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'topiramate', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(678, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'tramadol', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BT992', NULL, 160000),
(679, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'valaciclovir', '600', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR89222', NULL, 360000),
(680, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'zolpidem', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02922', NULL, 90000),
(681, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'simvastatin4', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL9382', NULL, 0),
(682, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'spironolactone6', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29123', NULL, 0),
(683, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'tamsulosin3', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL02321', NULL, 0),
(684, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'temezepam3', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BU29924', NULL, 0),
(685, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'topiramate5', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(686, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'tramadol8', '332', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BT992', NULL, 160000),
(687, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'valaciclovir5', '600', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR89222', NULL, 360000),
(688, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'zolpidem2', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02922', NULL, 90000),
(689, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(690, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(691, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(692, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(693, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(694, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(695, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(696, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(697, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(698, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(699, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(700, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(701, 'Atenolol888', 'Atenolol888', 'Atenolol888', '0', '0', '200', '200', 'None', 0, 0, 0, '1970-01-01', 'Nov-28-2023', 'Atenolol888', '0', 'Tabs', '11/28/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Active', '', 'Consumable', 0),
(702, 'Metronidazole10', '', 'Metronidazole10', '0', '0', '400', '322', 'whitestar', 0, 45, 0, '2025-11-29', 'Metronidazole10', 'Metronidazole10', '45', 'cash', '2023-11-29', NULL, '14500', NULL, 45, NULL, 'Active', 'b345sd', NULL, 0),
(703, 'Metronidazole10', '', 'Metronidazole10', '0', '0', '400', '350', 'whitestar', 0, 2, 0, '2023-11-28', 'Metronidazole10', 'Metronidazole10', '2', 'cash', '2023-11-30', NULL, '700', NULL, 2, NULL, 'Active', 'bt43222', NULL, 0),
(704, 'Atenolol91', '', 'Atenolol91', '0', '0', '300', '6990', 'whitestar', 0, 70, 0, '2026-12-04', 'Atenolol91', 'Atenolol91', '70', 'cash', '2023-11-30', NULL, '489300.00', NULL, 70, '', 'Active', 'BV322', NULL, 0),
(705, 'azithromycin', '', 'azithromycin', '0', '0', NULL, '173', 'whitestar', 0, 80, 0, '2025-11-29', 'azithromycin', 'azithromycin', '0', 'cash', '2023-11-29', NULL, '13900', NULL, 80, 'PainKiller', 'Active', 'BF4322', NULL, 0),
(706, 'celecoxib', '', 'celecoxib', '0', '0', NULL, '180', 'whitestar', 0, 90, 0, '2024-11-30', 'celecoxib', 'celecoxib', '86', 'cash', '2023-11-29', NULL, '16200.00', NULL, 90, 'PainKiller', 'Active', 'BJ09322', NULL, 0),
(707, 'Metronidazole11', '', 'Metronidazole11', '0', '0', '400', '300', 'whitestar', 0, 500, 0, '2024-12-03', 'Metronidazole11', 'Metronidazole11', '500', 'credit', '2023-12-03', NULL, '150000.00', NULL, 500, '', 'Active', 'BIL0932', NULL, 0),
(708, 'Atenolol91', '', 'Atenolol91', '0', '0', '300', '500', 'whitestar', 0, 140, 0, '2024-12-03', 'Atenolol91', 'Atenolol91', '140', 'credit', '2023-12-03', NULL, '70000.00', NULL, 140, '', 'Active', 'BHJ983', NULL, 0),
(709, 'celecoxib', '', 'celecoxib', '0', '0', NULL, '200', 'whitestar', 0, 500, 0, '2024-01-03', 'celecoxib', 'celecoxib', '400', 'credit', '2023-12-03', NULL, '100000.00', NULL, 500, 'PainKiller', 'Active', 'BH78322', NULL, 0),
(710, 'ibuprophen', '', 'ibuprophen', '0', '0', '600', '400', 'whitestar', 0, 900, 0, '2024-01-06', 'ibuprophen', 'ibuprophen', '900', 'credit', '2023-12-03', NULL, '360000.00', NULL, 900, 'PainKiller', 'Active', 'BJJL0393', NULL, 0),
(711, 'alprazolam', '', 'alprazolam', '0', '0', '300', '1000', 'Super Medic', 0, 2, 0, '2024-12-30', 'alprazolam', 'alprazolam', '0', 'credit', '2023-12-30', NULL, '2000.00', NULL, 2, 'PainKiller', 'Active', '6', NULL, 0),
(712, 'furosemide', '', 'furosemide', '0', '0', NULL, '400', 'Super Medic', 0, 4, 0, '2025-12-30', 'furosemide', 'furosemide', '3', 'credit', '2023-12-30', NULL, '1600.00', NULL, 4, 'PainKiller', 'Active', '22', NULL, 0),
(713, 'carisoprodol', '', 'carisoprodol', '0', '0', NULL, '300', 'Super Medic', 0, 30, 0, '2025-12-30', 'carisoprodol', 'carisoprodol', '25', 'credit', '2023-12-30', NULL, '9000.00', NULL, 30, 'PainKiller', 'Active', '5', NULL, 0),
(714, 'Metronidazole11', '', 'Metronidazole11', '0', '0', '400', '300', 'Super Medic', 0, 100, 0, '2024-12-30', 'Metronidazole11', 'Metronidazole11', '100', 'credit', '2023-12-30', NULL, '30000.00', NULL, 100, '', 'Active', '4e', NULL, 0),
(715, 'Ciprofloxacin10', '', 'Ciprofloxacin10', '0', '0', '200', '300', 'Super Medic', 0, 100, 0, '2024-12-30', 'Ciprofloxacin10', 'Ciprofloxacin10', '100', 'credit', '2023-12-30', NULL, '30000.00', NULL, 100, NULL, 'Active', '3', NULL, 0),
(716, 'zolpidem', '', 'zolpidem', '0', '0', '300', '500', 'Super Medic', 0, 20, 0, '2024-12-30', 'zolpidem', 'zolpidem', '20', 'credit', '2023-12-30', NULL, '10000', NULL, 20, 'PainKiller', 'Active', '2', NULL, 0),
(717, 'Asprine', '', 'Asprine', '0', '0', '400', '200', 'Super Medic', 0, 50, 0, '2024-12-30', 'Asprine', 'Asprine', '50', 'credit', '2023-12-30', NULL, '10000', NULL, 50, 'PainKiller', 'Active', '23', NULL, 0),
(718, 'clopidogrel', '', 'clopidogrel', '0', '0', '400', '200', 'Super Medic', 0, 12, 0, '2023-12-30', 'clopidogrel', 'clopidogrel', '12', 'credit', '2023-12-30', NULL, '2400.00', NULL, 12, 'PainKiller', 'Active', '79i9', NULL, 0),
(719, 'meloxicam', '', 'meloxicam', '0', '0', NULL, '466', 'Super Medic', 0, 30, 0, '2024-12-30', 'meloxicam', 'meloxicam', '15', 'credit', '2023-12-30', NULL, '14000', NULL, 30, 'PainKiller', 'Active', '8i8', NULL, 0),
(720, 'celecoxib', '', 'celecoxib', '0', '0', NULL, '233', 'Super Medic', 0, 30, 0, '2024-12-30', 'celecoxib', 'celecoxib', '30', 'credit', '2023-12-30', NULL, '7000', NULL, 30, 'PainKiller', 'Active', 'p', NULL, 0),
(721, 'glimepiride', '', 'glimepiride', '0', '0', '200', '1000', 'Super Medic', 0, 30, 0, '2024-12-30', 'glimepiride', 'glimepiride', '30', 'credit', '2023-12-30', NULL, '30000', NULL, 30, 'PainKiller', 'Active', 'o', NULL, 0),
(722, 'fexofenadine', '', 'fexofenadine', '0', '0', NULL, '200', 'Super Medic', 0, 30, 0, '2024-12-30', 'fexofenadine', 'fexofenadine', '20', 'credit', '2023-12-30', NULL, '6000', NULL, 30, 'PainKiller', 'Active', 'y', NULL, 0),
(723, 'clonazepam', '', 'clonazepam', '0', '0', '200', '1333', 'Super Medic', 0, 15, 0, '2024-12-30', 'clonazepam', 'clonazepam', '15', 'credit', '2023-12-30', NULL, '20000', NULL, 15, 'PainKiller', 'Active', 'l', NULL, 0),
(724, 'ibuprophen', '', 'ibuprophen', '0', '0', '600', '223', 'Super Medic', 0, 30, 0, '2024-12-30', 'ibuprophen', 'ibuprophen', '30', 'credit', '2023-12-30', NULL, '6700', NULL, 30, 'PainKiller', 'Active', '8', NULL, 0),
(725, 'azithromycin', '', 'azithromycin', '0', '0', NULL, '750', 'Super Medic', 0, 20, 0, '0025-12-30', 'azithromycin', 'azithromycin', '8', 'credit', '2023-12-30', NULL, '15000', NULL, 20, 'PainKiller', 'Active', '5787', NULL, 0),
(726, 'Mabend', '', 'Mabend', '0', '0', '600', '500', 'Super Medic', 0, 100, 0, '2025-12-30', 'Mabend', 'Mabend', '100', 'credit', '2023-12-30', NULL, '50000.00', NULL, 100, 'PainKiller', 'Active', '7u', NULL, 0),
(727, 'alprazolam', '', 'alprazolam', '0', '0', '300', '2300', 'abacus pharmacy', 0, 20, 0, '2024-12-30', 'alprazolam', 'alprazolam', '20', 'credit', '2023-12-09', NULL, '46000.00', NULL, 20, 'PainKiller', 'Active', 'h', NULL, 0),
(728, 'carisoprodol', '', 'carisoprodol', '0', '0', NULL, '933', 'abacus pharmacy', 0, 30, 0, '2025-11-30', 'carisoprodol', 'carisoprodol', '30', 'credit', '2023-12-09', NULL, '28000', NULL, 30, 'PainKiller', 'Active', 'ty4rh', NULL, 0),
(729, 'Metronidazole11', '', 'Metronidazole11', '0', '0', '400', '766', 'abacus pharmacy', 0, 30, 0, '2024-11-30', 'Metronidazole11', 'Metronidazole11', '30', 'credit', '2023-12-09', NULL, '23000', NULL, 30, '', 'Active', 'RTGDSF', NULL, 0),
(730, 'Ciprofloxacin11', '', 'Ciprofloxacin11', '0', '0', '200', '1350', 'abacus pharmacy', 0, 20, 0, '2024-11-30', 'Ciprofloxacin11', 'Ciprofloxacin11', '20', 'credit', '2023-12-09', NULL, '27000', NULL, 20, 'Anti malaria', 'Active', 'rer', NULL, 0),
(731, 'zolpidem', '', 'zolpidem', '0', '0', '300', '1233', 'abacus pharmacy', 0, 30, 0, '2024-11-30', 'zolpidem', 'zolpidem', '30', 'credit', '2023-12-09', NULL, '37000', NULL, 30, 'PainKiller', 'Active', 'rg', NULL, 0),
(732, 'tramadol', '', 'tramadol', '0', '0', '400', '3375', 'abacus pharmacy', 0, 40, 0, '2024-11-30', 'tramadol', 'tramadol', '40', 'credit', '2023-12-09', NULL, '135000', NULL, 40, 'PainKiller', 'Active', 'UTYFUTYJU', NULL, 0),
(733, 'clopidogrel', '', 'clopidogrel', '0', '0', '400', '1100', 'abacus pharmacy', 0, 50, 0, '2025-11-30', 'clopidogrel', 'clopidogrel', '50', 'credit', '2023-12-09', NULL, '55000', NULL, 50, 'PainKiller', 'Active', '7THYFTHDF', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpurchases_ret`
--

CREATE TABLE `wpurchases_ret` (
  `transaction_id` int(11) NOT NULL,
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
  `amt_paid` int(11) DEFAULT NULL,
  `tme` varchar(255) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `batch_no` varchar(266) DEFAULT NULL,
  `productid` varchar(266) DEFAULT NULL,
  `total` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL,
  `quantity` varchar(266) DEFAULT NULL,
  `exp_date` varchar(266) DEFAULT NULL,
  `suplier_id` varchar(266) DEFAULT NULL,
  `med_name` varchar(255) DEFAULT NULL,
  `return_invoice` varchar(255) DEFAULT NULL,
  `vouch_type` varchar(255) DEFAULT 'Purchases'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wpurchases_ret`
--

INSERT INTO `wpurchases_ret` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `exp_date`, `suplier_id`, `med_name`, `return_invoice`, `vouch_type`) VALUES
(1, '087', 'admin', NULL, 'credit', '1000', '1000', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:22', '2023-12-30', '6', '560', '2000.00', 'credit', '2', '2024-12-30', '4', 'alprazolam', NULL, 'Purchases'),
(2, '087', 'admin', NULL, 'credit', '400', '400', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:22', '2023-12-30', '22', '579', '1600.00', 'credit', '4', '2025-12-30', '4', 'furosemide', NULL, 'Purchases'),
(3, '087', 'admin', NULL, 'credit', '35', '35', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:22', '2023-12-30', '6', '557', '3500.00', 'credit', '100', '2024-12-30', '4', 'Panadol', NULL, 'Purchases'),
(4, '087', 'admin', NULL, 'credit', '300', '300', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:22', '2023-12-30', '5', '564', '9000.00', 'credit', '30', '2025-12-30', '4', 'carisoprodol', NULL, 'Purchases'),
(5, '087', 'admin', NULL, 'credit', '300', '300', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:22', '2023-12-30', '4e', '410', '30000.00', 'credit', '100', '2024-12-30', '4', 'Metronidazole11', NULL, 'Purchases'),
(6, '087', 'admin', NULL, 'credit', '300', '300', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:22', '2023-12-30', '3', '413', '30000.00', 'credit', '100', '2024-12-30', '4', 'Ciprofloxacin10', NULL, 'Purchases'),
(7, '087', 'admin', NULL, 'credit', '500.00', '500', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:22', '2023-12-30', '2', '608', '10000', 'credit', '20', '2024-12-30', '4', 'zolpidem', NULL, 'Purchases'),
(8, '087', 'admin', NULL, 'credit', '266.67', '266', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', '2', '600', '8000', 'credit', '30', '2024-12-30', '4', 'rosuvastatin', NULL, 'Purchases'),
(9, '087', 'admin', NULL, 'credit', '200.00', '200', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', '3', '686', '6000', 'credit', '30', '2024-12-30', '4', 'tramadol8', NULL, 'Purchases'),
(10, '087', 'admin', NULL, 'credit', '200.00', '200', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', '23', '558', '10000', 'credit', '50', '2024-12-30', '4', 'Asprine', NULL, 'Purchases'),
(11, '087', 'admin', NULL, 'credit', '200', '200', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', '79i9', '570', '2400.00', 'credit', '12', '2023-12-30', '4', 'clopidogrel', NULL, 'Purchases'),
(12, '087', 'admin', NULL, 'credit', '466.67', '466', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', '8i8', '587', '14000', 'credit', '30', '2024-12-30', '4', 'meloxicam', NULL, 'Purchases'),
(13, '087', 'admin', NULL, 'credit', '233.33', '233', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', 'p', '639', '7000', 'credit', '30', '2024-12-30', '4', 'celecoxib', NULL, 'Purchases'),
(14, '087', 'admin', NULL, 'credit', '416.67', '416', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', 'p', '591', '25000', 'credit', '60', '2025-12-30', '4', 'montelukast', NULL, 'Purchases'),
(15, '087', 'admin', NULL, 'credit', '1000.00', '1000', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', 'o', '581', '30000', 'credit', '30', '2024-12-30', '4', 'glimepiride', NULL, 'Purchases'),
(16, '087', 'admin', NULL, 'credit', '400.00', '400', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', 'p', '568', '12000', 'credit', '30', '2024-12-30', '4', 'cephalexin ', NULL, 'Purchases'),
(17, '087', 'admin', NULL, 'credit', '200.00', '200', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', 'y', '577', '6000', 'credit', '30', '2024-12-30', '4', 'fexofenadine', NULL, 'Purchases'),
(18, '087', 'admin', NULL, 'credit', '1333.33', '1333', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:23', '2023-12-30', 'l', '569', '20000', 'credit', '15', '2024-12-30', '4', 'clonazepam', NULL, 'Purchases'),
(19, '087', 'admin', NULL, 'credit', '233.33', '233', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:24', '2023-12-30', 'p', '657', '7000', 'credit', '30', '2024-12-30', '4', 'levofloxacin', NULL, 'Purchases'),
(20, '087', 'admin', NULL, 'credit', '223.33', '223', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:24', '2023-12-30', '8', '710', '6700', 'credit', '30', '2024-12-30', '4', 'ibuprophen', NULL, 'Purchases'),
(21, '087', 'admin', NULL, 'credit', '750.00', '750', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:24', '2023-12-30', '5787', '705', '-30000', 'credit', '16', '0025-12-30', '4', 'azithromycin', NULL, 'Purchases'),
(22, '087', 'admin', NULL, 'credit', '350.00', '350', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:24', '2023-12-30', 'p', '424', '7000', 'credit', '20', '2024-12-30', '4', 'Atenolol10', NULL, 'Purchases'),
(23, '087', 'admin', NULL, 'credit', '500', '500', '2023-12-09', 'Super Medic', '0', NULL, NULL, '12:41:24', '2023-12-30', '7u', '559', '-100000', 'credit', '96', '2025-12-30', '4', 'Mabend', NULL, 'Purchases'),
(24, '6576', 'admin', NULL, 'credit', '2300', '2300', '2023-12-09', 'abacus pharmacy', '0', NULL, NULL, '16:24:36', '2023-12-09', 'h', '560', '23000', 'credit', '10', '2024-12-30', '5', 'alprazolam', NULL, 'Purchases'),
(25, '6576', 'admin', NULL, 'credit', '350', '350', '2023-12-09', 'abacus pharmacy', '0', NULL, NULL, '16:24:37', '2023-12-09', '6', '579', '-4.799999999999272', 'credit', '20', '2024-12-30', '5', 'furosemide', NULL, 'Purchases'),
(26, '6576', 'admin', NULL, 'credit', '2230', '2230', '2023-12-09', 'abacus pharmacy', '0', NULL, NULL, '16:24:37', '2023-12-09', '8', '557', '89200.00', 'credit', '40', '2024-12-30', '5', 'Panadol', NULL, 'Purchases'),
(27, '6576', 'admin', NULL, 'credit', '933.33', '933', '2023-12-09', 'abacus pharmacy', '0', NULL, NULL, '16:24:37', '2023-12-09', 'ty4rh', '564', '28000', 'credit', '30', '2025-11-30', '5', 'carisoprodol', NULL, 'Purchases'),
(28, '6576', 'admin', NULL, 'credit', '766.67', '766', '2023-12-09', 'abacus pharmacy', '0', NULL, NULL, '16:24:37', '2023-12-09', 'RTGDSF', '410', '7620', 'credit', '10', '2024-11-30', '5', 'Metronidazole11', NULL, 'Purchases'),
(29, '6576', 'admin', NULL, 'credit', '1350.00', '1350', '2023-12-09', 'abacus pharmacy', '0', NULL, NULL, '16:24:38', '2023-12-09', 'rer', '409', '13500', 'credit', '10', '2024-11-30', '5', 'Ciprofloxacin11', NULL, 'Purchases'),
(30, '6576', 'admin', NULL, 'credit', '1233.33', '1233', '2023-12-09', 'abacus pharmacy', '0', NULL, NULL, '16:24:38', '2023-12-09', 'rg', '608', '0', 'credit', '20', '2024-11-30', '5', 'zolpidem', NULL, 'Purchases'),
(31, '6576', 'admin', NULL, 'credit', '933.33', '933', '2023-12-09', 'abacus pharmacy', '0', NULL, NULL, '16:24:38', '2023-12-09', '6', '600', '13000', 'credit', '0', '2024-11-30', '5', 'rosuvastatin', NULL, 'Purchases'),
(32, '6576', 'admin', NULL, 'credit', '3375.00', '3375', '2023-12-09', 'abacus pharmacy', '0', NULL, NULL, '16:24:38', '2023-12-09', 'UTYFUTYJU', '606', '135000', 'credit', '40', '2024-11-30', '5', 'tramadol', NULL, 'Purchases'),
(33, '6576', 'admin', NULL, 'credit', '1100.00', '1100', '2023-12-09', 'abacus pharmacy', '0', NULL, NULL, '16:24:38', '2023-12-09', '7THYFTHDF', '570', '55000', 'credit', '50', '2025-11-30', '5', 'clopidogrel', NULL, 'Purchases'),
(34, '6576', 'admin', NULL, 'cash', '2300', '2300', '2023-12-11', 'abacus pharmacy', '0', NULL, NULL, '13:09:01', '2023-12-09', 'h', '560', '23000.00', 'cash', '10', '2024-12-30', '5', 'alprazolam', 'RT-70430', 'Credit Note'),
(35, '6576', 'admin', NULL, 'cash', '769', '769', '2023-12-11', 'abacus pharmacy', '0', NULL, NULL, '13:09:02', '2023-12-09', 'RTGDSF', '410', '15380.00', 'cash', '20', '2024-11-30', '5', 'Metronidazole11', 'RT-70430', 'Credit Note'),
(36, '6576', 'admin', NULL, 'cash', '1350', '1350', '2023-12-11', 'abacus pharmacy', '0', NULL, NULL, '13:09:02', '2023-12-09', 'rer', '409', '13500.00', 'cash', '10', '2024-11-30', '5', 'Ciprofloxacin11', 'RT-70430', 'Credit Note'),
(37, '6576', 'admin', NULL, 'cash', '500', '500', '2023-12-11', 'abacus pharmacy', '0', NULL, NULL, '13:09:02', '2023-12-09', '6', '600', '15000.00', 'cash', '30', '2024-11-30', '5', 'rosuvastatin', 'RT-70430', 'Credit Note'),
(38, '6576', 'admin', NULL, 'cash', '3700.00', '3700', '2023-12-11', 'abacus pharmacy', '0', NULL, NULL, '13:13:49', '2023-12-09', 'rg', '608', '37000.00', 'cash', '10', '2024-11-30', '5', 'zolpidem', 'RT-2327229', 'Credit Note'),
(39, '6576', 'admin', NULL, 'cash', '1050.48', '1050', '2023-12-11', 'abacus pharmacy', '0', NULL, NULL, '13:13:49', '2023-12-09', '6', '579', '10504.80', 'cash', '10', '2024-12-30', '5', 'furosemide', 'RT-2327229', 'Credit Note'),
(40, '087', 'admin', NULL, 'credit', '7500.00', '7500', '2023-12-11', 'Super Medic', '0', NULL, NULL, '16:06:37', '2023-12-30', '5787', '705', '15000.00', 'credit', '0', '0025-12-30', '4', 'azithromycin', 'RT-33000002', 'Credit Note'),
(41, '087', 'admin', NULL, 'credit', '25000.00', '25000', '2023-12-11', 'Super Medic', '0', NULL, NULL, '16:06:37', '2023-12-30', '7u', '559', '50000.00', 'credit', '0', '2025-12-30', '4', 'Mabend', 'RT-33000002', 'Credit Note'),
(42, '087', 'admin', NULL, 'credit', '7500.00', '7500', '2023-12-11', 'Super Medic', '0', NULL, NULL, '16:08:24', '2023-12-30', '5787', '705', '15000.00', 'credit', '2', '0025-12-30', '4', 'azithromycin', 'RT-33000002', 'Credit Note'),
(43, '087', 'admin', NULL, 'credit', '25000.00', '25000', '2023-12-11', 'Super Medic', '0', NULL, NULL, '16:08:25', '2023-12-30', '7u', '559', '50000.00', 'credit', '2', '2025-12-30', '4', 'Mabend', 'RT-33000002', 'Credit Note'),
(44, '087', 'admin', NULL, 'credit', '7500.00', '7500', '2023-12-11', 'Super Medic', '0', NULL, NULL, '16:40:31', '2023-12-30', '5787', '705', '15000.00', 'credit', '2', '0025-12-30', '4', 'azithromycin', 'RT-33000002', 'Credit Note'),
(45, '087', 'admin', NULL, 'credit', '25000.00', '25000', '2023-12-11', 'Super Medic', '0', NULL, NULL, '16:40:32', '2023-12-30', '7u', '559', '50000.00', 'credit', '2', '2025-12-30', '4', 'Mabend', 'RT-33000002', 'Credit Note');

-- --------------------------------------------------------

--
-- Table structure for table `wpurch_revenue`
--

CREATE TABLE `wpurch_revenue` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `credit` int(11) DEFAULT 0,
  `cash` int(11) DEFAULT 0,
  `pay_type` varchar(255) DEFAULT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wpurch_revenue`
--

INSERT INTO `wpurch_revenue` (`suplier_id`, `suplier_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(4, 'Super Medic', 40000, 0, 'credit', '2023-12-30'),
(5, 'abacus pharmacy', 478700, -114384, 'cash', '2023-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `wsales`
--

CREATE TABLE `wsales` (
  `transaction_id` int(11) NOT NULL,
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
  `amt_paid` int(11) DEFAULT NULL,
  `tme` varchar(255) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `batch_no` varchar(266) DEFAULT NULL,
  `productid` varchar(266) DEFAULT NULL,
  `total` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL,
  `quantity` varchar(266) DEFAULT NULL,
  `customer_id` varchar(266) DEFAULT NULL,
  `expiry_date` varchar(266) DEFAULT NULL,
  `vouch_type` varchar(255) DEFAULT 'Sales',
  `med_name` varchar(2550) DEFAULT NULL,
  `return_invoice` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wsales`
--

INSERT INTO `wsales` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `customer_id`, `expiry_date`, `vouch_type`, `med_name`, `return_invoice`) VALUES
(1, 'RS-32403335', 'admin', NULL, 'credit', '500', '500', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:19', '2023-12-30', 'BR982', '560', '0', 'credit', '16', '3', '2024-11-14', 'Sales', 'alprazolam', NULL),
(2, 'RS-32403335', 'admin', NULL, 'credit', '2000', '2000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:20', '2023-12-30', '6', '711', '4000.00', 'credit', '2', '3', '2024-12-30', 'Sales', 'alprazolam', NULL),
(3, 'RS-32403335', 'admin', NULL, 'credit', '2000', '2000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:20', '2023-12-30', '22', '712', '0', 'credit', '1', '3', '2025-12-30', 'Sales', 'furosemide', NULL),
(4, 'RS-32403335', 'admin', NULL, 'credit', '500', '500', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:20', '2023-12-30', 'BC821', '557', '-1500', 'credit', '2', '3', '2024-11-11', 'Sales', 'Panadol', NULL),
(5, 'RS-32403335', 'admin', NULL, 'credit', '500', '500', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:20', '2023-12-30', '5', '713', '2500', 'credit', '5', '3', '2025-12-30', 'Sales', 'carisoprodol', NULL),
(6, 'RS-32403335', 'admin', NULL, 'credit', '1000', '1000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:20', '2023-12-30', 'BC291', '410', '200000.00', 'credit', '200', '3', '1905-03-19', 'Sales', 'Metronidazole11', NULL),
(7, 'RS-32403335', 'admin', NULL, 'credit', '1000', '1000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:20', '2023-12-30', 'B920', '413', '0', 'credit', '5', '3', '2024-11-11', 'Sales', 'Ciprofloxacin10', NULL),
(8, 'RS-32403335', 'admin', NULL, 'credit', '200', '200', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:20', '2023-12-30', 'BK02922', '608', '2000.00', 'credit', '10', '3', '2024-11-14', 'Sales', 'zolpidem', NULL),
(9, 'RS-32403335', 'admin', NULL, 'credit', '2000', '2000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:20', '2023-12-30', '', '600', '20000.00', 'credit', '10', '3', '1970-01-01', 'Sales', 'rosuvastatin', NULL),
(10, 'RS-32403335', 'admin', NULL, 'credit', '1000', '1000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'BT992', '614', '10000.00', 'credit', '10', '3', '2024-11-12', 'Sales', 'tramadol8', NULL),
(11, 'RS-32403335', 'admin', NULL, 'credit', '50', '50', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'BC119', '558', '500.00', 'credit', '10', '3', '2024-11-12', 'Sales', 'Asprine', NULL),
(12, 'RS-32403335', 'admin', NULL, 'credit', '50', '50', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'BC2912', '570', '600.00', 'credit', '12', '3', '2024-11-12', 'Sales', 'clopidogrel', NULL),
(13, 'RS-32403335', 'admin', NULL, 'credit', '3000', '3000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', '8i8', '719', '45000.00', 'credit', '15', '3', '2024-12-30', 'Sales', 'meloxicam', NULL),
(14, 'RS-32403335', 'admin', NULL, 'credit', '199', '199', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'BH78322', '709', '19900.00', 'credit', '100', '3', '2024-01-03', 'Sales', 'celecoxib', NULL),
(15, 'RS-32403335', 'admin', NULL, 'credit', '900.00', '900', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'BK02321', '591', '27000', 'credit', '30', '3', '1970-01-01', 'Sales', 'montelukast', NULL),
(16, 'RS-32403335', 'admin', NULL, 'credit', '2233.33', '2233', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'B92023', '581', '67000', 'credit', '30', '3', '2024-11-11', 'Sales', 'glimepiride', NULL),
(17, 'RS-32403335', 'admin', NULL, 'credit', '1666.67', '1666', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'BK021', '568', '20000', 'credit', '12', '3', '1970-01-01', 'Sales', 'cephalexin ', NULL),
(18, 'RS-32403335', 'admin', NULL, 'credit', '20000', '20000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'y', '722', '200000.00', 'credit', '10', '3', '2024-12-30', 'Sales', 'fexofenadine', NULL),
(19, 'RS-32403335', 'admin', NULL, 'credit', '2300', '2300', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'B920333', '569', '34500.00', 'credit', '15', '3', '2024-11-11', 'Sales', 'clonazepam', NULL),
(20, 'RS-32403335', 'admin', NULL, 'credit', '1000', '1000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'ee', '657', '20000.00', 'credit', '20', '3', '1970-01-01', 'Sales', 'levofloxacin', NULL),
(21, 'RS-32403335', 'admin', NULL, 'credit', '5000', '5000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'BK891', '655', '100000.00', 'credit', '20', '3', '2025-11-13', 'Sales', 'ibuprophen', NULL),
(22, 'RS-32403335', 'admin', NULL, 'credit', '1000', '1000', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', '5787', '725', '12000.00', 'credit', '12', '3', '0025-12-30', 'Sales', 'azithromycin', NULL),
(23, 'RS-32403335', 'admin', NULL, 'credit', '950', '950', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'BK024', '412', '11400.00', 'credit', '12', '3', '1905-03-19', 'Sales', 'Atenolol91', NULL),
(24, 'RS-32403335', 'admin', NULL, 'credit', '200', '200', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:03:21', '2023-12-30', 'BL931', '559', '19400.00', 'credit', '97', '3', '2025-11-13', 'Sales', 'Mabend', NULL),
(25, 'RS-32403335', 'admin', NULL, 'credit', '1049.69', '1049', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '17:04:29', '2023-12-09', 'BR982', '560', '15000', 'credit', '14', '3', '2024-11-14', 'Credit Note', 'alprazolam', 'RT-3368320'),
(26, 'RS-32403335', 'admin', NULL, 'credit', '500', '500', '2023-12-09', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '17:04:29', '2023-12-09', '5', '713', '2500.00', 'credit', '5', '3', '2025-12-30', 'Credit Note', 'carisoprodol', 'RT-3368320'),
(27, 'RS-32403335', 'admin', NULL, 'credit', '1000.00', '1000', '2023-12-11', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:20:57', '2023-12-09', 'BC821', '557', '5000.00', 'credit', '5', '3', '2024-11-11', 'Credit Note', 'Panadol', 'RT-362340'),
(28, 'RS-32403335', 'admin', NULL, 'credit', '2000.00', '2000', '2023-12-11', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:20:57', '2023-12-09', 'B920', '413', '10000.00', 'credit', '5', '3', '2024-11-11', 'Credit Note', 'Ciprofloxacin10', 'RT-362340'),
(29, 'RS-32403335', 'admin', NULL, 'credit', '500', '500', '2023-12-11', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:28:30', '2023-12-09', 'BC821', '557', '1500.00', 'credit', '3', '3', '2024-11-11', 'Credit Note', 'Panadol', 'RT-32323'),
(30, 'RS-32403335', 'admin', NULL, 'credit', '4000.00', '4000', '2023-12-11', 'FAYHA MEDICAL CENTER', '0', NULL, NULL, '13:28:30', '2023-12-09', '22', '712', '4000.00', 'credit', '1', '3', '2025-12-30', 'Credit Note', 'furosemide', 'RT-32323');

-- --------------------------------------------------------

--
-- Table structure for table `wunit`
--

CREATE TABLE `wunit` (
  `unit_id` int(11) NOT NULL,
  `unit` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wunit`
--

INSERT INTO `wunit` (`unit_id`, `unit`) VALUES
(629, NULL),
(630, 'Syrup'),
(631, 'Gell'),
(632, 'Cream'),
(633, 'Oitments'),
(634, 'Bottles'),
(635, 'Gelletins'),
(636, 'Pessories'),
(637, 'Capsules'),
(639, 'Ampules'),
(640, 'Vials'),
(641, 'Drops'),
(642, 'Sprays'),
(643, 'Stp'),
(644, 'Sachet'),
(645, 'Unit'),
(646, 'Tube'),
(649, 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advanced_payment`
--
ALTER TABLE `advanced_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `credit_payhist`
--
ALTER TABLE `credit_payhist`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `cust_payhist`
--
ALTER TABLE `cust_payhist`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `cust_retpayhist`
--
ALTER TABLE `cust_retpayhist`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

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
-- Indexes for table `medical_allowance`
--
ALTER TABLE `medical_allowance`
  ADD PRIMARY KEY (`allowance_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`overtime_id`),
  ADD KEY `emp_id` (`emp_id`);

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
-- Indexes for table `purchases_ret`
--
ALTER TABLE `purchases_ret`
  ADD PRIMARY KEY (`transaction_id`);

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
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_emp_id` (`emp_id`);

--
-- Indexes for table `wcategory`
--
ALTER TABLE `wcategory`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `wcredit_payhist`
--
ALTER TABLE `wcredit_payhist`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `wproducts`
--
ALTER TABLE `wproducts`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `wpurchases_ret`
--
ALTER TABLE `wpurchases_ret`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `wsales`
--
ALTER TABLE `wsales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `wunit`
--
ALTER TABLE `wunit`
  ADD PRIMARY KEY (`unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advanced_payment`
--
ALTER TABLE `advanced_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_payhist`
--
ALTER TABLE `credit_payhist`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cust_payhist`
--
ALTER TABLE `cust_payhist`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cust_retpayhist`
--
ALTER TABLE `cust_retpayhist`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `equity`
--
ALTER TABLE `equity`
  MODIFY `equity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `liabilities`
--
ALTER TABLE `liabilities`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medical_allowance`
--
ALTER TABLE `medical_allowance`
  MODIFY `allowance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `overtime`
--
ALTER TABLE `overtime`
  MODIFY `overtime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2190;

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
-- AUTO_INCREMENT for table `purchases_ret`
--
ALTER TABLE `purchases_ret`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=650;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wcategory`
--
ALTER TABLE `wcategory`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT for table `wcredit_payhist`
--
ALTER TABLE `wcredit_payhist`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wproducts`
--
ALTER TABLE `wproducts`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=734;

--
-- AUTO_INCREMENT for table `wpurchases_ret`
--
ALTER TABLE `wpurchases_ret`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `wsales`
--
ALTER TABLE `wsales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wunit`
--
ALTER TABLE `wunit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=650;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advanced_payment`
--
ALTER TABLE `advanced_payment`
  ADD CONSTRAINT `advanced_payment_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE;

--
-- Constraints for table `medical_allowance`
--
ALTER TABLE `medical_allowance`
  ADD CONSTRAINT `medical_allowance_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE;

--
-- Constraints for table `overtime`
--
ALTER TABLE `overtime`
  ADD CONSTRAINT `overtime_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_emp_id` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
