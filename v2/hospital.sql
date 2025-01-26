-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 06:36 AM
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
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `appointmentDate` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `diseases` varchar(45) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `userId`, `fullName`, `gender`, `age`, `appointmentDate`, `email`, `phone`, `diseases`, `doctorId`, `address`, `status`) VALUES
(17, 2, 'ERRA FAIZELA BINTI JAMALUDDIN', 'female', '30', '2023-06-11', 'erra.faizela@yahoo.com', '0104200933', 'Kurang selera makan', 6, '22-02-13 PANGSAPURI CHERAS 4E,\r\nJALAN CHERAS\r\nWILAYAH PERSEKUTUAN', 'Perlu ada rawatan susulan');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `fullName` varchar(80) NOT NULL,
  `dateOfBirth` varchar(80) NOT NULL,
  `qualification` varchar(80) NOT NULL,
  `specialist` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `fullName`, `dateOfBirth`, `qualification`, `specialist`, `email`, `phone`, `password`) VALUES
(6, 'Dr. Ahad', '1955-10-11', 'FCPS', 'Orthopedics', 'ahad@gmail.com', '0169938331', '1234'),
(7, 'Dr. Sabtu', '2011-11-11', 'MBBS', 'Dentist', 'sabtu@gmail.com', '01423402023', '1234'),
(8, 'Dr. Jumaat', '1985-10-10', 'MBBS', 'Medicine', 'jumaat@gmail.com', '0177440006', '1234'),
(9, 'Dr. Ayob Khan', '1978-01-02', 'MBBS, FCPS', 'Cardiology', 'ak@gmail.com', '0134004104', '1234'),
(10, 'Dr. Al Berbiri', '1975-02-05', 'MBBS', 'Pediatrician', 'ab@gmail.com', '0126993727', '1234'),
(11, 'Dr. Bidin Al-Zaifar', '1980-02-22', 'MBBS, FCPS', 'Neurologist', 'baz@gmail.com', '0123211001', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `id` int(11) NOT NULL,
  `specialist_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`id`, `specialist_name`) VALUES
(1, 'Dentist'),
(2, 'Dermatologist'),
(3, 'Anesthesiology'),
(4, 'Orthopedics'),
(5, 'Cardiology'),
(6, 'Onkologist'),
(7, 'Medicine'),
(9, 'Neurologist'),
(10, 'Pediatrician'),
(11, 'ENT Specialist');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Md. Talal Wasim', 'wasim@gmail.com', '1234'),
(2, 'shah', 'sahah@yaho.com', '1234'),
(3, 'ayam', 'iwan@yah.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uId_idx` (`userId`),
  ADD KEY `docId_idx` (`doctorId`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `docId` FOREIGN KEY (`doctorId`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uId` FOREIGN KEY (`userId`) REFERENCES `user_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
