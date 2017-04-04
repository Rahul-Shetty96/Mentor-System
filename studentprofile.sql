-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2017 at 01:14 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mentordb`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentprofile`
--

CREATE TABLE `studentprofile` (
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `admission_year` int(11) NOT NULL,
  `address_home` varchar(100) NOT NULL,
  `address_current` varchar(100) NOT NULL,
  `num_own` varchar(10) NOT NULL,
  `cgpi` double NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `ambitions` varchar(100) NOT NULL,
  `reason_for_eng` varchar(100) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `address_father` varchar(100) NOT NULL,
  `num_father` varchar(10) NOT NULL,
  `mother_name` varchar(30) NOT NULL,
  `address_mother` varchar(100) NOT NULL,
  `num_mother` varchar(10) NOT NULL,
  `affinity` varchar(100) NOT NULL,
  `no_sibling` int(11) NOT NULL,
  `acad_issue` varchar(100) NOT NULL,
  `nonacad_issue` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentprofile`
--

INSERT INTO `studentprofile` (`Timestamp`, `email`, `name`, `admission_year`, `address_home`, `address_current`, `num_own`, `cgpi`, `hobbies`, `ambitions`, `reason_for_eng`, `father_name`, `address_father`, `num_father`, `mother_name`, `address_mother`, `num_mother`, `affinity`, `no_sibling`, `acad_issue`, `nonacad_issue`) VALUES
('0000-00-00 00:00:00', 'pooja.vsingh@ves.ac.in', 'Pooja Singh', 2014, 'Dombivli', 'Dombivli', '9870566811', 9.6, 'Reading, Coding', 'Secure a job in a dream company ', 'To become an engineer', 'Vinaykumar Singh', 'Bhandup', '9324639031', 'Sarla', 'Housewife', '9702344846', 'They are loving and support me lot.', 3, 'no', 'no'),
('0000-00-00 00:00:00', 'rahul.shetty@ves.ac.in', 'Rahul Shetty', 2014, 'Badlapur', '', '8655189780', 9.7, 'Coding', 'Good job', 'Passionate', 'Jayaram', '-', '-', 'Ahalya', '-', '-', 'Caring', 1, 'Nope', 'Nope'),
('0000-00-00 00:00:00', 'sumeet.sapla@ves.ac.in', 'Sumeet ', 2014, 'Ulhasnagar', '', '7666184468', 7, 'Playing guitar/ reading books', 'Not decided', 'To get high paid job', 'Gobind', 'Ulhasnagar', '9766165432', 'Lata', 'Ulhasnagar', '', '', 1, 'Not yet', 'Not interested');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentprofile`
--
ALTER TABLE `studentprofile`
  ADD PRIMARY KEY (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
