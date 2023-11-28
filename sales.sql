-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2023 at 02:44 PM
-- Server version: 8.0.35-0ubuntu0.22.04.1
-- PHP Version: 8.1.25

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
-- Table structure for table `advanced_payment`
--

CREATE TABLE `advanced_payment` (
  `payment_id` int NOT NULL,
  `emp_id` int NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `advanced_payment`
--

INSERT INTO `advanced_payment` (`payment_id`, `emp_id`, `payment_date`, `amount`, `fname`, `lname`) VALUES
(1, 7, '2023-11-13', '11000.00', 'Mins', 'Mins'),
(2, 7, '2023-11-13', '13000.00', 'Mins', 'Mins'),
(3, 8, '2023-11-13', '15000.00', 'Mins3', 'Mins3');

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
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `cat` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `cat`) VALUES
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
-- Dumping data for table `creditnote`
--

INSERT INTO `creditnote` (`invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `customer_id`) VALUES
('RS-8053222', 'admin', NULL, 'cash', '4500.00', '4450', '2023-11-09', 'Karem3', '0', NULL, NULL, '11:51:47', '2023-11-09', '', '10', '9000', 'cash', '2', '10'),
('RS-8053222', 'admin', NULL, 'cash', '2000.00', '1100', '2023-11-09', 'Karem3', '0', NULL, NULL, '11:51:47', '2023-11-09', 'B111', '4', '6000', 'cash', '3', '10'),
('RS-30280335', 'admin', NULL, 'credit', '30000.00', '29800', '2023-11-09', 'Karem3', '0', NULL, NULL, '11:52:47', '2023-11-09', '', '12', '60000', 'credit', '2', '10'),
('RS-30280335', 'admin', NULL, 'credit', '9000.00', '8950', '2023-11-09', 'Karem3', '0', NULL, NULL, '11:52:47', '2023-11-09', 'B123', '53', '9000', 'credit', '1', '10');

-- --------------------------------------------------------

--
-- Table structure for table `credit_payhist`
--

CREATE TABLE `credit_payhist` (
  `transaction_id` int NOT NULL,
  `suplier_id` int NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `credit` int DEFAULT '0',
  `cash` int DEFAULT '0',
  `pay_type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_payhist`
--

INSERT INTO `credit_payhist` (`transaction_id`, `suplier_id`, `suplier_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(1, 3, 'whitestar', 41000, 0, 'credit', '2023-11-09'),
(2, 3, 'whitestar', 41000, 0, 'credit', '2023-11-09'),
(3, 3, 'whitestar', 41000, 0, 'credit', '2023-11-09'),
(4, 3, 'whitestar', 41000, 0, 'credit', '2023-11-09'),
(5, 3, 'whitestar', 0, 23000, 'cash', '2023-11-09'),
(6, 5, 'abacus pharmacy', 0, 112000, 'cash', '2023-11-09'),
(7, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(8, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(9, 5, 'abacus pharmacy', 3352000, 0, 'cash', '2023-11-09'),
(10, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(11, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(12, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(13, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(14, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(15, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(16, 6, 'Guardian Pharmacy', 0, 342000, 'cash', '2023-11-09'),
(17, 6, 'Guardian Pharmacy', 0, 342000, 'cash', '2023-11-09'),
(18, 6, 'Guardian Pharmacy', 0, 342000, 'cash', '2023-11-09'),
(19, 6, 'Guardian Pharmacy', 0, 342000, 'cash', '2023-11-09'),
(20, 6, 'Guardian Pharmacy', 815000, 0, 'credit', '2023-11-09'),
(21, 6, 'Guardian Pharmacy', 815000, 0, 'credit', '2023-11-09'),
(22, 5, 'abacus pharmacy', 0, 30000, 'cash', '2023-02-04'),
(23, 6, 'Guardian Pharmacy', 0, 500, 'cash', '2023-11-09'),
(24, 3, 'whitestar', 0, 200, 'cash', '2023-11-09'),
(25, 3, 'whitestar', 0, 200, 'cash', '2023-11-09'),
(26, 3, 'whitestar', 0, 200, 'cash', '2023-11-09'),
(27, 3, 'whitestar', 0, 200, 'cash', '2023-11-09'),
(28, 3, 'whitestar', 0, 300, 'bank', '2023-11-09'),
(29, 4, 'Super Medic', 0, 124000, 'cash', '2023-11-11'),
(30, 6, 'Guardian Pharmacy', 5000, 0, 'credit', '2023-11-11'),
(31, 6, 'Guardian Pharmacy', 0, 200000, 'cash', '2023-11-11'),
(32, 6, 'Guardian Pharmacy', 0, 34500, 'cash', '2023-11-11'),
(33, 4, 'Super Medic', 600, 0, 'credit', '2023-11-28'),
(34, 4, 'Super Medic', 600, 0, 'credit', '2023-11-28'),
(35, 4, 'Super Medic', 600, 0, 'credit', '2023-11-28'),
(36, 4, 'Super Medic', 600, 0, 'credit', '2023-11-28');

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
  `note` varchar(355) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`, `contact_person`) VALUES
(1, 'ggg', 'vhghvhhv', '8866', '56455', 'hoe', '2020-08-22', 'ghgh', NULL),
(2, 'John', 'Banda', '0786031444', '2', 'Bak 12', '2020-08-26', 'Noted12', NULL),
(3, 'kelvin', 'madvan', '0754321376', '10', 'panadol', '2022-07-06', 'on  credit', NULL),
(4, 'Octpm1007Africa/Addis_AbabaSaturdaypm', 'Mmndk', '07834949', '0', '', '0', 'err', NULL),
(5, 'Ruky Pharmacy', 'kka pla', '79939', '0', '', '0', 'No', NULL),
(6, 'JJ Pharmacy', 'mm', '90998889', '0', '', '0', 'jss', NULL),
(7, 'Remmy', 'mm', '90998889', '0', '', '0', 'jss', NULL),
(10, 'Karem3', 'jina', '030030', '0', '', '0', 'djkd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_credit`
--

CREATE TABLE `customer_credit` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `credit` int DEFAULT '0',
  `cash` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_credit`
--

INSERT INTO `customer_credit` (`customer_id`, `customer_name`, `credit`, `cash`) VALUES
(10, 'Karem3', 68600, 38400),
(7, 'Remmy', NULL, 208400),
(6, 'JJ Pharmacy', 9660, 189821),
(11, 'Mandela Shab', 0, 3600),
(2, 'John', 10000, 20000),
(3, 'kelvin', 6400, 0),
(5, 'Ruky Pharmacy', 91000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cust_payhist`
--

CREATE TABLE `cust_payhist` (
  `transaction_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `credit` int DEFAULT '0',
  `cash` int DEFAULT '0',
  `pay_type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust_payhist`
--

INSERT INTO `cust_payhist` (`transaction_id`, `customer_id`, `customer_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(1, 7, 'Remmy', 0, 15000, 'cash', '2023-11-09'),
(2, 7, 'Remmy', 0, 15000, 'cash', '2023-11-09'),
(3, 10, 'Karem3', 0, 15000, 'cash', '2023-11-09'),
(4, 10, 'Karem3', 69000, 0, 'credit', '2023-11-09'),
(5, 7, 'Remmy', 136000, 0, 'credit', '2023-11-09'),
(6, 7, 'Remmy', 56000, 0, 'credit', '2023-11-09'),
(7, 7, 'Remmy', 56000, 0, 'credit', '2023-11-09'),
(8, 7, 'Remmy', 0, 75000, 'cash', '2023-11-09'),
(9, 7, 'Remmy', 0, 75000, 'cash', '2023-11-09'),
(10, 7, 'Remmy', 27000, 0, 'credit', '2023-11-09'),
(11, 7, 'Remmy', 0, 22000, 'cash', '2023-11-09'),
(12, 10, 'Karem3', 150, 0, 'cash', '2023-11-10'),
(13, 10, 'Karem3', 150, 0, 'cash', '2023-11-10'),
(14, 10, 'Karem3', 0, 100, 'cash', '2023-11-10'),
(15, 7, 'Remmy', 2200, 0, 'credit', '2023-11-11'),
(16, 7, 'Remmy', 2200, 0, 'credit', '2023-11-11'),
(17, 7, 'Remmy', 2200, 0, 'credit', '2023-11-11'),
(18, 7, 'Remmy', 0, 2400, 'cash', '2023-11-11'),
(19, 7, 'Remmy', 0, 2400, 'cash', '2023-11-11'),
(20, 10, 'Karem3', 0, 23000, 'cash', '2023-11-11'),
(21, 7, 'Remmy', 4100, 0, 'credit', '2023-11-11'),
(22, 7, 'Remmy', 3000, 0, 'credit', '2023-11-11'),
(23, 7, 'Remmy', 1500, 0, 'credit', '2023-11-11'),
(24, 2, 'John', 30000, 0, 'credit', '2023-11-11'),
(25, 2, 'John', 0, 15000, 'cash', '2023-11-11'),
(26, 3, 'kelvin', 6400, 0, 'credit', '2023-11-11'),
(27, 7, 'Remmy', 0, 1000, 'cash', '2023-11-11'),
(28, 7, 'Remmy', 2000, 0, 'credit', '2023-11-11'),
(29, 7, 'Remmy', 2000, 0, 'credit', '2023-11-11'),
(30, 2, 'John', 0, 5000, 'cash', '2023-11-11'),
(31, 6, 'JJ Pharmacy', 0, 1700, 'cash', '2023-11-23'),
(32, 6, 'JJ Pharmacy', 3660, 0, 'credit', '2023-11-23'),
(33, 5, 'Ruky Pharmacy', 89100, 0, 'credit', '2023-11-24'),
(34, 6, 'JJ Pharmacy', 0, 188121, 'cash', '2023-12-29'),
(35, 5, 'Ruky Pharmacy', 1900, 0, 'credit', '2023-11-28'),
(36, 7, 'Remmy', 0, 600, 'cash', '2023-11-28'),
(37, 7, 'Remmy', 810457, 0, 'credit', '2023-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `cust_retpayhist`
--

CREATE TABLE `cust_retpayhist` (
  `transaction_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `credit` int DEFAULT '0',
  `cash` int DEFAULT '0',
  `pay_type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust_retpayhist`
--

INSERT INTO `cust_retpayhist` (`transaction_id`, `customer_id`, `customer_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(1, 10, 'Karem3', 0, 3200, 'cash', ''),
(2, 10, 'Karem3', 750, 0, 'credit', '2023-11-09'),
(3, 10, 'Karem3', 750, 0, 'credit', '2023-11-09'),
(4, 10, 'Karem3', 0, 5800, 'cash', '2023-11-09'),
(5, 7, 'Remmy', 0, 1200, 'cash', '2023-11-09'),
(6, 7, 'Remmy', 1100, 0, 'credit', '2023-11-09'),
(7, 10, 'Karem3', 1400, 0, 'credit', '2023-11-09'),
(8, 10, 'Karem3', 1400, 0, 'credit', '2023-11-09'),
(9, 10, 'Karem3', 1400, 0, 'credit', '2023-11-09'),
(10, 10, 'Karem3', 0, 600, 'cash', '2023-11-09'),
(11, 10, 'Karem3', 0, 600, 'cash', '2023-11-09'),
(12, 10, 'Karem3', 1300, 0, 'credit', '2023-11-09'),
(13, 10, 'Karem3', 0, 1000, 'cash', '2023-11-09'),
(14, 6, 'JJ Pharmacy', 0, 100, 'cash', '2023-11-10'),
(15, 6, 'JJ Pharmacy', 0, 100, 'cash', '2023-11-10'),
(16, 6, 'JJ Pharmacy', 0, 100, 'cash', '2023-11-10'),
(17, 10, 'Karem3', 900, 0, 'credit', '2023-11-11'),
(18, 10, 'Karem3', 900, 0, 'credit', '2023-11-11'),
(19, 10, 'Karem3', 0, 400, 'cash', '2023-11-11'),
(20, 10, 'Karem3', 900, 0, 'credit', '2023-11-11'),
(21, 10, 'Karem3', 900, 0, 'credit', '2023-11-11'),
(22, 10, 'Karem3', 0, 1300, 'cash', '2023-11-11'),
(23, 10, 'Karem3', 3450, 0, 'credit', '2023-11-11'),
(24, 10, 'Karem3', 0, 3150, 'cash', '2023-11-11'),
(25, 5, 'Ruky Pharmacy', 0, 150, 'cash', '2023-11-11'),
(26, 10, 'Karem3', 0, 50, 'bank', '2023-11-11'),
(27, 7, 'Remmy', 0, 0, 'cash', '2023-11-28'),
(28, 6, 'JJ Pharmacy', 0, 0, 'cash', '2023-11-28'),
(29, 6, 'JJ Pharmacy', 0, 0, 'cash', '2023-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `emp_type` varchar(200) DEFAULT NULL,
  `jobtitle` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `higheduc` varchar(200) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sal` int DEFAULT '0',
  `hallowance` int DEFAULT '0',
  `transpallowance` int DEFAULT '0',
  `tin` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `username`, `fname`, `lname`, `gender`, `emp_type`, `jobtitle`, `department`, `higheduc`, `phone`, `sal`, `hallowance`, `transpallowance`, `tin`) VALUES
(7, 'mins', 'Mins', 'Mins', 'Male', 'Regular', 'Cashier', 'Sales', 'Nurse cert', NULL, 350000, 0, 0, '3453322688'),
(8, 'mins3', 'Mins3', 'Mins3', 'store', 'Job Order', 'Cashier', 'procure', 'Degree', NULL, 400000, 0, 0, '930329993'),
(9, 'admin', 'sab', 'sab', 'Male', 'Regular', 'CEO', 'Management', 'Degree', NULL, 4000000, 0, 0, '1993233');

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
-- Table structure for table `medical_allowance`
--

CREATE TABLE `medical_allowance` (
  `allowance_id` int NOT NULL,
  `emp_id` int NOT NULL,
  `allowance_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medical_allowance`
--

INSERT INTO `medical_allowance` (`allowance_id`, `emp_id`, `allowance_date`, `amount`, `fname`, `lname`) VALUES
(1, 9, '2023-11-13', '20000.00', 'sab', 'sab'),
(2, 9, '2023-11-13', '20000.00', 'sab', 'sab'),
(3, 7, '2023-11-13', '45000.00', 'Mins', 'Mins');

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
-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `overtime_id` int NOT NULL,
  `emp_id` int DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT '0',
  `overtime_date` date DEFAULT NULL,
  `hours_worked` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `overtime`
--

INSERT INTO `overtime` (`overtime_id`, `emp_id`, `fname`, `lname`, `amount`, `overtime_date`, `hours_worked`) VALUES
(1, 9, 'sab', 'sab', 20000, '2023-11-13', '2.00'),
(2, 7, 'Mins', 'Mins', 20000, '2023-11-13', '2.00'),
(3, 8, 'Mins3', 'Mins3', 10000, '2023-11-13', '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `transaction_id` int NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`transaction_id`, `invoice_number`, `cashier`, `fname`, `tin`, `salary`, `bsalary`, `overtime`, `bonus`, `hllowance`, `tllowance`, `advpayment`, `payee`, `nssf`, `nsalary`, `empid`, `date`, `month`, `pay_type`) VALUES
(0, 'RS-5303243', 'admin', 'Mins', '3453322688', '350000', '24000', '20000', '0', '0', '0', '24000', '12200', '51900', '281900', '', '2023-11-15', NULL, 'cash'),
(0, 'RS-5303243', 'admin', 'Mins3', '930329993', '400000', '15000', '10000', '0', '0', '0', '15000', '22000', '59250', '313750', '', '2023-11-15', NULL, 'cash'),
(0, 'RS-5303243', 'admin', 'Mins', '3453322688', '350000', '24000', '20000', '0', '0', '0', '24000', '12200', '51900', '281900', '', '2023-11-15', NULL, 'cash'),
(0, 'RS-5303243', 'admin', 'Mins3', '930329993', '400000', '15000', '10000', '0', '0', '0', '15000', '22000', '59250', '313750', '', '2023-11-15', NULL, 'cash'),
(0, 'RS-530420', 'admin', 'Mins', '3453322688', '350000', '24000', '20000', '0', '0', '0', '24000', '12200', '51900', '281900', '7', '2023-11-15', NULL, 'Bank'),
(0, 'RS-530420', 'admin', 'Mins3', '930329993', '400000', '15000', '10000', '0', '0', '0', '15000', '22000', '59250', '313750', '8', '2023-11-15', NULL, 'Bank');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_code` varchar(200) NOT NULL DEFAULT '',
  `gen_name` varchar(200) NOT NULL DEFAULT '',
  `product_name` varchar(200) NOT NULL DEFAULT 'None',
  `cost` varchar(255) DEFAULT NULL,
  `o_price` varchar(100) NOT NULL DEFAULT '0',
  `price` varchar(266) DEFAULT NULL,
  `profit` varchar(100) NOT NULL DEFAULT '0',
  `supplier` varchar(100) NOT NULL DEFAULT '',
  `onhand_qty` int NOT NULL DEFAULT '0',
  `qty` int NOT NULL DEFAULT '0',
  `qty_sold` int NOT NULL DEFAULT '0',
  `expiry_date` varchar(266) DEFAULT NULL,
  `date_arrival` varchar(500) NOT NULL DEFAULT '',
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
  `inventory` varchar(300) DEFAULT NULL,
  `stockval` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
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
INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`, `stockval`) VALUES
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
(409, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '1905-03-19', '', 'Ciprofloxacin11', '4', '', '1905-03-19', NULL, NULL, NULL, NULL, 'Anti malaria', 'Active', 'B920', 'Consumable', 4000),
(410, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '1905-03-19', '', 'Metronidazole11', '281', '', '1905-03-19', NULL, NULL, NULL, NULL, '', 'Active', 'BC291', '', 120000),
(411, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '1905-03-19', '', 'Lisinopril91', '492', '', '1905-03-19', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Active', 'BK023', '', 300000),
(412, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '1905-03-19', '', 'Atenolol91', '198', '', '1905-03-19', NULL, NULL, NULL, NULL, '', 'Active', 'BK024', '', 60000),
(413, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '205', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(414, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '401', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(415, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '601', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(416, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '293', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(417, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(418, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(419, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(420, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(421, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(422, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(423, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(424, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(425, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
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
(438, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
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
(535, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
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
(553, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(554, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(555, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(556, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(557, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Panadol', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC821', NULL, 40000),
(558, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Asprine', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC119', NULL, 160000),
(559, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Mabend', '603', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL931', NULL, 360000),
(560, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'alprazolam', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR982', NULL, 90000),
(561, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Amoxicillin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(562, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'atorvastatin ', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(563, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'azithromycin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(564, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'carisoprodol', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(565, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'carvedilol', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BN29133', NULL, 0),
(566, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'cefdinir', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BM932', NULL, 0),
(567, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'celecoxib', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BH9022', NULL, 0),
(568, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'cephalexin ', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK021', NULL, 0),
(569, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'clonazepam', '198', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B920333', NULL, 40000),
(570, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'clopidogrel', '396', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC2912', NULL, 160000),
(571, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'diazepam', '580', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02333', NULL, 360000),
(572, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Duloxetine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK0243333', NULL, 90000),
(573, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'enalapril', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(574, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'escitalopram', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(575, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'esomeprazole', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(576, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'fenofibrate', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(577, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'fexofenadine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B9030', NULL, 0),
(578, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'folic acid', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BN9222', NULL, 0),
(579, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'furosemide', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK8393', NULL, 0),
(580, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'gabapentin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BJ982', NULL, 0),
(581, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'glimepiride', '140', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(582, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'glipizide', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK9201', NULL, 160000),
(583, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'ibuprophen', '593', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK891', NULL, 360000),
(584, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'lansoprazole', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK0189', NULL, 90000),
(585, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'levofloxacin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(586, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'lovastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(587, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'meloxicam', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(588, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'methylprednisone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(589, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B920221', NULL, 0),
(590, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'mometasone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29122', NULL, 0),
(591, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'montelukast', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02321', NULL, 0),
(592, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'paroxetine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK024121', NULL, 0),
(593, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'pioglitazone', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BG920221', NULL, 40000),
(594, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'pravastatin', '397', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'KC291928', NULL, 160000),
(595, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'prednisone', '598', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BH2921', NULL, 360000),
(596, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'pregabalin', '298', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK8891', NULL, 90000),
(597, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'promethazine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(598, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'quetiapine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(599, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'ranitidine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(600, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'rosuvastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(601, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'simvastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL9382', NULL, 0),
(602, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'spironolactone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29123', NULL, 0),
(603, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'tamsulosin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL02321', NULL, 0),
(604, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'temezepam', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BU29924', NULL, 0),
(605, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'topiramate', '198', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(606, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'tramadol', '398', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BT992', NULL, 160000),
(607, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'valaciclovir', '594', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR89222', NULL, 360000),
(608, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'zolpidem', '298', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02922', NULL, 90000),
(609, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'simvastatin4', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL9382', NULL, 0),
(610, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'spironolactone6', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29123', NULL, 0),
(611, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'tamsulosin3', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL02321', NULL, 0),
(612, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'temezepam3', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BU29924', NULL, 0),
(613, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'topiramate5', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(614, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'tramadol8', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BT992', NULL, 160000),
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
(628, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', NULL, NULL, 'Tab', '1970-01-01', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0);

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
(0, 'RS11212', 'admin', NULL, 'cash', '125000.00', '124950', '2023-10-28', 'Hans kk2', '0', NULL, NULL, '17:11:12', '2023-10-28', 'B544', '10', '250000', 'cash', '2', '2023-11-04', '7'),
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
(0, 'RS11212', 'admin', NULL, 'cash', '125000.00', '124950', '2023-10-28', 'Hans kk2', '0', NULL, NULL, '17:11:12', '2023-10-28', 'B544', '10', '250000', 'cash', '2', '2023-11-04', '7'),
(0, 'RS09312', 'admin', NULL, 'credit', '20000.00', '19950', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:29:27', '2023-11-09', 'B123', '17', '20000', 'credit', '1', '2023-11-02', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '7000.00', '6800', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:29:27', '2023-11-09', 'B023', '5', '21000', 'credit', '3', '2023-11-09', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '20000.00', '19950', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:32:52', '2023-11-09', 'B123', '17', '20000', 'credit', '1', '2023-11-02', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '7000.00', '6800', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:32:52', '2023-11-09', 'B023', '5', '21000', 'credit', '3', '2023-11-09', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '20000.00', '19950', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:39:01', '2023-11-09', 'B123', '17', '20000', 'credit', '1', '2023-11-02', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '7000.00', '6800', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:39:01', '2023-11-09', 'B023', '5', '21000', 'credit', '3', '2023-11-09', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '20000.00', '19950', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:39:42', '2023-11-09', 'B123', '17', '20000', 'credit', '1', '2023-11-02', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '7000.00', '6800', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:39:42', '2023-11-09', 'B023', '5', '21000', 'credit', '3', '2023-11-09', '3'),
(0, 'RS09332', 'admin', NULL, 'cash', '6000.00', '5950', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:41:13', '2023-11-09', 'B233', '10', '12000', 'cash', '2', '2023-11-09', '3'),
(0, 'RS09332', 'admin', NULL, 'cash', '11000.00', '10800', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:41:13', '2023-11-09', 'B883', '25', '11000', 'cash', '1', '2023-11-09', '3'),
(0, 'RS4223', 'admin', NULL, 'cash', '11000.00', '10100', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:42:31', '2023-11-09', 'B83992', '3', '22000', 'cash', '2', '2023-11-09', '5'),
(0, 'RS4223', 'admin', NULL, 'cash', '90000.00', '89800', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:42:32', '2023-11-09', 'B533', '12', '90000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:43:58', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:43:59', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:46:20', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:46:20', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:47:18', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:47:20', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:48:37', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:48:37', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:50:03', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:50:03', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:51:24', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:51:24', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:52:05', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:52:05', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:55:10', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:55:10', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:01:46', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:01:47', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:02:40', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:02:43', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:04:20', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:04:20', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:08:10', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:08:10', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:09:45', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:09:45', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS3212', 'admin', NULL, 'cash', '666.67', '516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:11:14', '2023-11-09', 'b344', '16', '2000', 'cash', '3', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '170000.00', '169850', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:11:14', '2023-11-09', 'b532', '7', '340000', 'cash', '2', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '666.67', '516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:11:36', '2023-11-09', 'b344', '16', '2000', 'cash', '3', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '170000.00', '169850', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:11:36', '2023-11-09', 'b532', '7', '340000', 'cash', '2', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '666.67', '516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:12:48', '2023-11-09', 'b344', '16', '2000', 'cash', '3', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '170000.00', '169850', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:12:48', '2023-11-09', 'b532', '7', '340000', 'cash', '2', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '666.67', '516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:13:17', '2023-11-09', 'b344', '16', '2000', 'cash', '3', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '170000.00', '169850', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:13:17', '2023-11-09', 'b532', '7', '340000', 'cash', '2', '2023-11-09', '6'),
(0, 'RS422', 'admin', NULL, 'credit', '7500.00', '7450', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:14:15', '2023-11-09', 'B23', '17', '15000', 'credit', '2', '2023-12-09', '6'),
(0, 'RS422', 'admin', NULL, 'credit', '266666.67', '266516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:14:15', '2023-11-09', 'B434', '8', '800000', 'credit', '3', '2023-12-08', '6'),
(0, 'RS422', 'admin', NULL, 'credit', '7500.00', '7450', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:14:53', '2023-11-09', 'B23', '17', '15000', 'credit', '2', '2023-12-09', '6'),
(0, 'RS422', 'admin', NULL, 'credit', '266666.67', '266516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:14:54', '2023-11-09', 'B434', '8', '800000', 'credit', '3', '2023-12-08', '6'),
(0, 'RS4213', 'admin', NULL, 'cash', '400.00', '350', '2023-11-11', 'Super Medic', '0', NULL, NULL, '10:55:03', '2023-11-11', 'B992', '17', '4000', 'cash', '10', '2023-11-11', '4'),
(0, 'RS4213', 'admin', NULL, 'cash', '2400.00', '2400', '2023-11-11', 'Super Medic', '0', NULL, NULL, '10:55:04', '2023-11-11', 'B43', '35', '120000', 'cash', '50', '2023-12-09', '4'),
(0, '123', 'admin', NULL, 'credit', '50.00', '50', '2023-11-11', 'Guardian Pharmacy', '0', NULL, NULL, '11:45:54', '2023-11-11', '10345', '46', '5000', 'credit', '100', '2026-11-30', '6'),
(0, 'RS92003', 'admin', NULL, 'credit', '100', '100', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:47:29', '2023-11-28', 'B920', '413', '200.00', 'credit', '2.00', '2024-11-11', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '400', '400', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:47:29', '2023-11-28', 'BC291', '414', '400.00', 'credit', '1.00', '2024-11-12', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '100', '100', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:48:27', '2023-11-28', 'B920', '413', '200.00', 'credit', '2.00', '2024-11-11', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '400', '400', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:48:27', '2023-11-28', 'BC291', '414', '400.00', 'credit', '1.00', '2024-11-12', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '100', '100', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:50:15', '2023-11-28', 'B920', '413', '200.00', 'credit', '2.00', '2024-11-11', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '400', '400', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:50:16', '2023-11-28', 'BC291', '414', '400.00', 'credit', '1.00', '2024-11-12', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '100', '100', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:51:06', '2023-11-28', 'B920', '413', '200.00', 'credit', '2.00', '2024-11-11', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '400', '400', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:51:06', '2023-11-28', 'BC291', '414', '400.00', 'credit', '1.00', '2024-11-12', '4');

-- --------------------------------------------------------

--
-- Table structure for table `purchases_rever`
--

CREATE TABLE `purchases_rever` (
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
  `suplier_id` varchar(266) DEFAULT NULL,
  `acc_approve` varchar(255) DEFAULT 'Pending',
  `man_approve` varchar(255) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases_rever`
--

INSERT INTO `purchases_rever` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `exp_date`, `suplier_id`, `acc_approve`, `man_approve`) VALUES
(0, 'RS09312 ', 'admin', NULL, 'credit', '20000.00', '0', '2023-11-21', 'whitestar', '0', NULL, NULL, '09:49:40', '2023-11-21', 'B123 ', '17', '20000', 'credit', '1', '2023-11-21', '3', 'Approved', 'Approved'),
(0, 'RS09312 ', 'admin', NULL, 'credit', '10500.00', '0', '2023-11-21', 'whitestar', '0', NULL, NULL, '09:49:40', '2023-11-21', 'B023 ', '', '21000 ', 'credit', '2', '2023-12-09', '3', 'Approved', 'Approved'),
(0, 'RS09312 ', 'admin', NULL, 'credit', '20000.00', '0', '2023-11-21', 'whitestar', '0', NULL, NULL, '09:50:13', '2023-11-21', 'B123 ', '17', '20000', 'credit', '1', '2023-11-21', '3', 'Approved', 'Approved'),
(0, 'RS09312 ', 'admin', NULL, 'credit', '10500.00', '0', '2023-11-21', 'whitestar', '0', NULL, NULL, '09:50:13', '2023-11-21', 'B023 ', '', '21000 ', 'credit', '2', '2023-12-09', '3', 'Approved', 'Approved');

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
-- Table structure for table `purch_revenue`
--

CREATE TABLE `purch_revenue` (
  `suplier_id` int NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `credit` int DEFAULT '0',
  `cash` int DEFAULT '0',
  `pay_type` varchar(255) DEFAULT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purch_revenue`
--

INSERT INTO `purch_revenue` (`suplier_id`, `suplier_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(3, 'whitestar', 80700, 23000, 'cash', '2023-11-09'),
(5, 'abacus pharmacy', -30000, 3352000, 'cash', '2023-11-09'),
(6, 'Guardian Pharmacy', 1400000, 1368000, 'credit', '2023-11-11'),
(4, 'Super Medic', 2400, 124000, 'credit', '2023-11-28');

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
-- Dumping data for table `retcreditnote`
--

INSERT INTO `retcreditnote` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `customer_id`) VALUES
(NULL, 'RS-3220223', 'admin', NULL, 'cash', '1600', '700', '2023-11-09', 'Karem3', '0', NULL, NULL, '11:57:27', '2023-11-09', 'B632', '15', '', 'cash', '2', '10'),
(NULL, 'RS-3220223', 'admin', NULL, 'cash', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '11:57:28', '2023-11-09', 'RS2132', '18', '', 'cash', '3', '10'),
(NULL, 'RS-3220223', 'admin', NULL, 'cash', '1000', '800', '2023-11-09', 'Karem3', '0', NULL, NULL, '11:57:28', '2023-11-09', 'b3', '24', '', 'cash', '2', '10'),
(NULL, 'RS-223333', 'admin', NULL, 'cash', '200', '50', '2023-11-09', 'Remmy', '0', NULL, NULL, '11:58:34', '2023-11-09', '', '8', '', 'cash', '2', '7'),
(NULL, 'RS-223333', 'admin', NULL, 'cash', '200', '80', '2023-11-09', 'Remmy', '0', NULL, NULL, '11:58:34', '2023-11-09', '', '23', '', 'cash', '4', '7'),
(NULL, 'RS-2405802', 'admin', NULL, 'credit', '150', '100', '2023-11-09', 'Remmy', '0', NULL, NULL, '11:59:29', '2023-11-09', 'B11873', '17', '', 'credit', '2', '7'),
(NULL, 'RS-2405802', 'admin', NULL, 'credit', '200', '50', '2023-11-09', 'Remmy', '0', NULL, NULL, '11:59:29', '2023-11-09', '', '7', '', 'credit', '4', '7');

-- --------------------------------------------------------

--
-- Table structure for table `retcustomer_credit`
--

CREATE TABLE `retcustomer_credit` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `credit` int DEFAULT '0',
  `cash` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retcustomer_credit`
--

INSERT INTO `retcustomer_credit` (`customer_id`, `customer_name`, `credit`, `cash`) VALUES
(10, 'Karem3', 14000, 16100),
(7, 'Remmy', NULL, 1200),
(6, 'JJ Pharmacy', 5700, 300),
(11, 'Mandela Shab', 0, 3600),
(5, 'Ruky Pharmacy', 0, 150);

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
  `customer_id` varchar(266) DEFAULT NULL,
  `expiry_date` varchar(266) DEFAULT NULL,
  `vouch_type` varchar(255) DEFAULT 'Sales'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `customer_id`, `expiry_date`, `vouch_type`) VALUES
(1, 'RS-808303', 'Admin', '08/27/20', 'cash', '19200', '1200', '300', 'John', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(2, 'RS-808303', 'Admin', '08/27/20', 'cash', '19200', '1200', '2020-08-04', 'John', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(3, 'RS-808303', 'Admin', '08/27/20', 'cash', '19200', '1200', '2020-08-27', 'John', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(4, 'RS-20303332', 'Administrator', '07/12/22', 'cash', '1200', '600', '07/12/22', 'John', '0', '', 1200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(5, 'RS-50220', 'sab', '07/15/22', 'cash', '1600', '700', '07/15/22', 'John', '900', '', 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(6, '', 'Administrator', '09/28/23', 'cash', '840400', '100', '09/28/23', 'John', '0', NULL, 840400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(7, 'RS-82222733', 'Administrator', '09/28/23', 'cash', '840400', '100', '09/28/23', 'John', '0', NULL, 840400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(8, 'RS-335033', 'Administrator', '09/30/23', 'cash', '5600', '150', '2023-09-30', 'John', '0', NULL, 5600, '11:00:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(9, 'RS-4300332', 'Administrator', '09/30/23', 'cash', '1000', '100', '2023-09-30', 'John', '0', NULL, 1000, '11:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(10, 'RS-64233342', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'John', '0', NULL, NULL, '11:20:09', '10/05/23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(11, 'RS-64233342', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'John', '0', NULL, NULL, '11:29:32', '10/05/23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales'),
(12, 'RS-84303', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'kelvin', '0', NULL, NULL, '11:51:53', '10/05/23', NULL, '3', '9000.00', 'cash', '6', NULL, NULL, 'Sales'),
(13, 'RS-3023522', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'kelvin', '0', NULL, NULL, '11:53:30', '10/05/23', NULL, '3', '33000.00', 'cash', '22', NULL, NULL, 'Sales'),
(14, 'RS-043035', 'admin', NULL, 'cash', '1600', '1600', '2023-10-05', 'ggg', '0', NULL, NULL, '13:19:54', '10/05/23', NULL, '4', '9600.00', 'cash', '6', NULL, NULL, 'Sales'),
(15, 'RS-043035', 'admin', NULL, 'cash', '1600', '1600', '2023-10-05', 'ggg', '0', NULL, NULL, '13:21:07', '10/05/23', NULL, '4', '9600.00', 'cash', '6', NULL, NULL, 'Sales'),
(16, 'RS-043035', 'admin', NULL, 'cash', '1600', '1600', '2023-10-05', 'ggg', '0', NULL, NULL, '13:23:34', '10/05/23', NULL, '4', '9600.00', 'cash', '6', NULL, NULL, 'Sales'),
(17, 'RS-2232235', 'admin', NULL, 'cash', '1600', '1600', '2023-10-07', 'Ruky Pharmacy', '0', NULL, NULL, '15:43:45', '10/07/23', NULL, '4', '4800.00', 'cash', '3', '5', NULL, 'Sales'),
(18, 'RS-083320', 'admin', NULL, 'cash', '1600', '1600', '2023-10-07', 'kelvin', '0', NULL, NULL, '15:44:38', '10/07/23', NULL, '4', '4800.00', 'cash', '3', '3', NULL, 'Sales'),
(19, 'RS-2902323', 'admin', NULL, 'cash', '200', '200', '2023-10-07', 'kelvin', '0', NULL, NULL, '15:56:43', '10/07/23', NULL, '7', '600.00', '', '3', '3', NULL, 'Sales'),
(20, 'RS-2902323', 'admin', NULL, 'cash', '0', '200', '2023-10-07', 'kelvin', '0', NULL, NULL, '15:56:44', '10/07/23', NULL, '16', '400.00', '', '2', '3', NULL, 'Sales'),
(21, 'RS-2902323', 'admin', NULL, 'cash', '200', '200', '2023-10-07', 'kelvin', '0', NULL, NULL, '15:56:53', '10/07/23', NULL, '7', '600.00', '', '3', '3', NULL, 'Sales'),
(22, 'RS-2902323', 'admin', NULL, 'cash', '0', '200', '2023-10-07', 'kelvin', '0', NULL, NULL, '15:56:53', '10/07/23', NULL, '16', '400.00', '', '2', '3', NULL, 'Sales'),
(23, 'RS-35282', 'admin', NULL, 'cash', '150', '150', '2023-10-07', 'JJ Pharmacy', '0', NULL, NULL, '15:57:57', '10/07/23', NULL, '10', '300.00', '', '2', '6', NULL, 'Sales'),
(24, 'RS-35282', 'admin', NULL, 'cash', '5', '200', '2023-10-07', 'JJ Pharmacy', '0', NULL, NULL, '15:57:57', '10/07/23', NULL, '18', '800.00', '', '4', '6', NULL, 'Sales'),
(25, 'RS-879302', 'admin', NULL, 'cash', '4000', '4000', '2023-10-07', 'Ruky Pharmacy', '0', NULL, NULL, '15:58:48', '10/07/23', NULL, '14', '12000.00', '', '3', '5', NULL, 'Sales'),
(26, 'RS-879302', 'admin', NULL, 'cash', '0', '1600', '2023-10-07', 'Ruky Pharmacy', '0', NULL, NULL, '15:58:50', '10/07/23', NULL, '15', '3200.00', '', '2', '5', NULL, 'Sales'),
(27, 'RS-879302', 'admin', NULL, 'cash', '4000', '1600', '2023-10-07', 'Ruky Pharmacy', '0', NULL, NULL, '16:06:02', '10/07/23', NULL, '14', '12000.00', 'cash', '3', '5', NULL, 'Sales'),
(28, 'RS-879302', 'admin', NULL, 'cash', '1600', '2600', '2023-10-07', 'Ruky Pharmacy', '0', NULL, NULL, '16:06:02', '10/07/23', NULL, '15', '3200.00', 'cash', '2', '5', NULL, 'Sales'),
(29, 'RS-32332037', 'admin', NULL, 'cash', '200', '5564', '2023-10-07', 'JJ Pharmacy', '0', NULL, NULL, '16:06:28', '10/07/23', NULL, '16', '800.00', 'cash', '4', '6', NULL, 'Sales'),
(30, 'RS-32332037', 'admin', NULL, 'cash', '200', '304', '2023-10-07', 'JJ Pharmacy', '0', NULL, NULL, '16:06:29', '10/07/23', NULL, '21', '1000.00', 'cash', '5', '6', NULL, 'Sales'),
(31, 'RS-27234', 'admin', NULL, 'cash', '1600', '700', '2023-10-07', 'Remmy', '0', NULL, NULL, '16:17:31', '10/07/23', NULL, '4', '8000.00', 'cash', '5', '7', NULL, 'Sales'),
(32, 'RS-27234', 'admin', NULL, 'cash', '300', '100', '2023-10-07', 'Remmy', '0', NULL, NULL, '16:17:31', '10/07/23', NULL, '12', '600.00', 'cash', '2', '7', NULL, 'Sales'),
(33, 'RS-5333392', 'admin', NULL, 'cash', '1000', '800', '2023-10-07', 'John', '0', NULL, NULL, '16:40:00', '2023-10-11', NULL, '5', '2000.00', 'cash', '2', '2', NULL, 'Sales'),
(34, 'RS-5333392', 'admin', NULL, 'cash', '200', '111516', '2023-10-07', 'John', '0', NULL, NULL, '16:40:00', '2023-10-11', NULL, '18', '600.00', 'cash', '3', '2', NULL, 'Sales'),
(35, 'RS-00332002', 'admin', NULL, 'cash', '1500', '600', '2023-10-11', 'kelvin', '0', NULL, NULL, '22:29:55', '2023-10-11', NULL, '3', '3000.00', 'cash', '2', '3', NULL, 'Sales'),
(36, 'RS-00332002', 'admin', NULL, 'cash', '200', '50', '2023-10-11', 'kelvin', '0', NULL, NULL, '22:29:56', '2023-10-11', NULL, '9', '600.00', 'cash', '3', '3', NULL, 'Sales'),
(37, 'RS-243329', 'admin', NULL, 'cash', '200', '50', '2023-10-11', 'Ruky Pharmacy', '0', NULL, NULL, '22:42:38', '2023-10-11', NULL, '9', '600.00', 'cash', '3', '5', NULL, 'Sales'),
(38, 'RS-243329', 'admin', NULL, 'cash', '200', '5564', '2023-10-11', 'Ruky Pharmacy', '0', NULL, NULL, '22:42:38', '2023-10-11', NULL, '16', '400.00', 'cash', '2', '5', NULL, 'Sales'),
(39, 'RS-32940', 'admin', NULL, 'cash', '200', '50', '2023-10-11', 'Remmy', '0', NULL, NULL, '22:44:04', '2023-10-11', NULL, '9', '800.00', 'cash', '4', '7', NULL, 'Sales'),
(40, 'RS-32940', 'admin', NULL, 'cash', '1600', '2600', '2023-10-11', 'Remmy', '0', NULL, NULL, '22:44:05', '2023-10-11', NULL, '15', '3200.00', 'cash', '2', '7', NULL, 'Sales'),
(41, 'RS-393302', 'admin', NULL, 'cash', '900', '6903', '2023-10-12', 'John', '0', NULL, NULL, '13:55:34', '2023-10-12', NULL, '19', '1800.00', 'cash', '2', '2', NULL, 'Sales'),
(42, 'RS-2226333', 'admin', NULL, 'cash', '900', '6903', '2023-10-12', 'Ruky Pharmacy', '0', NULL, NULL, '14:01:51', '2023-10-12', NULL, '19', '6300.00', 'cash', '7', '5', NULL, 'Sales'),
(43, 'RS-2462363', 'admin', NULL, 'cash', '900', '6903', '2023-10-12', 'Ruky Pharmacy', '0', NULL, NULL, '14:02:28', '2023-10-12', NULL, '19', '1800.00', 'cash', '2', '5', NULL, 'Sales'),
(44, 'RS-3652339', 'admin', NULL, 'cash', '900', '6903', '2023-10-12', 'kelvin', '0', NULL, NULL, '14:03:21', '2023-10-12', NULL, '19', '1800.00', 'cash', '2', '3', NULL, 'Sales'),
(45, 'RS-3652339', 'admin', NULL, 'cash', '4000', '9010', '2023-10-12', 'kelvin', '0', NULL, NULL, '14:03:21', '2023-10-12', NULL, '20', '32000.00', 'cash', '8', '3', NULL, 'Sales'),
(46, 'RS-60963233', 'admin', NULL, 'cash', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '10:19:14', '', '', '7', '', 'cash', '1', '10', '2022-07-12', 'Sales'),
(47, 'RS-60963233', 'admin', NULL, 'cash', '1000', '800', '2023-11-09', 'Karem3', '0', NULL, NULL, '10:19:14', '', '', '5', '', 'cash', '3', '10', '', 'Sales'),
(48, 'RS-22323320', 'admin', NULL, 'credit', '150', '100', '2023-11-09', 'Karem3', '0', NULL, NULL, '10:22:02', '2023-11-09', 'B344', '51', '', 'credit', '1', '10', '2023-10-28', 'Sales'),
(49, 'RS-22323320', 'admin', NULL, 'credit', '300', '100', '2023-11-09', 'Karem3', '0', NULL, NULL, '10:22:02', '2023-11-09', '', '12', '', 'credit', '2', '10', '2027-10-07', 'Sales'),
(50, 'RS-22323320', 'admin', NULL, 'credit', '150', '100', '2023-11-09', 'Karem3', '0', NULL, NULL, '10:22:37', '2023-11-09', 'B344', '51', '', 'credit', '1', '10', '2023-10-28', 'Sales'),
(51, 'RS-22323320', 'admin', NULL, 'credit', '300', '100', '2023-11-09', 'Karem3', '0', NULL, NULL, '10:22:38', '2023-11-09', '', '12', '', 'credit', '2', '10', '2027-10-07', 'Sales'),
(52, 'RS-3422', 'admin', NULL, 'credit', '1000', '800', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:05:15', '2023-11-09', '', '5', '', 'credit', '-1', '10', '07/13/22', 'Credit Note'),
(53, 'RS-3422', 'admin', NULL, 'credit', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:05:15', '2023-11-09', '', '7', '', 'credit', '0', '10', '2022-07-12', 'Credit Note'),
(54, 'RS-3422', 'admin', NULL, 'credit', '1000', '800', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:07:45', '2023-11-09', '', '5', '', 'credit', '-1', '10', '07/13/22', 'Credit Note'),
(55, 'RS-3422', 'admin', NULL, 'credit', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:07:45', '2023-11-09', '', '7', '', 'credit', '0', '10', '2022-07-12', 'Credit Note'),
(56, 'RS-3422', 'admin', NULL, 'credit', '1000', '800', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:08:32', '2023-11-09', '', '5', '', 'credit', '0', '10', '07/13/22', 'Credit Note'),
(57, 'RS-3422', 'admin', NULL, 'credit', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:08:32', '2023-11-09', '', '7', '', 'credit', '2', '10', '2022-07-12', 'Credit Note'),
(58, 'RS-23302', 'admin', NULL, 'cash', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:09:57', '2023-11-09', '', '7', '', 'cash', '-2', '10', '2022-07-12', 'Credit Note'),
(59, 'RS-23302', 'admin', NULL, 'cash', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:09:58', '2023-11-09', '', '11', '', 'cash', '0', '10', '', 'Credit Note'),
(60, 'RS-23302', 'admin', NULL, 'cash', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:11:16', '2023-11-09', '', '7', '', 'cash', '0', '10', '2022-07-12', 'Credit Note'),
(61, 'RS-23302', 'admin', NULL, 'cash', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:11:16', '2023-11-09', '', '11', '', 'cash', '2', '10', '', 'Credit Note'),
(62, 'RS-3039222', 'admin', NULL, 'credit', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:30:34', '2023-11-09', 'B7201', '21', '', 'credit', '2', '10', '2023-10-12', 'Sales'),
(63, 'RS-3039222', 'admin', NULL, 'credit', '900', '500', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:30:34', '2023-11-09', 'B987544', '19', '', 'credit', '1', '10', '2023-10-04', 'Sales'),
(64, 'RS-82738', 'admin', NULL, 'cash', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:31:32', '2023-11-09', '', '7', '', 'cash', '2', '10', '2022-07-12', 'Sales'),
(65, 'RS-82738', 'admin', NULL, 'cash', '200', '50', '2023-11-09', 'Karem3', '0', NULL, NULL, '13:31:33', '2023-11-09', 'RS2132', '18', '', 'cash', '3', '10', '2023-10-05', 'Sales'),
(66, 'RS-60067', 'admin', NULL, 'credit', '150', '150', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:37:13', '2023-11-11', 'B43', '35', '', 'credit', '2', '10', '', 'Credit Note'),
(67, 'RS-60067', 'admin', NULL, 'credit', '200', '50', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:37:14', '2023-11-11', 'RS2132', '18', '', 'credit', '3', '10', '', 'Credit Note'),
(68, 'RS-60067', 'admin', NULL, 'credit', '150', '150', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:38:04', '2023-11-11', 'B43', '35', '', 'credit', '2', '10', '', 'Credit Note'),
(69, 'RS-60067', 'admin', NULL, 'credit', '200', '50', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:38:04', '2023-11-11', 'RS2132', '18', '', 'credit', '3', '10', '', 'Credit Note'),
(70, 'RS-26520', 'admin', NULL, 'cash', '200', '50', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:38:57', '2023-11-11', 'BR732', '8', '', 'cash', '2', '10', '07/13/22', 'Credit Note'),
(71, 'RS-309372', 'admin', NULL, 'credit', '150', '150', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:41:15', '2023-11-11', 'B43', '35', '', 'credit', '2', '10', '', 'Credit Note'),
(72, 'RS-309372', 'admin', NULL, 'credit', '200', '50', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:41:15', '2023-11-11', 'BR732', '8', '', 'credit', '3', '10', '07/13/22', 'Credit Note'),
(73, 'RS-309372', 'admin', NULL, 'credit', '150', '150', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:43:25', '2023-11-11', 'B43', '35', '', 'credit', '2', '10', '', 'Credit Note'),
(74, 'RS-309372', 'admin', NULL, 'credit', '200', '50', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:43:25', '2023-11-11', 'BR732', '8', '', 'credit', '3', '10', '07/13/22', 'Credit Note'),
(75, 'RS-29272220', 'admin', NULL, 'cash', '150', '150', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:48:41', '2023-11-11', 'B43', '35', '', 'cash', '2', '10', '2023-10-11', 'Credit Note'),
(76, 'RS-29272220', 'admin', NULL, 'cash', '200', '50', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:48:41', '2023-11-11', 'BN021', '9', '', 'cash', '5', '10', '07/16/22', 'Credit Note'),
(77, 'RS-30330', 'admin', NULL, 'credit', '150', '100', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:52:17', '2023-11-11', 'BH892', '10', '', 'credit', '3', '10', '2023-09-28', 'Sales'),
(78, 'RS-30330', 'admin', NULL, 'credit', '1500', '600', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:52:19', '2023-11-11', 'B211', '3', '', 'credit', '2', '10', '', 'Sales'),
(79, 'RS-5236222', 'admin', NULL, 'cash', '1500', '600', '2023-11-11', 'Karem3', '0', NULL, NULL, '12:16:29', '2023-11-11', 'B211', '3', '', 'cash', '2', '10', '', 'Sales'),
(80, 'RS-5236222', 'admin', NULL, 'cash', '150', '150', '2023-11-11', 'Karem3', '0', NULL, NULL, '12:16:30', '2023-11-11', 'B11873', '17', '', 'cash', '1', '10', '', 'Sales'),
(81, 'RS-235233', 'admin', NULL, 'cash', '150', '150', '2023-11-11', 'Ruky Pharmacy', '0', NULL, NULL, '12:19:41', '2023-11-11', 'B43', '35', '', 'cash', '1', '5', '2023-10-11', 'Credit Note'),
(82, 'RS-6083220', 'admin', NULL, 'cash', '100', '100', '2023-11-28', 'Remmy', '0', NULL, NULL, '09:31:32', '2023-11-28', 'BK8891', '596', '100.00', 'cash', '1.00', '7', '2024-11-14', 'Sales'),
(83, 'RS-6083220', 'admin', NULL, 'cash', '250.00', '250', '2023-11-28', 'Remmy', '0', NULL, NULL, '09:31:32', '2023-11-28', 'BK891', '583', '500', 'cash', '2.00', '7', '2025-11-13', 'Sales'),
(84, 'RS-6083220', 'admin', NULL, 'cash', '233.33', '233', '2023-11-28', 'Remmy', '0', NULL, NULL, '09:31:32', '2023-11-28', 'BK023', '415', '700', 'cash', '3.00', '7', '2025-11-13', 'Sales'),
(85, 'RS-43300', 'admin', NULL, 'cash', '100', '100', '2023-11-28', 'JJ Pharmacy', '0', NULL, NULL, '09:47:35', '2023-11-28', 'BL931', '559', '', 'cash', '2', '6', '2025-11-13', 'Credit Note'),
(86, 'RS-43300', 'admin', NULL, 'cash', '300.00', '300', '2023-11-28', 'JJ Pharmacy', '0', NULL, NULL, '09:47:36', '2023-11-28', 'BK023', '415', '', 'cash', '3', '6', '2025-11-13', 'Credit Note'),
(87, 'RS-43300', 'admin', NULL, 'cash', '200.00', '200', '2023-11-28', 'JJ Pharmacy', '0', NULL, NULL, '09:49:43', '2023-11-28', 'BL931', '559', '200.00', 'cash', '1', '6', '2025-11-13', 'Credit Note'),
(88, 'RS-43300', 'admin', NULL, 'cash', '900.00', '900', '2023-11-28', 'JJ Pharmacy', '0', NULL, NULL, '09:49:43', '2023-11-28', 'BK023', '415', '900.00', 'cash', '1', '6', '2025-11-13', 'Credit Note');

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
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `unit_id` int NOT NULL,
  `unit` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(266) DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  `emp_id` int DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`, `emp_id`, `fname`, `lname`) VALUES
(12, 'mins', 'mins2', NULL, 'pharmacist', 7, 'Mins', 'Mins'),
(13, 'mins3', 'mins', NULL, 'store', 8, 'Mins3', 'Mins3'),
(14, 'admin', 'admin123', NULL, 'admin', 9, 'sab', 'sab');

-- --------------------------------------------------------

--
-- Table structure for table `wcategory`
--

CREATE TABLE `wcategory` (
  `category_id` int NOT NULL,
  `cat` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wcategory`
--

INSERT INTO `wcategory` (`category_id`, `cat`) VALUES
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
-- Table structure for table `wcredit_payhist`
--

CREATE TABLE `wcredit_payhist` (
  `transaction_id` int NOT NULL,
  `suplier_id` int NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `credit` int DEFAULT '0',
  `cash` int DEFAULT '0',
  `pay_type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wcredit_payhist`
--

INSERT INTO `wcredit_payhist` (`transaction_id`, `suplier_id`, `suplier_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(1, 3, 'whitestar', 41000, 0, 'credit', '2023-11-09'),
(2, 3, 'whitestar', 41000, 0, 'credit', '2023-11-09'),
(3, 3, 'whitestar', 41000, 0, 'credit', '2023-11-09'),
(4, 3, 'whitestar', 41000, 0, 'credit', '2023-11-09'),
(5, 3, 'whitestar', 0, 23000, 'cash', '2023-11-09'),
(6, 5, 'abacus pharmacy', 0, 112000, 'cash', '2023-11-09'),
(7, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(8, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(9, 5, 'abacus pharmacy', 3352000, 0, 'cash', '2023-11-09'),
(10, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(11, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(12, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(13, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(14, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(15, 5, 'abacus pharmacy', 0, 3352000, 'cash', '2023-11-09'),
(16, 6, 'Guardian Pharmacy', 0, 342000, 'cash', '2023-11-09'),
(17, 6, 'Guardian Pharmacy', 0, 342000, 'cash', '2023-11-09'),
(18, 6, 'Guardian Pharmacy', 0, 342000, 'cash', '2023-11-09'),
(19, 6, 'Guardian Pharmacy', 0, 342000, 'cash', '2023-11-09'),
(20, 6, 'Guardian Pharmacy', 815000, 0, 'credit', '2023-11-09'),
(21, 6, 'Guardian Pharmacy', 815000, 0, 'credit', '2023-11-09'),
(22, 5, 'abacus pharmacy', 0, 30000, 'cash', '2023-02-04'),
(23, 6, 'Guardian Pharmacy', 0, 500, 'cash', '2023-11-09'),
(24, 3, 'whitestar', 0, 200, 'cash', '2023-11-09'),
(25, 3, 'whitestar', 0, 200, 'cash', '2023-11-09'),
(26, 3, 'whitestar', 0, 200, 'cash', '2023-11-09'),
(27, 3, 'whitestar', 0, 200, 'cash', '2023-11-09'),
(28, 3, 'whitestar', 0, 300, 'bank', '2023-11-09'),
(29, 4, 'Super Medic', 0, 124000, 'cash', '2023-11-11'),
(30, 6, 'Guardian Pharmacy', 5000, 0, 'credit', '2023-11-11'),
(31, 6, 'Guardian Pharmacy', 0, 200000, 'cash', '2023-11-11'),
(32, 6, 'Guardian Pharmacy', 0, 34500, 'cash', '2023-11-11'),
(33, 4, 'Super Medic', 600, 0, 'credit', '2023-11-28'),
(34, 4, 'Super Medic', 600, 0, 'credit', '2023-11-28'),
(35, 4, 'Super Medic', 600, 0, 'credit', '2023-11-28'),
(36, 4, 'Super Medic', 600, 0, 'credit', '2023-11-28'),
(37, 5, 'abacus pharmacy', 7800, 0, 'credit', '2023-11-28'),
(38, 4, 'Super Medic', 0, 100, 'cash', '2023-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `wproducts`
--

CREATE TABLE `wproducts` (
  `product_id` int NOT NULL,
  `product_code` varchar(200) NOT NULL DEFAULT '',
  `gen_name` varchar(200) NOT NULL DEFAULT '',
  `product_name` varchar(200) NOT NULL DEFAULT 'None',
  `cost` varchar(255) DEFAULT NULL,
  `o_price` varchar(100) NOT NULL DEFAULT '0',
  `price` varchar(266) DEFAULT NULL,
  `profit` varchar(100) NOT NULL DEFAULT '0',
  `supplier` varchar(100) NOT NULL DEFAULT '',
  `onhand_qty` int NOT NULL DEFAULT '0',
  `qty` int NOT NULL DEFAULT '0',
  `qty_sold` int NOT NULL DEFAULT '0',
  `expiry_date` varchar(266) DEFAULT NULL,
  `date_arrival` varchar(500) NOT NULL DEFAULT '',
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
  `inventory` varchar(300) DEFAULT NULL,
  `stockval` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(409, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '1905-03-19', '', 'Ciprofloxacin11', '4', '', '1905-03-19', NULL, NULL, NULL, NULL, 'Anti malaria', 'Active', 'B920', 'Consumable', 4000),
(410, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '1905-03-19', '', 'Metronidazole11', '281', '', '1905-03-19', NULL, NULL, NULL, NULL, '', 'Active', 'BC291', '', 120000),
(411, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '1905-03-19', '', 'Lisinopril91', '492', '', '1905-03-19', NULL, NULL, NULL, NULL, 'Anti malaria drug', 'Active', 'BK023', '', 300000),
(412, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '1905-03-19', '', 'Atenolol91', '198', '', '1905-03-19', NULL, NULL, NULL, NULL, '', 'Active', 'BK024', '', 60000),
(413, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '197', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
(414, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '398', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
(415, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '601', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
(416, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Atenolol10', '293', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 90000),
(417, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(418, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(419, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(420, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 0),
(421, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 0),
(422, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Metronidazole10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 0),
(423, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Lisinopril10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 0),
(424, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Atenolol10', '0', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK024', NULL, 0),
(425, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Ciprofloxacin10', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'B920', NULL, 40000),
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
(438, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Metronidazole10', '400', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC291', NULL, 160000),
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
(535, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Lisinopril10', '600', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BK023', NULL, 360000),
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
(557, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Panadol', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC821', NULL, 40000),
(558, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Asprine', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC119', NULL, 160000),
(559, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Mabend', '603', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL931', NULL, 360000),
(560, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'alprazolam', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR982', NULL, 90000),
(561, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Amoxicillin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(562, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'atorvastatin ', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(563, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'azithromycin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(564, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'carisoprodol', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(565, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'carvedilol', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BN29133', NULL, 0),
(566, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'cefdinir', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BM932', NULL, 0),
(567, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'celecoxib', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BH9022', NULL, 0),
(568, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'cephalexin ', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK021', NULL, 0),
(569, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'clonazepam', '198', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B920333', NULL, 40000),
(570, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'clopidogrel', '396', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC2912', NULL, 160000),
(571, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'diazepam', '580', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02333', NULL, 360000),
(572, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'Duloxetine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK0243333', NULL, 90000),
(573, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'enalapril', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(574, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'escitalopram', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(575, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'esomeprazole', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(576, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'fenofibrate', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(577, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'fexofenadine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B9030', NULL, 0),
(578, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'folic acid', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BN9222', NULL, 0),
(579, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'furosemide', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK8393', NULL, 0),
(580, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'gabapentin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BJ982', NULL, 0),
(581, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'glimepiride', '140', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(582, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'glipizide', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK9201', NULL, 160000),
(583, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'ibuprophen', '595', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK891', NULL, 360000),
(584, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'lansoprazole', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK0189', NULL, 90000),
(585, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'levofloxacin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(586, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'lovastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(587, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'meloxicam', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(588, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'methylprednisone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(589, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B920221', NULL, 0),
(590, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'mometasone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29122', NULL, 0),
(591, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'montelukast', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02321', NULL, 0),
(592, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'paroxetine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK024121', NULL, 0),
(593, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'pioglitazone', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BG920221', NULL, 40000),
(594, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'pravastatin', '397', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'KC291928', NULL, 160000),
(595, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'prednisone', '598', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BH2921', NULL, 360000),
(596, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'pregabalin', '298', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK8891', NULL, 90000),
(597, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'promethazine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(598, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'quetiapine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(599, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'ranitidine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(600, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'rosuvastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(601, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'simvastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL9382', NULL, 0),
(602, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'spironolactone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29123', NULL, 0),
(603, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'tamsulosin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL02321', NULL, 0),
(604, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'temezepam', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BU29924', NULL, 0),
(605, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'topiramate', '198', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(606, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'tramadol', '398', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BT992', NULL, 160000),
(607, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'valaciclovir', '594', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR89222', NULL, 360000),
(608, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'zolpidem', '298', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02922', NULL, 90000),
(609, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'simvastatin4', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL9382', NULL, 0),
(610, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'spironolactone6', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29123', NULL, 0),
(611, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'tamsulosin3', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL02321', NULL, 0),
(612, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'temezepam3', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BU29924', NULL, 0),
(613, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'topiramate5', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B92023', NULL, 40000),
(614, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'tramadol8', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BT992', NULL, 160000),
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
(629, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'Panadol', '200', NULL, '2023-11-11', NULL, NULL, NULL, NULL, NULL, 'Active', 'BC821', NULL, 40000),
(630, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'Asprine', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC119', NULL, 160000),
(631, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'Mabend', '600', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BL931', NULL, 360000),
(632, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'alprazolam', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BR982', NULL, 90000),
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
(655, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'ibuprophen', '600', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK891', NULL, 360000),
(656, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'lansoprazole', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK0189', NULL, 90000),
(657, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'levofloxacin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(658, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'lovastatin', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(659, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'meloxicam', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(660, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'methylprednisone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', NULL, NULL, 0),
(661, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'Ciprofloxacin10', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'B920221', NULL, 0),
(662, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'mometasone', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BC29122', NULL, 0),
(663, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'montelukast', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK02321', NULL, 0),
(664, '', '', 'None', NULL, '0', NULL, '0', '', 0, 0, 0, '1970-01-01', '', 'paroxetine', '0', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK024121', NULL, 0),
(665, '', '', 'None', NULL, '0', '200', '0', '', 0, 0, 0, '2024-11-11', '', 'pioglitazone', '200', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BG920221', NULL, 40000),
(666, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'pravastatin', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'KC291928', NULL, 160000),
(667, '', '', 'None', NULL, '0', '600', '0', '', 0, 0, 0, '2025-11-13', '', 'prednisone', '600', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BH2921', NULL, 360000),
(668, '', '', 'None', NULL, '0', '300', '0', '', 0, 0, 0, '2024-11-14', '', 'pregabalin', '300', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BK8891', NULL, 90000),
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
(686, '', '', 'None', NULL, '0', '400', '0', '', 0, 0, 0, '2024-11-12', '', 'tramadol8', '400', 'Tab', '2023-11-11', NULL, NULL, NULL, NULL, 'PainKiller', 'Active', 'BT992', NULL, 160000),
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
(701, 'Atenolol888', 'Atenolol888', 'Atenolol888', '0', '0', '200', '200', 'None', 0, 0, 0, '1970-01-01', 'Nov-28-2023', 'Atenolol888', '0', 'Tabs', '11/28/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Active', '', 'Consumable', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpurchases_ret`
--

CREATE TABLE `wpurchases_ret` (
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
-- Dumping data for table `wpurchases_ret`
--

INSERT INTO `wpurchases_ret` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `exp_date`, `suplier_id`) VALUES
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
(0, 'RS11212', 'admin', NULL, 'cash', '125000.00', '124950', '2023-10-28', 'Hans kk2', '0', NULL, NULL, '17:11:12', '2023-10-28', 'B544', '10', '250000', 'cash', '2', '2023-11-04', '7'),
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
(0, 'RS11212', 'admin', NULL, 'cash', '125000.00', '124950', '2023-10-28', 'Hans kk2', '0', NULL, NULL, '17:11:12', '2023-10-28', 'B544', '10', '250000', 'cash', '2', '2023-11-04', '7'),
(0, 'RS09312', 'admin', NULL, 'credit', '20000.00', '19950', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:29:27', '2023-11-09', 'B123', '17', '20000', 'credit', '1', '2023-11-02', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '7000.00', '6800', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:29:27', '2023-11-09', 'B023', '5', '21000', 'credit', '3', '2023-11-09', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '20000.00', '19950', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:32:52', '2023-11-09', 'B123', '17', '20000', 'credit', '1', '2023-11-02', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '7000.00', '6800', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:32:52', '2023-11-09', 'B023', '5', '21000', 'credit', '3', '2023-11-09', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '20000.00', '19950', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:39:01', '2023-11-09', 'B123', '17', '20000', 'credit', '1', '2023-11-02', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '7000.00', '6800', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:39:01', '2023-11-09', 'B023', '5', '21000', 'credit', '3', '2023-11-09', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '20000.00', '19950', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:39:42', '2023-11-09', 'B123', '17', '20000', 'credit', '1', '2023-11-02', '3'),
(0, 'RS09312', 'admin', NULL, 'credit', '7000.00', '6800', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:39:42', '2023-11-09', 'B023', '5', '21000', 'credit', '3', '2023-11-09', '3'),
(0, 'RS09332', 'admin', NULL, 'cash', '6000.00', '5950', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:41:13', '2023-11-09', 'B233', '10', '12000', 'cash', '2', '2023-11-09', '3'),
(0, 'RS09332', 'admin', NULL, 'cash', '11000.00', '10800', '2023-11-09', 'whitestar', '0', NULL, NULL, '10:41:13', '2023-11-09', 'B883', '25', '11000', 'cash', '1', '2023-11-09', '3'),
(0, 'RS4223', 'admin', NULL, 'cash', '11000.00', '10100', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:42:31', '2023-11-09', 'B83992', '3', '22000', 'cash', '2', '2023-11-09', '5'),
(0, 'RS4223', 'admin', NULL, 'cash', '90000.00', '89800', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:42:32', '2023-11-09', 'B533', '12', '90000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:43:58', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:43:59', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:46:20', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:46:20', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:47:18', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:47:20', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:48:37', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:48:37', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:50:03', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:50:03', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:51:24', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:51:24', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:52:05', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:52:05', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:55:10', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '10:55:10', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:01:46', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:01:47', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:02:40', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:02:43', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:04:20', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:04:20', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:08:10', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:08:10', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '22000.00', '21850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:09:45', '2023-11-09', 'B8293', '7', '22000', 'cash', '1', '2023-11-09', '5'),
(0, 'RS23', 'admin', NULL, 'cash', '1110000.00', '1109850', '2023-11-09', 'abacus pharmacy', '0', NULL, NULL, '11:09:45', '2023-11-09', 'B332', '7', '3330000', 'cash', '3', '2023-11-09', '5'),
(0, 'RS3212', 'admin', NULL, 'cash', '666.67', '516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:11:14', '2023-11-09', 'b344', '16', '2000', 'cash', '3', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '170000.00', '169850', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:11:14', '2023-11-09', 'b532', '7', '340000', 'cash', '2', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '666.67', '516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:11:36', '2023-11-09', 'b344', '16', '2000', 'cash', '3', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '170000.00', '169850', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:11:36', '2023-11-09', 'b532', '7', '340000', 'cash', '2', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '666.67', '516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:12:48', '2023-11-09', 'b344', '16', '2000', 'cash', '3', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '170000.00', '169850', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:12:48', '2023-11-09', 'b532', '7', '340000', 'cash', '2', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '666.67', '516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:13:17', '2023-11-09', 'b344', '16', '2000', 'cash', '3', '2023-11-09', '6'),
(0, 'RS3212', 'admin', NULL, 'cash', '170000.00', '169850', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:13:17', '2023-11-09', 'b532', '7', '340000', 'cash', '2', '2023-11-09', '6'),
(0, 'RS422', 'admin', NULL, 'credit', '7500.00', '7450', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:14:15', '2023-11-09', 'B23', '17', '15000', 'credit', '2', '2023-12-09', '6'),
(0, 'RS422', 'admin', NULL, 'credit', '266666.67', '266516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:14:15', '2023-11-09', 'B434', '8', '800000', 'credit', '3', '2023-12-08', '6'),
(0, 'RS422', 'admin', NULL, 'credit', '7500.00', '7450', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:14:53', '2023-11-09', 'B23', '17', '15000', 'credit', '2', '2023-12-09', '6'),
(0, 'RS422', 'admin', NULL, 'credit', '266666.67', '266516', '2023-11-09', 'Guardian Pharmacy', '0', NULL, NULL, '11:14:54', '2023-11-09', 'B434', '8', '800000', 'credit', '3', '2023-12-08', '6'),
(0, 'RS4213', 'admin', NULL, 'cash', '400.00', '350', '2023-11-11', 'Super Medic', '0', NULL, NULL, '10:55:03', '2023-11-11', 'B992', '17', '4000', 'cash', '10', '2023-11-11', '4'),
(0, 'RS4213', 'admin', NULL, 'cash', '2400.00', '2400', '2023-11-11', 'Super Medic', '0', NULL, NULL, '10:55:04', '2023-11-11', 'B43', '35', '120000', 'cash', '50', '2023-12-09', '4'),
(0, '123', 'admin', NULL, 'credit', '50.00', '50', '2023-11-11', 'Guardian Pharmacy', '0', NULL, NULL, '11:45:54', '2023-11-11', '10345', '46', '5000', 'credit', '100', '2026-11-30', '6'),
(0, 'RS92003', 'admin', NULL, 'credit', '100', '100', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:47:29', '2023-11-28', 'B920', '413', '200.00', 'credit', '2.00', '2024-11-11', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '400', '400', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:47:29', '2023-11-28', 'BC291', '414', '400.00', 'credit', '1.00', '2024-11-12', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '100', '100', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:48:27', '2023-11-28', 'B920', '413', '200.00', 'credit', '2.00', '2024-11-11', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '400', '400', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:48:27', '2023-11-28', 'BC291', '414', '400.00', 'credit', '1.00', '2024-11-12', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '100', '100', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:50:15', '2023-11-28', 'B920', '413', '200.00', 'credit', '2.00', '2024-11-11', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '400', '400', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:50:16', '2023-11-28', 'BC291', '414', '400.00', 'credit', '1.00', '2024-11-12', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '100', '100', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:51:06', '2023-11-28', 'B920', '413', '200.00', 'credit', '2.00', '2024-11-11', '4'),
(0, 'RS92003', 'admin', NULL, 'credit', '400', '400', '2023-11-28', 'Super Medic', '0', NULL, NULL, '13:51:06', '2023-11-28', 'BC291', '414', '400.00', 'credit', '1.00', '2024-11-12', '4'),
(0, 'RF3422', 'admin', NULL, 'credit', '7000.00', '7000', '2023-11-28', 'abacus pharmacy', '0', NULL, NULL, '14:03:19', '2023-11-28', 'BC291', '414', '7000', 'credit', '1.00', '2024-11-12', '5'),
(0, 'RF3422', 'admin', NULL, 'credit', '400', '400', '2023-11-28', 'abacus pharmacy', '0', NULL, NULL, '14:03:19', '2023-11-28', 'BK891', '583', '800.00', 'credit', '2.00', '2025-11-13', '5');

-- --------------------------------------------------------

--
-- Table structure for table `wpurch_revenue`
--

CREATE TABLE `wpurch_revenue` (
  `suplier_id` int NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `credit` int DEFAULT '0',
  `cash` int DEFAULT '0',
  `pay_type` varchar(255) DEFAULT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wpurch_revenue`
--

INSERT INTO `wpurch_revenue` (`suplier_id`, `suplier_name`, `credit`, `cash`, `pay_type`, `date`) VALUES
(3, 'whitestar', 80700, 23000, 'cash', '2023-11-09'),
(5, 'abacus pharmacy', -22200, 3352000, 'credit', '2023-11-28'),
(6, 'Guardian Pharmacy', 1400000, 1368000, 'credit', '2023-11-11'),
(4, 'Super Medic', 2300, 124000, 'credit', '2023-11-28');

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
  `customer_id` varchar(266) DEFAULT NULL,
  `expiry_date` varchar(266) DEFAULT NULL,
  `vouch_type` varchar(255) DEFAULT 'Sales'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wsales`
--

INSERT INTO `wsales` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `customer_id`, `expiry_date`, `vouch_type`) VALUES
(NULL, 'RS-22823026', 'admin', NULL, 'cash', '1000.00', '850', '2023-10-12', 'kelvin', '0', NULL, NULL, '10:58:50', '2023-10-12', '', '9', '6000', 'cash', '6', '3', NULL, 'Sales'),
(NULL, 'RS-22823026', 'admin', NULL, 'cash', '35000.00', '34100', '2023-10-12', 'kelvin', '0', NULL, NULL, '10:58:50', '2023-10-12', '', '15', '70000', 'cash', '2', '3', NULL, 'Sales'),
(NULL, 'RS-3230023', 'admin', NULL, 'cash', '18000.00', '17600', '2023-10-12', 'Ruky Pharmacy', '0', NULL, NULL, '13:47:19', '2023-10-12', '', '19', '90000', 'cash', '5', '5', NULL, 'Sales'),
(NULL, 'RS-2022027', 'admin', NULL, 'cash', '8333.33', '7933', '2023-10-12', '', '0', NULL, NULL, '13:53:09', '2023-10-12', '', '19', '25000', 'cash', '3', '', NULL, 'Sales'),
(NULL, 'RS-333372', 'admin', NULL, 'cash', '16666.67', '16266', '2023-10-12', 'JJ Pharmacy', '0', NULL, NULL, '13:58:38', '2023-10-12', '', '19', '50000', 'cash', '3', '6', NULL, 'Sales'),
(NULL, 'RS-6230372', 'admin', NULL, 'cash', '40000.00', '39950', '2023-10-29', 'JJ Pharmacy', '0', NULL, NULL, '08:23:17', '2023-10-29', 'B544', '52', '80000', 'cash', '2', '6', NULL, 'Sales'),
(NULL, 'RS-6230372', 'admin', NULL, 'cash', '6666.67', '6466', '2023-10-29', 'JJ Pharmacy', '0', NULL, NULL, '08:23:18', '2023-10-29', 'b6', '25', '20000', 'cash', '3', '6', NULL, 'Sales'),
(NULL, 'RS-23353', 'admin', NULL, 'cash', '150', '100', '2023-10-29', 'Ruky Pharmacy', '0', NULL, NULL, '08:51:17', '2023-10-29', 'B11873', '17', '', 'cash', '2', '5', NULL, 'Sales'),
(NULL, 'RS-23353', 'admin', NULL, 'cash', '1000', '800', '2023-10-29', 'Ruky Pharmacy', '0', NULL, NULL, '08:51:17', '2023-10-29', 'B64', '28', '', 'cash', '3', '5', NULL, 'Sales'),
(NULL, 'RS-22823026', 'admin', NULL, 'cash', '1000.00', '850', '2023-10-12', 'kelvin', '0', NULL, NULL, '10:58:50', '2023-10-12', '', '9', '6000', 'cash', '6', '3', NULL, 'Sales'),
(NULL, 'RS-22823026', 'admin', NULL, 'cash', '35000.00', '34100', '2023-10-12', 'kelvin', '0', NULL, NULL, '10:58:50', '2023-10-12', '', '15', '70000', 'cash', '2', '3', NULL, 'Sales'),
(NULL, 'RS-3230023', 'admin', NULL, 'cash', '18000.00', '17600', '2023-10-12', 'Ruky Pharmacy', '0', NULL, NULL, '13:47:19', '2023-10-12', '', '19', '90000', 'cash', '5', '5', NULL, 'Sales'),
(NULL, 'RS-2022027', 'admin', NULL, 'cash', '8333.33', '7933', '2023-10-12', '', '0', NULL, NULL, '13:53:09', '2023-10-12', '', '19', '25000', 'cash', '3', '', NULL, 'Sales'),
(NULL, 'RS-333372', 'admin', NULL, 'cash', '16666.67', '16266', '2023-10-12', 'JJ Pharmacy', '0', NULL, NULL, '13:58:38', '2023-10-12', '', '19', '50000', 'cash', '3', '6', NULL, 'Sales'),
(NULL, 'RS-6230372', 'admin', NULL, 'cash', '40000.00', '39950', '2023-10-29', 'JJ Pharmacy', '0', NULL, NULL, '08:23:17', '2023-10-29', 'B544', '52', '80000', 'cash', '2', '6', NULL, 'Sales'),
(NULL, 'RS-6230372', 'admin', NULL, 'cash', '6666.67', '6466', '2023-10-29', 'JJ Pharmacy', '0', NULL, NULL, '08:23:18', '2023-10-29', 'b6', '25', '20000', 'cash', '3', '6', NULL, 'Sales'),
(NULL, 'RS-23353', 'admin', NULL, 'cash', '150', '100', '2023-10-29', 'Ruky Pharmacy', '0', NULL, NULL, '08:51:17', '2023-10-29', 'B11873', '17', '', 'cash', '2', '5', NULL, 'Sales'),
(NULL, 'RS-23353', 'admin', NULL, 'cash', '1000', '800', '2023-10-29', 'Ruky Pharmacy', '0', NULL, NULL, '08:51:17', '2023-10-29', 'B64', '28', '', 'cash', '3', '5', NULL, 'Sales'),
(NULL, 'RS-20323232', 'admin', NULL, 'cash', '4000.00', '3800', '2023-11-09', 'Remmy', '0', NULL, NULL, '10:11:58', '2023-11-09', 'B64', '28', '12000', 'cash', '3', '7', '2023-10-07', 'Sales'),
(NULL, 'RS-20323232', 'admin', NULL, 'cash', '500.00', '-400', '2023-11-09', 'Remmy', '0', NULL, NULL, '10:11:58', '2023-11-09', 'B211', '3', '1000', 'cash', '2', '7', '', 'Sales'),
(NULL, 'RS-20323232', 'admin', NULL, 'cash', '2000.00', '1850', '2023-11-09', 'Remmy', '0', NULL, NULL, '10:11:58', '2023-11-09', '', '7', '2000', 'cash', '1', '7', '2022-07-12', 'Sales'),
(NULL, 'RS-20323232', 'admin', NULL, 'cash', '4000.00', '3800', '2023-11-09', 'Remmy', '0', NULL, NULL, '10:13:35', '2023-11-09', 'B64', '28', '12000', 'cash', '3', '7', '2023-10-07', 'Sales'),
(NULL, 'RS-20323232', 'admin', NULL, 'cash', '500.00', '-400', '2023-11-09', 'Remmy', '0', NULL, NULL, '10:13:35', '2023-11-09', 'B211', '3', '1000', 'cash', '2', '7', '', 'Sales'),
(NULL, 'RS-20323232', 'admin', NULL, 'cash', '2000.00', '1850', '2023-11-09', 'Remmy', '0', NULL, NULL, '10:13:36', '2023-11-09', '', '7', '2000', 'cash', '1', '7', '2022-07-12', 'Sales'),
(NULL, 'RS-322363', 'admin', NULL, 'credit', '24000.00', '23100', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:54:12', '2023-11-09', 'B211', '3', '24000', 'credit', '1', '7', 'Array', 'Credit Note'),
(NULL, 'RS-322363', 'admin', NULL, 'credit', '50000.00', '49950', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:54:12', '2023-11-09', '', '10', '100000', 'credit', '2', '7', 'Array', 'Credit Note'),
(NULL, 'RS-322363', 'admin', NULL, 'credit', '12000.00', '11800', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:54:12', '2023-11-09', 'B023', '54', '12000', 'credit', '1', '7', 'Array', 'Credit Note'),
(NULL, 'RS-3436233', 'admin', NULL, 'credit', '22000.00', '21950', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:55:14', '2023-11-09', '', '10', '22000', 'credit', '1', '7', 'Array', 'Credit Note'),
(NULL, 'RS-3436233', 'admin', NULL, 'credit', '17000.00', '16800', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:55:14', '2023-11-09', 'B64', '28', '34000', 'credit', '2', '7', 'Array', 'Credit Note'),
(NULL, 'RS-3436233', 'admin', NULL, 'credit', '22000.00', '21950', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:56:36', '2023-11-09', '', '10', '22000', 'credit', '1', '7', '', 'Credit Note'),
(NULL, 'RS-3436233', 'admin', NULL, 'credit', '17000.00', '16800', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:56:36', '2023-11-09', 'B64', '28', '34000', 'credit', '2', '7', '', 'Credit Note'),
(NULL, 'RS-50222232', 'admin', NULL, 'cash', '17500.00', '17350', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:57:37', '2023-11-09', 'RS2132', '18', '35000', 'cash', '2', '7', '', 'Credit Note'),
(NULL, 'RS-50222232', 'admin', NULL, 'cash', '13333.33', '13283', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:57:37', '2023-11-09', 'B11873', '17', '40000', 'cash', '3', '7', '', 'Credit Note'),
(NULL, 'RS-50222232', 'admin', NULL, 'cash', '17500.00', '17350', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:58:13', '2023-11-09', 'RS2132', '18', '35000', 'cash', '2', '7', '', 'Credit Note'),
(NULL, 'RS-50222232', 'admin', NULL, 'cash', '13333.33', '13283', '2023-11-09', 'Remmy', '0', NULL, NULL, '12:58:13', '2023-11-09', 'B11873', '17', '40000', 'cash', '3', '7', '', 'Credit Note'),
(NULL, 'RS-232233', 'admin', NULL, 'credit', '7500.00', '7450', '2023-11-09', 'Remmy', '0', NULL, NULL, '13:28:08', '2023-11-09', '', '10', '15000', 'credit', '2', '7', '2023-09-28', 'Sales'),
(NULL, 'RS-232233', 'admin', NULL, 'credit', '4000.00', '3850', '2023-11-09', 'Remmy', '0', NULL, NULL, '13:28:08', '2023-11-09', 'B434', '63', '12000', 'credit', '3', '7', '2023-12-08', 'Sales'),
(NULL, 'RS-303222', 'admin', NULL, 'cash', '5000.00', '4800', '2023-11-09', 'Remmy', '0', NULL, NULL, '13:29:46', '2023-11-09', 'B533', '58', '10000', 'cash', '2', '7', '2023-11-09', 'Sales'),
(NULL, 'RS-303222', 'admin', NULL, 'cash', '12000.00', '12000', '2023-11-09', 'Remmy', '0', NULL, NULL, '13:29:46', '2023-11-09', '', '38', '12000', 'cash', '1', '7', '', 'Sales'),
(NULL, 'RS-22993223', 'admin', NULL, 'credit', '500.00', '350', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:05:15', '2023-11-11', 'RS2132', '18', '1000', 'credit', '2', '7', '', 'Credit Note'),
(NULL, 'RS-22993223', 'admin', NULL, 'credit', '240.00', '240', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:05:15', '2023-11-11', 'B43', '35', '1200', 'credit', '5', '7', '', 'Credit Note'),
(NULL, 'RS-22993223', 'admin', NULL, 'credit', '500.00', '350', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:11:04', '2023-11-11', 'RS2132', '18', '1000', 'credit', '2', '7', '', 'Credit Note'),
(NULL, 'RS-22993223', 'admin', NULL, 'credit', '240.00', '240', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:11:05', '2023-11-11', 'B43', '35', '1200', 'credit', '5', '7', '', 'Credit Note'),
(NULL, 'RS-22993223', 'admin', NULL, 'credit', '500.00', '350', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:13:14', '2023-11-11', 'RS2132', '18', '1000', 'credit', '2', '7', '', 'Credit Note'),
(NULL, 'RS-22993223', 'admin', NULL, 'credit', '240.00', '240', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:13:14', '2023-11-11', 'B43', '35', '1200', 'credit', '5', '7', '', 'Credit Note'),
(NULL, 'RS-0330229', 'admin', NULL, 'cash', '650.00', '650', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:22:00', '2023-11-11', 'B43', '35', '1300', 'cash', '2', '7', '', 'Credit Note'),
(NULL, 'RS-0330229', 'admin', NULL, 'cash', '366.67', '216', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:22:01', '2023-11-11', 'BR732', '8', '1100', 'cash', '3', '7', '07/13/22', 'Credit Note'),
(NULL, 'RS-0330229', 'admin', NULL, 'cash', '650.00', '650', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:22:59', '2023-11-11', 'B43', '35', '1300', 'cash', '2', '7', '', 'Credit Note'),
(NULL, 'RS-0330229', 'admin', NULL, 'cash', '366.67', '216', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:22:59', '2023-11-11', 'BR732', '8', '1100', 'cash', '3', '7', '07/13/22', 'Credit Note'),
(NULL, 'RS-220224', 'admin', NULL, 'cash', '5500.00', '5500', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:46:34', '2023-11-11', 'B43', '35', '11000', 'cash', '2', '10', '2023-10-11', 'Credit Note'),
(NULL, 'RS-220224', 'admin', NULL, 'cash', '', '-150', '2023-11-11', 'Karem3', '0', NULL, NULL, '10:46:34', '2023-11-11', 'BR732', '8', '12000', 'cash', '0', '10', '07/14/22', 'Credit Note'),
(NULL, 'RS-2202036', 'admin', NULL, 'credit', '2000.00', '1950', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:50:04', '2023-11-11', 'B11873', '17', '4000', 'credit', '2', '7', '2023-10-21', 'Sales'),
(NULL, 'RS-2202036', 'admin', NULL, 'credit', '100.00', '-50', '2023-11-11', 'Remmy', '0', NULL, NULL, '10:50:04', '2023-11-11', 'BR732', '8', '100', 'credit', '1', '7', '07/14/22', 'Sales'),
(NULL, 'RS-050300', 'admin', NULL, 'credit', '1500.00', '1350', '2023-11-11', 'Remmy', '0', NULL, NULL, '11:40:07', '2023-11-11', 'B332', '60', '3000', 'credit', '2', '7', '2023-11-09', 'Sales'),
(NULL, 'RS-2623530', 'admin', NULL, 'credit', '1500.00', '1350', '2023-11-11', 'Remmy', '0', NULL, NULL, '11:42:08', '2023-11-11', 'B332', '60', '1500', 'credit', '1', '7', '2023-11-09', 'Credit Note'),
(NULL, 'RS-303328', 'admin', NULL, 'credit', '150.00', '150', '2023-11-11', 'John', '0', NULL, NULL, '11:51:20', '2023-11-11', 'B111', '46', '30000', 'credit', '200', '2', '', 'Sales'),
(NULL, 'RS-22223320', 'admin', NULL, 'credit', '700.00', '650', '2023-11-11', 'kelvin', '0', NULL, NULL, '12:10:59', '2023-11-11', 'BH892', '10', '1400', 'credit', '2', '3', '2023-09-28', 'Sales'),
(NULL, 'RS-22223320', 'admin', NULL, 'credit', '5000.00', '4850', '2023-11-11', 'kelvin', '0', NULL, NULL, '12:11:00', '2023-11-11', 'BN021', '9', '5000', 'credit', '1', '3', '07/16/22', 'Sales'),
(NULL, 'RS-2332003', 'admin', NULL, 'cash', '1000.00', '950', '2023-11-11', 'Remmy', '0', NULL, NULL, '12:18:46', '2023-11-11', 'BH892', '10', '1000', 'cash', '1', '7', '2023-09-28', 'Credit Note'),
(NULL, 'RS-8380076', 'admin', NULL, 'credit', '40.00', '40', '2023-11-11', 'Remmy', '0', NULL, NULL, '12:40:31', '2023-11-11', '10345', '65', '2000', 'credit', '50', '7', '2026-11-30', 'Sales'),
(NULL, 'RS-30203369', 'admin', NULL, 'credit', '40.00', '40', '2023-11-11', 'Remmy', '0', NULL, NULL, '12:41:47', '2023-11-11', '10345', '65', '2000', 'credit', '50', '7', '2026-11-30', 'Credit Note'),
(NULL, 'RS-633025', 'admin', NULL, 'cash', '100', '100', '2023-11-23', 'JJ Pharmacy', '0', NULL, NULL, '10:23:46', '2023-11-23', 'BC291', '410', '300.00', 'cash', '3.00', '6', '1905-03-19', 'Sales'),
(NULL, 'RS-633025', 'admin', NULL, 'cash', '300.00', '300', '2023-11-23', 'JJ Pharmacy', '0', NULL, NULL, '10:23:47', '2023-11-23', 'BK023', '411', '600', 'cash', '2.00', '6', '1905-03-19', 'Sales'),
(NULL, 'RS-633025', 'admin', NULL, 'cash', '400', '400', '2023-11-23', 'JJ Pharmacy', '0', NULL, NULL, '10:23:47', '2023-11-23', 'BK024', '412', '800.00', 'cash', '2.00', '6', '1905-03-19', 'Sales'),
(NULL, 'RS-3723322', 'admin', NULL, 'credit', '65.01', '65', '2023-11-23', 'JJ Pharmacy', '0', NULL, NULL, '12:26:35', '2023-11-23', 'BC291', '410', '130.02', 'credit', '2.00', '6', '1905-03-19', 'Sales'),
(NULL, 'RS-3723322', 'admin', NULL, 'credit', '416.67', '416', '2023-11-23', 'JJ Pharmacy', '0', NULL, NULL, '12:26:35', '2023-11-23', 'BK024', '416', '1250.01', 'credit', '3.0', '6', '2024-11-14', 'Sales'),
(NULL, 'RS-3723322', 'admin', NULL, 'credit', '760.01', '760', '2023-11-23', 'JJ Pharmacy', '0', NULL, NULL, '12:26:35', '2023-11-23', 'BC291', '450', '2280.03', 'credit', '3.00', '6', '2024-11-12', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '100', '100', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:13', '2023-11-24', 'BC291', '410', '200.00', 'credit', '2.00', '5', '1905-03-19', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '125.00', '125', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:14', '2023-11-24', 'BK023', '451', '500', 'credit', '4.00', '5', '2025-11-13', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '300', '300', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:14', '2023-11-24', 'B920', '413', '900.00', 'credit', '3.00', '5', '2024-11-11', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '400', '400', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:14', '2023-11-24', 'BK024', '416', '1600.00', 'credit', '4.00', '5', '2024-11-14', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '200', '200', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:15', '2023-11-24', 'BK023', '411', '600.00', 'credit', '3.00', '5', '1905-03-19', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '225.00', '225', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:15', '2023-11-24', 'B920', '409', '900', 'credit', '4.00', '5', '1905-03-19', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '500', '500', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:16', '2023-11-24', 'BH2921', '595', '1000.00', 'credit', '2.00', '5', '2025-11-13', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '700', '700', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:16', '2023-11-24', 'BK8891', '596', '700.00', 'credit', '1.00', '5', '2024-11-14', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '450.00', '450', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:16', '2023-11-24', 'BT992', '606', '900', 'credit', '2.00', '5', '2024-11-12', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '396.04', '396', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:16', '2023-11-24', 'BR89222', '607', '1200', 'credit', '3.03', '5', '2025-11-13', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '400.00', '400', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:16', '2023-11-24', 'BK02922', '608', '800', 'credit', '2.00', '5', '2024-11-14', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '500', '500', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:17', '2023-11-24', 'BL931', '559', '1500.00', 'credit', '3.00', '5', '2025-11-13', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '300', '300', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:17', '2023-11-24', 'BK02333', '571', '1200.00', 'credit', '4.00', '5', '2025-11-13', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '700', '700', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:18', '2023-11-24', 'B92023', '581', '2800.00', 'credit', '4.00', '5', '2024-11-11', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '800', '800', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:18', '2023-11-24', 'BK891', '583', '4000.00', 'credit', '5.00', '5', '2025-11-13', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '700', '700', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:18', '2023-11-24', 'KC291928', '594', '2100.00', 'credit', '3.00', '5', '2024-11-12', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '3004.29', '3004', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:19', '2023-11-24', 'B92023', '605', '7000', 'credit', '2.33', '5', '2024-11-11', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '266.67', '266', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:19', '2023-11-24', 'BR89222', '607', '800', 'credit', '3.00', '5', '2025-11-13', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '100', '100', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:19', '2023-11-24', 'BC2912', '570', '400.00', 'credit', '4.00', '5', '2024-11-12', 'Sales'),
(NULL, 'RS-3232322', 'admin', NULL, 'credit', '200', '200', '2023-11-24', 'Ruky Pharmacy', '0', NULL, NULL, '12:29:19', '2023-11-24', 'BK0243333', '572', '60000.00', 'credit', '300.00', '5', '2024-11-14', 'Sales'),
(NULL, 'RS-23032372', 'admin', NULL, 'cash', '200', '200', '2023-11-25', 'JJ Pharmacy', '0', NULL, NULL, '10:42:21', '2023-12-29', 'B92023', '581', '11200.00', 'cash', '56.00', '6', '2024-11-11', 'Sales'),
(NULL, 'RS-23032372', 'admin', NULL, 'cash', '1199.70', '1199', '2023-11-25', 'JJ Pharmacy', '0', NULL, NULL, '10:42:21', '2023-12-29', 'BK02333', '571', '19999', 'cash', '16.67', '6', '2025-11-13', 'Sales'),
(NULL, 'RS-23032372', 'admin', NULL, 'cash', '12', '12', '2023-11-25', 'JJ Pharmacy', '0', NULL, NULL, '10:42:22', '2023-12-29', 'B920', '409', '144.00', 'cash', '12.00', '6', '1905-03-19', 'Sales'),
(NULL, 'RS-23032372', 'admin', NULL, 'cash', '12542.24', '12542', '2023-11-25', 'JJ Pharmacy', '0', NULL, NULL, '10:42:22', '2023-12-29', 'BC291', '410', '156778', 'cash', '12.50', '6', '1905-03-19', 'Sales'),
(NULL, 'RS-5642320', 'admin', NULL, 'credit', '100', '100', '2023-11-28', 'Ruky Pharmacy', '0', NULL, NULL, '09:12:56', '2023-11-28', 'B920333', '569', '200.00', 'credit', '2.00', '5', '2024-11-11', 'Sales'),
(NULL, 'RS-5642320', 'admin', NULL, 'credit', '266.67', '266', '2023-11-28', 'Ruky Pharmacy', '0', NULL, NULL, '09:12:56', '2023-11-28', 'BC291', '414', '800', 'credit', '3.00', '5', '2024-11-12', 'Sales'),
(NULL, 'RS-5642320', 'admin', NULL, 'credit', '300.00', '300', '2023-11-28', 'Ruky Pharmacy', '0', NULL, NULL, '09:12:56', '2023-11-28', 'BK023', '411', '900.00', 'credit', '3', '5', '1905-03-19', 'Sales'),
(NULL, 'RS-200035', 'admin', NULL, 'cash', '300', '300', '2023-11-28', 'Remmy', '0', NULL, NULL, '09:21:11', '2023-11-28', 'BK891', '583', '600.00', 'cash', '2.00', '7', '2025-11-13', 'Sales'),
(NULL, 'RS-308330', 'admin', NULL, 'credit', '225.00', '225', '2023-11-28', 'Remmy', '0', NULL, NULL, '09:39:23', '2023-11-28', 'BK891', '583', '450', 'credit', '2', '7', '2025-11-13', 'Credit Note'),
(NULL, 'RS-308330', 'admin', NULL, 'credit', '270002.33', '270002', '2023-11-28', 'Remmy', '0', NULL, NULL, '09:39:23', '2023-11-28', 'BL931', '559', '810006.99', 'credit', '3', '7', '2025-11-13', 'Credit Note');

-- --------------------------------------------------------

--
-- Table structure for table `wunit`
--

CREATE TABLE `wunit` (
  `unit_id` int NOT NULL,
  `unit` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_payhist`
--
ALTER TABLE `credit_payhist`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cust_payhist`
--
ALTER TABLE `cust_payhist`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cust_retpayhist`
--
ALTER TABLE `cust_retpayhist`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `medical_allowance`
--
ALTER TABLE `medical_allowance`
  MODIFY `allowance_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `overtime`
--
ALTER TABLE `overtime`
  MODIFY `overtime_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;

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
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `unit_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=650;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wcategory`
--
ALTER TABLE `wcategory`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=651;

--
-- AUTO_INCREMENT for table `wcredit_payhist`
--
ALTER TABLE `wcredit_payhist`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `wproducts`
--
ALTER TABLE `wproducts`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

--
-- AUTO_INCREMENT for table `wunit`
--
ALTER TABLE `wunit`
  MODIFY `unit_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=652;

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
