-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 07:49 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `b_id` varchar(100) NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`b_id`, `b_name`, `course`) VALUES
('BE401', 'BE', 'ISE'),
('BE402', 'BE', 'CSE'),
('BE403', 'BE', 'ECE'),
('MT404', 'MTECH', 'ROBOTICS'),
('MT405', 'MTECH', 'MACHINE LEARNING'),
('MT406', 'MTECH', 'WIRELESS COMMUNICATION'),
('MC407', 'MCA', 'SOFTWARE DEVELOPMENT'),
('MC408', 'MCA', 'CLOUD COMPUTING'),
('MC409', 'MCA', 'ARTIFICIAL INTELLIGENCE'),
('MC410', 'MCA', 'USER INTERFACE DESIGN');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `tra_num` varchar(100) NOT NULL,
  `s_id` varchar(100) NOT NULL,
  `b_id` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`tra_num`, `s_id`, `b_id`, `amount`) VALUES
('12345410', 'S129', 'BE403', 25000),
('12345619', 'S128', 'MC409', 34500),
('12345620', 'S127', 'MC406', 25000),
('12345622', 'S126', 'MC410', 45500),
('12345630', 'S125', 'MC406', 23000),
('12345635', 'S124', 'MC409', 55000),
('12345639', 'S123', 'MC408', 50000),
('12345640', 'S122', 'MC406', 32000),
('12345642', 'S121', 'MT405', 45000),
('12345643', 'S120', 'MT405', 28000),
('12345644', 'S118', 'MT405', 37000),
('12345645', 'S118', 'MT404', 35000),
('12345650', 'S117', 'BE403', 25000),
('12345664', 'S115', 'BE401', 75000),
('12345665', 'S116', 'BE403', 45000),
('12345666', 'S114', 'BE403', 33000),
('12345667', 'S113', 'BE402', 20000),
('12345668', 'S112', 'BE403', 26000),
('12345669', 'S111', 'BE401', 42000),
('12345670', 'S110', 'BE401', 19000),
('12345671', 'S109', 'BE403', 29000),
('12345672', 'S108', 'BE402', 50000),
('12345673', 'S107', 'BE403', 22000),
('12345674', 'S106', 'BE401', 35000),
('12345675', 'S105', 'BE402', 20000),
('12345676', 'S104', 'BE403', 45000),
('12345677', 'S103', 'BE401', 30000),
('12345678', 'S102', 'BE402', 25000),
('12365478', 'S101', 'BE401', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` varchar(100) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `s_name`, `gender`, `email`, `ph_no`) VALUES
('S101', 'GOURISH', 'male', 'gourish@gmail.com', '9343346829'),
('S102', 'SURAJ', 'male', 'suraj@gmail.com', '9145238695'),
('S103', 'ARUN', 'male', 'arun@gmail.com', '9145826739'),
('S104', 'DHRUVA', 'male', 'dhruva@gmail.com', '9236485139'),
('S105', 'CHANDU', 'male', 'chandu@gmail.com', '9645823158'),
('S106', 'CHARAN', 'male', 'charan@gmail.com', '9856321459'),
('S107', 'SAGAR', 'male', 'sagar@gmail.com', '9856321869'),
('S108', 'ANIL', 'male', 'anil@gmail.com', '9985462589'),
('S109', 'ANAND', 'male', 'anand@gmail.com', '9158746294'),
('S110', 'SAIPRASAD', 'male', 'saiprasad@gmail.com', '9625489673'),
('S111', 'PRASAD', 'male', 'prasad@gmail.com', '9845682147'),
('S112', 'SHUBHA', 'female', 'shubha@gmail.com', '8956748532'),
('S113', 'KAVAN', 'female', 'kavana@gmail.com', '8549612339'),
('S114', 'PREETI', 'female', 'preeti@gmail.com', '7546829135'),
('S115', 'SHREEVALLABHA', 'male', 'shreevallabha@gmail.com', '7849632518'),
('S116', 'HEMANT', 'male', 'hemant@gmail.com', '8764982359'),
('S117', 'SOMANNA', 'male', 'somanna@gmail.com', '9696485629'),
('S118', 'SHRAVAN', 'male', 'shravan@gmail.com', '9587469325'),
('S119', 'VIKAS', 'male', 'vikas@gmail.com', '9658745896'),
('S120', 'PAWAN', 'male', 'pawan@gmail.com', '9235698647'),
('S121', 'MUKTA', 'female', 'mukta@gmail.com', '7896589658'),
('S122', 'VARSHA', 'female', 'varsha@gmail.com', '8965785496'),
('S123', 'SONALI', 'female', 'sonali@gmail.com', '8569458723'),
('S124', ' SOUMYA', 'female', 'soumya@gmail.com', '8759669485'),
('S125', 'SHARANYA', 'female', 'sharanya@gmail.com', '8569745263'),
('S126', 'DHANALAXMI', 'female', 'dhanalaxmi@gmail.com', '8942579418'),
('S127', 'AMAY', 'male', 'amay@gmail.com', '7845968513'),
('S128', 'SANJAY', 'male', 'sanjay@gmail.com', '8523697416'),
('S129', 'Ananth', 'male', 'ananth@gmail.com', '988666455');

-- --------------------------------------------------------

--
-- Table structure for table `studentenroll`
--

CREATE TABLE `studentenroll` (
  `s_id` varchar(100) NOT NULL,
  `b_id` varchar(100) NOT NULL,
  `year` int(100) NOT NULL,
  `t_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentenroll`
--

INSERT INTO `studentenroll` (`s_id`, `b_id`, `year`, `t_id`) VALUES
('S101', 'BE401', 2, 'T103'),
('S102', 'BE402', 1, 'T102'),
('S103', 'BE401', 1, 'T102'),
('S104', 'BE403', 2, 'T106'),
('S105', 'BE402', 1, 'T104'),
('S106', 'BE401', 1, 'T109'),
('S107', 'BE403', 1, 'T107'),
('S108', 'BE402', 1, 'T103'),
('S109', 'BE403', 2, 'T102'),
('S110', 'BE401', 1, 'T106'),
('S111', 'BE401', 1, 'T102'),
('S112', 'BE403', 2, 'T102'),
('S113', 'BE402', 1, 'T101'),
('S114', 'BE403', 2, 'T104'),
('S115', 'BE401', 1, 'T106'),
('S116', 'BE403', 2, 'T103'),
('S117', 'BE403', 2, 'T103'),
('S118', 'MT404', 1, 'T101'),
('S119', 'MT405', 2, 'T110'),
('S120', 'MT405', 1, 'T105'),
('S121', 'MT405', 1, 'T104'),
('S122', 'MC406', 1, 'T104'),
('S123', 'MC408', 1, 'T109'),
('S124', 'MC409', 1, 'T109'),
('S125', 'MC406', 2, 'T108'),
('S126', 'MC410', 2, 'T107'),
('S127', 'MC406', 1, 'T105'),
('S128', 'MC409', 2, 'T109'),
('S129', 'MC406', 2, 'T106'),
('S130', 'MC410', 3, 'T105');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `t_id` varchar(100) NOT NULL,
  `t_name` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`t_id`, `t_name`, `gender`, `designation`) VALUES
('', '', '', ''),
('T101', 'ANUPAMA', 'FEMALE', 'HOD'),
('T102', 'SAGAR', 'MALE', 'ASST PROF'),
('T103', 'KARTHIK', 'MALE', 'PROF'),
('T104', 'SACHIN', 'MALE', 'ASST PROF'),
('T105', 'SHRUTHI', 'FEMALE', 'ASST PROF'),
('T106', 'KURIAN', 'MALE', 'PROF'),
('T107', 'BASAVARAJ', 'MALE', 'ASST PROF'),
('T108', 'SURVI', 'FEMALE', 'PROF'),
('T109', 'SWATHI', 'FEMALE', 'ASST PROF'),
('T110', 'AFSHAN', 'FEMALE', 'ASST PROF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`tra_num`),
  ADD KEY `Test3` (`s_id`),
  ADD KEY `Test4` (`b_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `studentenroll`
--
ALTER TABLE `studentenroll`
  ADD KEY `Test` (`s_id`),
  ADD KEY `Test1` (`b_id`),
  ADD KEY `test2` (`t_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`t_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `Test3` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Test4` FOREIGN KEY (`b_id`) REFERENCES `branch` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studentenroll`
--
ALTER TABLE `studentenroll`
  ADD CONSTRAINT `Test1` FOREIGN KEY (`b_id`) REFERENCES `branch` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test2` FOREIGN KEY (`t_id`) REFERENCES `teachers` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
