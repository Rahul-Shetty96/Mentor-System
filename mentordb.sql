-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2017 at 11:40 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

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
-- Table structure for table `mentee`
--

CREATE TABLE `mentee` (
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `class` varchar(4) NOT NULL,
  `roll_no` int(100) NOT NULL,
  `mentor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mentee`
--

INSERT INTO `mentee` (`email`, `name`, `class`, `roll_no`, `mentor`) VALUES
('aarju.shaha@ves.ac.in', 'Aarju Shaha', 'D15', 63, NULL),
('abhinav.valecha@ves.ac.in', 'Abhinav Valecha', 'D15', 72, NULL),
('aditya.gavane@ves.ac.in', 'Aditya Gavane', 'D15', 16, NULL),
('ajay.gurumurthy@ves.ac.in', 'Ajay Gurumurthy', 'D15', 20, NULL),
('akash.katkar@ves.ac.in', 'Akash Katkar', 'D15', 34, NULL),
('akash.khiani@ves.ac.in', 'Akash Khiani', 'D15', 38, NULL),
('akshaykumar.lilani@ves.ac.in', 'Akshaykumar Lilani', 'D15', 42, NULL),
('ameya.parab@ves.ac.in', 'Ameya Parab', 'D15', 50, NULL),
('amit.fatnani@ves.ac.in', 'Amit Fatnani', 'D15', 13, NULL),
('aniket.jetwani@ves.ac.in', 'Aniket Jetwani', 'D15', 28, NULL),
('aniket.nighot@ves.ac.in', 'Aniket Nighot', 'D15', 49, NULL),
('anjali.jaisinghani@ves.ac.in', 'Anjali Jaisinghani', 'D15', 26, NULL),
('anjali.wani@ves.ac.in', 'Anjali Wani', 'D15', 75, NULL),
('ankit.kesharwani@ves.ac.in', 'Ankit Kesharwani', 'D15', 35, NULL),
('ankita.dharne@ves.ac.in', 'Ankita Dharne', 'D15', 12, 'amit.singh@ves.ac.in'),
('arpan.gulrajani@ves.ac.in', 'Arpan Gulrajani', 'D15', 19, NULL),
('arpita.ambavane@ves.ac.in', 'Arpita Ambavane', 'D15', 4, NULL),
('ashraf.sayyed@ves.ac.in', 'Ashraf Sayyed', 'D15', 61, NULL),
('ayush.kalla@ves.ac.in', 'Ayush Kalla', 'D15', 31, NULL),
('bhavna.khatwani@ves.ac.in', 'Bhavna Khatwani', 'D15', 37, NULL),
('chayan.agarwal@ves.ac.in', 'Chayan Agarwal', 'D15', 1, NULL),
('deepa.turshani@ves.ac.in', 'Deepa Turshani', 'D15', 71, NULL),
('dhiren.kewlani@ves.ac.in', 'Dhiren Kewlani', 'D15', 36, NULL),
('dinesh.rupani@ves.ac.in', 'Dinesh Rupani', 'D15', 58, NULL),
('girish.chawla@ves.ac.in', 'Girish Chawla', 'D15', 7, NULL),
('hitesh.shahani@ves.ac.in', 'Hitesh Shahani', 'D15', 64, 'amit.singh@ves.ac.in'),
('jai.hinduja@ves.ac.in', 'Jai Hinduja', 'D15', 23, NULL),
('jayesh.motwani@ves.ac.in', 'Jayesh Motwani', 'D15', 45, 'amit.singh@ves.ac.in'),
('jayesh.nagpal@ves.ac.in', 'Jayesh Nagpal', 'D15', 48, NULL),
('jeetiksha.chandiramani@ves.ac.', 'Jeetiksha Chandiramani', 'D15', 6, NULL),
('jitesh.ahuja@ves.ac.in', 'Jitesh Ahuja', 'D15', 2, NULL),
('juhi.purswani@ves.ac.in', 'Juhi Purswani', 'D15', 53, NULL),
('kalpesh.juvekar@ves.ac.in', 'Kalpesh Juvekar', 'D15', 30, NULL),
('karan.murpana@ves.ac.in', 'Karan Murpana', 'D15', 47, NULL),
('krima.shah@ves.ac.in', 'Krima Shah', 'D15', 62, NULL),
('krithika.srinivasan@ves.ac.in', 'Krithika Srinivasan', 'D15', 68, NULL),
('kunal.dayaramani@ves.ac.in', 'Kunal Dayaramani', 'D15', 11, NULL),
('laukik.gaikwad@ves.ac.in', 'Laukik Gaikwad', 'D15', 14, NULL),
('mahesh.parwani@ves.ac.in', 'Mahesh Parwani', 'D15', 51, NULL),
('miten.solanki@ves.ac.in', 'Miten Solanki', 'D15', 67, NULL),
('neeraj.harjani@ves.ac.in', 'Neeraj Harjani', 'D15', 21, NULL),
('nihar.karle@ves.ac.in', 'Nihar Karle', 'D15', 33, NULL),
('nikhil.jethwani@ves.ac.in', 'Nikhil Jethwani', 'D15', 27, NULL),
('nitin.rohra@ves.ac.in', 'Nitin Rohra', 'D15', 57, NULL),
('pawan.tilwani@ves.ac.in', 'Pawan Tilwani', 'D15', 69, NULL),
('payal.popat@ves.ac.in', 'Payal Popat', 'D15', 52, NULL),
('pooja.singh@ves.ac.in', 'Pooja Singh', 'D15', 66, NULL),
('pratik.ahuja@ves.ac.in', 'Pratik Ahuja', 'D15', 3, NULL),
('punit.kulal@ves.ac.in', 'Punit Kulal', 'D15', 40, NULL),
('radhika.raghuwanshi@ves.ac.in', 'Radhika Raghuwanshi', 'D15', 54, NULL),
('raghav.jhawar@ves.ac.in', 'Raghav Jhawar', 'D15', 29, NULL),
('rahul.shetty@ves.ac.in', 'Rahul Shetty', 'D15', 65, 'amit.singh@ves.ac.in'),
('raj.ramchandani@ves.ac.in', 'Raj Ramchandani', 'D15', 56, NULL),
('rajeevkumar.yadav@ves.ac.in', 'Rajeevkumar Yadav', 'D15', 76, NULL),
('ram.motwani@ves.ac.in', 'Ram Motwani', 'D15', 46, NULL),
('rashmi.chhabria@ves.ac.in', 'Rashmi Chhabria', 'D15', 8, NULL),
('ravi.yadav@ves.ac.in', 'Ravi Yadav', 'D15', 77, NULL),
('rohan.jagiasi@ves.ac.in', 'Rohan Jagiasi', 'D15', 25, NULL),
('rohini.yedelli@ves.ac.in', 'Rohini Yedelli', 'D15', 78, NULL),
('rohit.lalwani@ves.ac.in', 'Rohit Lalwani', 'D15', 41, NULL),
('rohit.wadhwa@ves.ac.in', 'Rohit Wadhwa', 'D15', 73, NULL),
('sahil.chanchlani@ves.ac.in', 'Sahil Chanchlani', 'D15', 5, NULL),
('saurabh.tripathi@ves.ac.in', 'Saurabh Tripathi', 'D15', 70, NULL),
('shikha.sajnani@ves.ac.in', 'Shikha Sajnani', 'D15', 59, NULL),
('shubham.ghosalkar@ves.ac.in', 'Shubham Ghosalkar', 'D15', 17, NULL),
('siddhesh.hindalekar@ves.ac.in', 'Siddhesh Hindalekar', 'D15', 22, NULL),
('siddhesh.mhadnak@ves.ac.in', 'Siddhesh Mhadnak', 'D15', 43, NULL),
('siddhesh.mirjankar@ves.ac.in', 'Siddhesh Mirjankar', 'D15', 44, NULL),
('simran.rajpal@ves.ac.in', 'Simran Rajpal', 'D15', 55, NULL),
('sonia.chhabria@ves.ac.in', 'Sonia Chhabria', 'D15', 9, NULL),
('sonia.daryani@ves.ac.in', 'Sonia Daryani', 'D15', 10, NULL),
('sooraj.holla@ves.ac.in', 'Sooraj Holla', 'D15', 24, NULL),
('sumeet.sapla@ves.ac.in', 'Sumeet Sapla', 'D15', 60, NULL),
('sushant.wagle@ves.ac.in', 'Sushant Wagle', 'D15', 74, NULL),
('sushil.kogta@ves.ac.in', 'Sushil Kogta', 'D15', 39, NULL),
('uddesh.karda@ves.ac.in', 'Uddesh Karda', 'D15', 32, NULL),
('vaibhav.gaikwad@ves.ac.in', 'Vaibhav Gaikwad', 'D15', 15, NULL),
('vaibhav.goyal@ves.ac.in', 'Vaibhav Goyal', 'D15', 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`email`, `name`, `password`) VALUES
('amit.singh@ves.ac.in', 'Amit Singh', '1234567'),
('pooja.shetty@ves.ac.in', 'Pooja Shetty', '1234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mentee`
--
ALTER TABLE `mentee`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`email`),
  ADD KEY `email` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
