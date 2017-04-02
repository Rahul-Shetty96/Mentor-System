-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2017 at 08:27 AM
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
('aarju.shaha@ves.ac.in', 'Aarju Shaha', 'D15', 63, 'asha.bharambhe@ves.ac.in'),
('abhinav.valecha@ves.ac.in', 'Abhinav Valecha', 'D15', 72, 'parth.chandrana.ves.ac.in'),
('aditya.gavane@ves.ac.in', 'Aditya Gavane', 'D15', 16, 'amit.singh@ves.ac.in'),
('ajay.gurumurthy@ves.ac.in', 'Ajay Gurumurthy', 'D15', 20, 'pooja.shetty@ves.ac.in'),
('akash.katkar@ves.ac.in', 'Akash katkar', 'D15', 34, 'roopkala.ravindran@ves.ac.in'),
('akash.khiani@ves.ac.in', 'Akash Khiani', 'D15', 38, 'roopkala.ravindran@ves.ac.in'),
('akshaykumar.lilani@ves.ac.in', 'Akshaykumar Lilani', 'D15', 42, 'roopkala.ravindran@ves.ac.in'),
('ameya.parab@ves.ac.in', 'Ameya Parab', 'D15', 50, 'asha.bharambhe@ves.ac.in'),
('amit.fatnani@ves.ac.in', 'Amit Fatnani', 'D15', 13, 'amit.singh@ves.ac.in'),
('aniket.jetwani@ves.ac.in', 'Aniket Jetwani', 'D15', 28, 'pooja.shetty@ves.ac.in'),
('aniket.nighot@ves.ac.in', 'Aniket Nighot', 'D15', 49, 'asha.bharambhe@ves.ac.in'),
('anjali.jaisinghani@ves.ac.in', 'Anjali Jaisinghani', 'D15', 26, 'pooja.shetty@ves.ac.in'),
('anjali.wani@ves.ac.in', 'Anjali Wani', 'D15', 75, 'parth.chandrana.ves.ac.in'),
('ankit.kesharwani@ves.ac.in', 'Ankit Kesharwani', 'D15', 35, 'roopkala.ravindran@ves.ac.in'),
('ankita.dharne@ves.ac.in', 'Ankita Dharne', 'D15', 12, 'amit.singh@ves.ac.in'),
('arpan.gulrajani@ves.ac.in', 'Arpan Gulrajani', 'D15', 19, 'pooja.shetty@ves.ac.in'),
('arpita.ambavane@ves.ac.in', 'Arpita Ambavane', 'D15', 4, 'amit.singh@ves.ac.in'),
('ashraf.sayyed@ves.ac.in', 'Ashraf Sayyed', 'D15', 61, 'asha.bharambhe@ves.ac.in'),
('ayush.kalla@ves.ac.in', 'Ayush Kalla', 'D15', 31, 'pooja.shetty@ves.ac.in'),
('bhavna.khatwani@ves.ac.in', 'Bhavna Khatwani', 'D15', 37, 'roopkala.ravindran@ves.ac.in'),
('chayan.agarwal@ves.ac.in', 'Chayan Agarwal', 'D15', 1, 'amit.singh@ves.ac.in'),
('deepa.turshani@ves.ac.in', 'Deepa Turshani', 'D15', 71, 'parth.chandrana.ves.ac.in'),
('dhiren.kewlani@ves.ac.in', 'Dhiren Kewlani', 'D15', 36, 'roopkala.ravindran@ves.ac.in'),
('dinesh.rupani@ves.ac.in', 'Dinesh Rupani', 'D15', 58, 'asha.bharambhe@ves.ac.in'),
('girish.chawla@ves.ac.in', 'Girish Chawla', 'D15', 7, 'amit.singh@ves.ac.in'),
('hitesh.shahani@ves.ac.in', 'Hitesh Shahani', 'D15', 64, 'parth.chandrana.ves.ac.in'),
('jai.hinduja@ves.ac.in', 'Jai Hinduja', 'D15', 23, 'pooja.shetty@ves.ac.in'),
('jayesh.motwani@ves.ac.in', 'Jayesh Motwani', 'D15', 45, 'roopkala.ravindran@ves.ac.in'),
('jayesh.nagpal@ves.ac.in', 'Jayesh Nagpal', 'D15', 48, 'roopkala.ravindran@ves.ac.in'),
('jeetiksha.chandiramani@ves.ac.', 'Jeetiksha Chandiramani', 'D15', 6, 'amit.singh@ves.ac.in'),
('jitesh.ahuja@ves.ac.in', 'Jitesh Ahuja', 'D15', 2, 'amit.singh@ves.ac.in'),
('juhi.purswani@ves.ac.in', 'Juhi Purswani', 'D15', 53, 'asha.bharambhe@ves.ac.in'),
('kalpesh.juvekar@ves.ac.in', 'Kalpesh Juvekar', 'D15', 30, 'pooja.shetty@ves.ac.in'),
('karan.murpana@ves.ac.in', 'Karan Murpana', 'D15', 47, 'roopkala.ravindran@ves.ac.in'),
('krima.shah@ves.ac.in', 'Krima Shah', 'D15', 62, 'asha.bharambhe@ves.ac.in'),
('krithika.srinivasan@ves.ac.in', 'Krithika Srinivasan', 'D15', 68, 'parth.chandrana.ves.ac.in'),
('kunal.dayaramani@ves.ac.in', 'Kunal Dayaramani', 'D15', 11, 'amit.singh@ves.ac.in'),
('laukik.gaikwad@ves.ac.in', 'Laukik Gaikwad', 'D15', 14, 'amit.singh@ves.ac.in'),
('mahesh.parwani@ves.ac.in', 'Mahesh Parwani', 'D15', 51, 'asha.bharambhe@ves.ac.in'),
('miten.solanki@ves.ac.in', 'Miten Solanki', 'D15', 67, 'parth.chandrana.ves.ac.in'),
('neeraj.harjani@ves.ac.in', 'Neeraj Harjani', 'D15', 21, 'pooja.shetty@ves.ac.in'),
('nihar.karle@ves.ac.in', 'Nihar Karle', 'D15', 33, 'roopkala.ravindran@ves.ac.in'),
('nikhil.jethwani@ves.ac.in', 'Nikhil Jethwani', 'D15', 27, 'pooja.shetty@ves.ac.in'),
('nitin.rohra@ves.ac.in', 'Nitin Rohra', 'D15', 57, 'asha.bharambhe@ves.ac.in'),
('pawan.tilwani@ves.ac.in', 'Pawan Tilwani', 'D15', 69, 'parth.chandrana.ves.ac.in'),
('payal.popat@ves.ac.in', 'Payal Popat', 'D15', 52, 'asha.bharambhe@ves.ac.in'),
('pooja.singh@ves.ac.in', 'Pooja Singh', 'D15', 66, 'parth.chandrana.ves.ac.in'),
('pratik.ahuja@ves.ac.in', 'Pratik Ahuja', 'D15', 3, 'amit.singh@ves.ac.in'),
('punit.kulal@ves.ac.in', 'Punit Kulal', 'D15', 40, 'roopkala.ravindran@ves.ac.in'),
('radhika.raghuwanshi@ves.ac.in', 'Radhika Raghuwanshi', 'D15', 54, 'asha.bharambhe@ves.ac.in'),
('raghav.jhawar@ves.ac.in', 'Raghav Jhawar', 'D15', 29, 'pooja.shetty@ves.ac.in'),
('rahul.shetty@ves.ac.in', 'Rahul Shetty', 'D15', 65, 'parth.chandrana.ves.ac.in'),
('raj.ramchandani@ves.ac.in', 'Raj Ramchandani', 'D15', 56, 'asha.bharambhe@ves.ac.in'),
('rajeevkumar.yadav@ves.ac.in', 'Rajeevkumar Yadav', 'D15', 76, 'parth.chandrana.ves.ac.in'),
('ram.motwani@ves.ac.in', 'Ram Motwani', 'D15', 46, 'roopkala.ravindran@ves.ac.in'),
('rashmi.chhabria@ves.ac.in', 'Rashmi Chhabria', 'D15', 8, 'amit.singh@ves.ac.in'),
('ravi.yadav@ves.ac.in', 'Ravi yadav', 'D15', 77, 'parth.chandrana.ves.ac.in'),
('rohan.jagiasi@ves.ac.in', 'Rohan Jagiasi', 'D15', 25, 'pooja.shetty@ves.ac.in'),
('rohini.yedelli@ves.ac.in', 'Rohini Yedelli', 'D15', 78, 'parth.chandrana.ves.ac.in'),
('rohit.lalwani@ves.ac.in', 'Rohit Lalwani', 'D15', 41, 'roopkala.ravindran@ves.ac.in'),
('rohit.wadhwa@ves.ac.in', 'Rohit Wadhwa', 'D15', 73, 'parth.chandrana.ves.ac.in'),
('sahil.chanchlani@ves.ac.in', 'Sahil Chanchlani', 'D15', 5, 'amit.singh@ves.ac.in'),
('saurabh.tripathi@ves.ac.in', 'Saurabh Tripathi', 'D15', 70, 'parth.chandrana.ves.ac.in'),
('shikha.sajnani@ves.ac.in', 'Shikha Sajnani', 'D15', 59, 'asha.bharambhe@ves.ac.in'),
('shubham.ghosalkar@ves.ac.in', 'Shubham Ghosalkar', 'D15', 17, 'pooja.shetty@ves.ac.in'),
('siddhesh.hindalekar@ves.ac.in', 'Siddhesh Hindalekar', 'D15', 22, 'pooja.shetty@ves.ac.in'),
('siddhesh.mhadnak@ves.ac.in', 'Siddhesh Mhadnak', 'D15', 43, 'roopkala.ravindran@ves.ac.in'),
('siddhesh.mirjankar@ves.ac.in', 'Siddhesh Mirjankar', 'D15', 44, 'roopkala.ravindran@ves.ac.in'),
('simran.rajpal@ves.ac.in', 'Simran Rajpal', 'D15', 55, 'asha.bharambhe@ves.ac.in'),
('sonia.chhabria@ves.ac.in', 'Sonia Chhabria', 'D15', 9, 'amit.singh@ves.ac.in'),
('sonia.daryani@ves.ac.in', 'Sonia Daryani', 'D15', 10, 'amit.singh@ves.ac.in'),
('sooraj.holla@ves.ac.in', 'Sooraj Holla', 'D15', 24, 'pooja.shetty@ves.ac.in'),
('sumeet.sapla@ves.ac.in', 'Sumeet Sapla', 'D15', 60, 'asha.bharambhe@ves.ac.in'),
('sushant.wagle@ves.ac.in', 'Sushant Wagle', 'D15', 74, 'parth.chandrana.ves.ac.in'),
('sushil.kogta@ves.ac.in', 'Sushil Kogta', 'D15', 39, 'roopkala.ravindran@ves.ac.in'),
('uddesh.karda@ves.ac.in', 'Uddesh Karda', 'D15', 32, 'pooja.shetty@ves.ac.in'),
('vaibhav.gaikwad@ves.ac.in', 'Vaibhav Gaikwad', 'D15', 15, 'amit.singh@ves.ac.in'),
('vaibhav.goyal@ves.ac.in', 'Vaibhav Goyal', 'D15', 18, 'pooja.shetty@ves.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`email`, `name`, `password`, `id`) VALUES
('amit.singh@ves.ac.in', 'Amit Singh', '1234567', 1),
('asha.bharambhe@ves.ac.in', 'Asha Bharambhe', '1234567', 4),
('parth.chandrana.ves.ac.in', 'Parth Chandrana', '1234567', 5),
('pooja.shetty@ves.ac.in', 'Pooja Shetty', '1234567', 2),
('roopkala.ravindran@ves.ac.in', 'Roopkala Ravindran', '1234567', 3);

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
  ADD UNIQUE KEY `mentor_id` (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
