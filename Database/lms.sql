-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2021 at 07:15 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `BookId` int(10) NOT NULL,
  `Author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`BookId`, `Author`) VALUES
(3, 'Jay Prakash'),
(4, 'Jay Prakash'),
(5, 'x'),
(6, 'a1'),
(7, 'Bogart'),
(7, 'Kenneth'),
(8, 'Auer'),
(8, 'Davil J.'),
(9, 'Rob'),
(9, 'Williams'),
(10, 'Deiteil'),
(11, 'Sharma'),
(12, 'Barney Stinson'),
(13, 'Puri'),
(14, 'Manna'),
(15, 'Jindal U.C'),
(16, 'Prasad'),
(17, 'Aravind Alex'),
(17, 'Haldar Sibsankar'),
(18, 'Sandhu'),
(18, 'Singh'),
(19, 'Oguz Atay'),
(20, 'anthony'),
(21, 'anthony'),
(22, 'Donald Knuth'),
(23, 'Albert Camus');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookId` int(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Publisher` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  `Availability` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `Title`, `Publisher`, `Year`, `Availability`) VALUES
(1, 'OS', 'PEARSON', '2006', 1),
(2, 'DBMS', 'TARGET67', '2010', 0),
(3, 'TOC', 'NITC', '2018', 2),
(4, 'TOC', 'NITC', '2018', 0),
(5, 'DAA', 'y', '2014', 0),
(6, 'DSA', 'X', '2010', 9),
(7, 'Discrete Structures', 'Pearson', '2010', 10),
(8, 'Database Processing', 'Prentice Hall', '2013', 11),
(9, 'Computer System Architecture', 'Prentice Hall', '2015', 3),
(10, 'C: How to program', 'Prentice Hall', '2009', 4),
(11, 'Atomic and Nuclear Systems', 'Pearson India ', '2017', 10),
(12, 'The PlayBook', 'Stinson', '2010', 8),
(13, 'General Theory of Relativity', 'Pearson India ', '2012', 5),
(14, 'Heat and Thermodynamics', 'Pearson', '2013', 9),
(15, 'Machine Design', 'Pearson India ', '2012', 4),
(16, 'Nuclear Physics', 'Pearson India ', '1998', 5),
(17, 'Operating System', 'Pearson India ', '1990', 6),
(18, 'Theory of Machines', 'Pearson', '1992', 9),
(19, 'Tutunamayanlar', 'roman', '2000', 10),
(20, 'otomatik portakal', 'dew', '1998', 0),
(21, 'otomatik portakal', 'dew', '1998', 1),
(22, 'The Art of Computer Programming', 'ASC', '1968 ', 5),
(23, 'Yabanc?', 'Can', '1942', 7);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `M_Id` int(10) NOT NULL,
  `RollNo` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Phone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`M_Id`, `RollNo`, `Msg`, `Date`, `Time`, `Email`, `Phone`) VALUES
(127, '12345', 'proje çok güzel.', '2021-09-01', '17:28:08', 'laikalpr.1@gmail.com', '05416613585'),
(128, '158', 'sistem iyi', '2021-09-02', '21:28:04', 'muha@gmail.com', '45612387845'),
(129, '158', 'selammm', '2021-09-03', '23:05:54', 'laikalpr.1@gmail.com', '05416613581');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  `Date_of_Issue` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Date_of_Return` date DEFAULT NULL,
  `Dues` int(10) DEFAULT NULL,
  `Renewals_left` int(10) DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`RollNo`, `BookId`, `Date_of_Issue`, `Due_Date`, `Date_of_Return`, `Dues`, `Renewals_left`, `Time`) VALUES
('111', 8, '2021-09-01', '2022-02-28', NULL, NULL, 1, '01:25:53'),
('111', 11, '2021-09-01', '2022-02-28', NULL, NULL, 1, '01:35:12'),
('111', 12, '2021-09-01', '2022-02-28', NULL, NULL, 1, '01:19:08'),
('111', 19, '2021-09-01', '2022-02-28', NULL, NULL, 1, '01:26:38'),
('111', 21, NULL, NULL, NULL, NULL, NULL, '14:40:01'),
('114', 12, '2021-09-01', '2021-10-31', NULL, NULL, 1, '16:54:16'),
('12345', 1, '2021-09-02', '2021-11-01', '2021-09-02', -60, 1, '14:30:58'),
('12345', 3, '2021-09-02', '2021-11-01', NULL, NULL, 1, '03:21:37'),
('12345', 7, '2021-08-26', '2021-10-25', '2021-08-26', -60, 1, '22:00:27'),
('12345', 8, '2021-08-24', '2021-10-23', '2021-08-26', -58, 1, '17:29:15'),
('12345', 9, '2021-09-02', '2021-11-01', NULL, NULL, 1, '18:20:30'),
('12345', 10, '2021-08-24', '2021-10-23', '2021-08-26', -58, 1, '17:26:46'),
('12345', 11, '2021-08-22', '2021-10-21', '2021-08-26', -56, 1, '18:02:11'),
('12345', 12, '2021-08-25', '2021-10-24', '2021-08-26', -59, 1, '19:56:43'),
('12345', 13, '2021-08-26', '2021-10-25', '2021-08-29', -57, 1, '22:00:50'),
('12345', 14, '2021-08-29', '2021-10-28', '2021-08-31', -58, 1, '22:29:42'),
('12345', 15, '2021-09-01', '2021-10-31', '2021-09-01', -60, 1, '17:12:53'),
('12345', 16, '2021-08-26', '2021-10-25', '2021-09-01', -54, 1, '22:01:23'),
('12345', 17, '2021-08-26', '2021-10-25', '2021-08-26', -60, 1, '22:01:27'),
('12345', 18, '2021-09-01', '2021-10-31', NULL, NULL, 1, '14:30:47'),
('12345', 19, '2021-08-25', '2021-10-24', '2021-08-26', -59, 1, '19:56:06'),
('12345', 21, '2021-08-25', '2021-10-24', '2021-08-29', -56, 1, '18:15:52'),
('13', 12, '2021-08-31', '2021-10-30', '2021-08-31', -60, 1, '22:26:55'),
('13', 14, '2021-09-01', '2021-10-31', '2021-09-01', -60, 1, '16:49:50'),
('13', 18, '2021-09-01', '2021-10-31', '2021-09-01', -60, 1, '16:17:52'),
('13', 19, '2021-09-01', '2021-10-31', '2021-09-01', -60, 1, '16:30:09'),
('158', 1, '2021-09-03', '2021-11-02', '2021-09-03', -60, 1, '17:02:46'),
('158', 8, '2021-09-03', '2021-11-02', '2021-09-03', -60, 1, '00:06:23'),
('158', 9, '2021-09-03', '2021-11-02', NULL, NULL, 1, '16:31:49'),
('158', 11, '2021-09-02', '2021-11-01', '2021-09-02', -60, 1, '21:28:38'),
('158', 12, '2021-09-03', '2021-11-02', NULL, NULL, 1, '17:03:17'),
('158', 15, '2021-09-03', '2021-11-02', NULL, NULL, 1, '23:06:53'),
('158', 16, '2021-09-03', '2021-11-02', NULL, NULL, 1, '17:01:54'),
('158', 17, '2021-09-03', '2021-11-02', NULL, NULL, 1, '22:57:01'),
('158', 19, '2021-09-02', '2021-11-01', NULL, NULL, 1, '22:56:16'),
('ADMIN', 10, '2021-08-25', '2022-02-21', '2021-08-26', -179, 1, '20:33:21'),
('ADMIN', 11, '2021-08-25', '2022-02-21', NULL, NULL, 1, '20:31:28'),
('ADMIN', 12, '2021-08-26', '2022-02-22', NULL, NULL, 1, '17:52:43'),
('ADMIN', 13, '2021-08-26', '2022-02-22', NULL, NULL, 1, '18:18:25'),
('ADMIN', 16, '2021-08-25', '2022-02-21', NULL, NULL, 1, '20:33:17'),
('ADMIN', 18, '2021-08-25', '2022-02-21', NULL, NULL, 1, '20:33:10'),
('ADMIN', 19, '2021-08-25', '2022-02-21', NULL, NULL, 1, '20:31:09'),
('b160001cs', 9, '2021-10-25', '2021-12-24', NULL, NULL, 1, '13:14:20'),
('b160001cs', 11, '2021-10-25', '2021-12-24', NULL, NULL, 1, '13:14:20'),
('b160003ch', 9, '2021-10-25', '2021-12-24', '2021-08-26', -120, 1, '13:14:20'),
('b160011ch', 10, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160011ch', 17, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160111cs', 1, '2018-10-15', '2018-12-14', NULL, NULL, 1, '13:14:20'),
('B160158CS', 1, '2018-10-15', '2020-04-12', '2021-08-26', 501, 0, '13:14:20'),
('B160158CS', 2, '2018-10-16', '2018-12-15', NULL, NULL, 1, '13:14:20'),
('b160158cs', 3, '2021-08-25', '2021-10-24', NULL, NULL, 1, '13:14:20'),
('b160158cs', 9, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160158cs', 18, '2018-10-25', '2018-12-24', '2021-08-26', 976, 1, '13:14:20'),
('b160511cs', 2, '2018-10-16', '2018-12-15', '2018-10-16', -60, 1, '13:14:20'),
('b160511cs', 6, '2018-10-16', '2018-12-15', '2018-10-16', -60, 1, '13:14:20'),
('b160511cs', 10, '2018-10-25', '2018-12-24', '2021-08-26', 976, 1, '13:14:20'),
('b160511cs', 11, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160511cs', 13, '2018-10-25', '2018-12-24', '2021-08-26', 976, 1, '13:14:20'),
('b160511cs', 18, '2021-08-24', '2021-10-23', NULL, NULL, 1, '13:14:20'),
('b160632cs', 3, '2018-07-16', '2018-11-14', '2018-10-25', -20, 0, '13:14:20'),
('B160632CS', 15, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160854cs', 6, '2018-10-16', '2019-04-14', NULL, NULL, 1, '13:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`RollNo`, `BookId`) VALUES
('111', 8),
('111', 12),
('114', 12),
('12345', 18),
('13', 21),
('158', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `RollNo` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `MobNo` bigint(11) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`RollNo`, `Name`, `Type`, `Category`, `EmailId`, `MobNo`, `Password`) VALUES
('105', 'süme', 'Student', 'GEN', 'süm@gmail.com', 5487963214, '123'),
('111', 'inayet', 'Student', 'ST', 'lal@gmail.com', 5486613581, '12345'),
('114', 'Sirin', 'Student', 'GEN', 'sirin@gmail.com', 54221789633, '12345'),
('12345', 'Laika Alper', 'Student', 'GEN', 'laikalpr@gmail.com', 5416613581, '12345'),
('13', 'melek özkan', 'Student', 'GEN', 'mel@gmail.com', 5422147896, '12345'),
('15', 'melek öz', 'Student', 'GEN', 'mlköz@gmail.com', 5422147896, '12345'),
('158', 'Muhammed', 'Student', 'GEN', 'muha@gmail.com', 54278963120, '123456'),
('201', 'Begüm Bolat', 'Student', 'ST', 'beg@gmail.com', 5487962147, '12345'),
('456', 'laik', 'Student', 'GEN', 'laki@gmail.com', 546321789, '1234'),
('852', 'Laika Alper', 'Student', 'GEN', 'lai@gmail.com', 5416613581, '12345'),
('963', 'melek özk', 'Student', 'GEN', 'melo@gmail.com', 78945612300, '852963'),
('ADMIN', 'admin', 'Admin', NULL, 'admin@gmail.com', 123456789, 'admin'),
('b160001cs', 'John', 'Student', 'GEN', 'john@gmail.com', 9876543210, 'b160001cs'),
('b160002cs', 'Adam', 'Student', 'ST', 'adam@yahoo.com', 7845965212, 'b160002cs'),
('b160003ch', 'Alice', 'Student', 'OBC', 'alice@hotmail.com', 4512451245, 'b160003ch'),
('b160004me', 'Abbot', 'Student', 'GEN', 'abbot@gmail.com', 6352416352, 'b160004me'),
('b160006cs', 'Bob', 'Student', 'GEN', 'bob@gmail.com', 4141415263, 'b160006cs'),
('b160007cs', 'Goku', 'Student', 'GEN', 'goku@yahoo.com', 4545451212, 'b160007cs'),
('b160008cs', 'Ben', 'Student', 'GEN', 'ben10@hotmail.com', 6352416345, 'b160008cs'),
('b160010cs', 'Harry', 'Student', 'GEN', 'harry@hotmail.com', 4578457845, 'b160010cs'),
('b160011ch', 'Gwen', 'Student', 'GEN', 'gwen@yahoo.com', 9685747474, 'b160011ch'),
('b160012me', 'Kevin', 'Student', 'ST', 'kevin11@hotmail.com', 1242425163, 'b160012me'),
('B160111Cs', 'Bharat', 'Student', 'GEN', 'bharat@gmail.com', 123456, 'abcd'),
('B160158CS', 'MANU', 'Student', 'GEN', 'manu@gmail.com', 8365917597, 'manu'),
('b160257me', 'Eve', 'Student', 'GEN', 'eve@gmail.com', 5451525356, 'b160257me'),
('b160321ec', 'Joey', 'Student', 'SC', 'joey@yahoo.com', 9898982020, 'b160321ec'),
('b160412cs', 'Barney', 'Student', 'ST', 'legendary@gmail.com', 9695989192, 'b160412cs'),
('b160423cs', 'Rachel', 'Student', 'GEN', 'rachel@gmail.com', 7475787671, 'b160423cs'),
('B160511CS', 'MALHAR', 'Student', 'OBC', 'malhar@gmail.com', 9756153859, 'abcd'),
('B160632CS', 'KENIL', 'Student', 'GEN', 'kenilshah081198@gmail.com', 9892506094, '1234'),
('b160777cs', 'Sheldon', 'Student', 'GEN', 'smartestpersoninroom@gmail.com', 9696969696, 'b160777cs'),
('b160854cs', 'Ram Prabhu', 'Student', 'SC', 'ram@nitc.ac.in', 968599, '1234'),
('b160951cs', 'Misty', 'Student', 'SC', 'watermaster@hotmail.com', 4145424847, 'b160951cs'),
('b160999cs', 'Chandler', 'Student', 'OBC', 'sarcasticlord@hotmail.com', 9494959694, 'b160999cs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`BookId`,`Author`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`M_Id`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`RollNo`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `M_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `return`
--
ALTER TABLE `return`
  ADD CONSTRAINT `return_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `return_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
