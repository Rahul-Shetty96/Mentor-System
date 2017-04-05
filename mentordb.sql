-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2017 at 07:01 PM
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
-- Table structure for table `log_record`
--

CREATE TABLE `log_record` (
  `email` varchar(40) DEFAULT NULL,
  `prev_meet` date DEFAULT NULL,
  `issue` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_record`
--

INSERT INTO `log_record` (`email`, `prev_meet`, `issue`) VALUES
('2015aman.gupta@ves.ac.in', '2017-04-05', 'I am good..'),
('2015sagar.ganiga@ves.ac.in', '2017-04-05', 'Late meeting'),
('ameya.parab@ves.ac.in', '2017-04-05', 'You are a good student...'),
('payal.popat@ves.ac.in', '2017-04-05', 'You should work more..'),
('raj.ramchandani@ves.ac.in', '2017-04-05', 'You should play sports..'),
('nitin.rohra@ves.ac.in', '2017-04-05', 'You are really doing great.Do the same everywhere.Work hard.Play hard.');

-- --------------------------------------------------------

--
-- Table structure for table `mentee`
--

CREATE TABLE `mentee` (
  `email` varchar(40) NOT NULL,
  `name` varchar(30) NOT NULL,
  `class` varchar(4) NOT NULL,
  `roll_no` int(100) NOT NULL,
  `mentor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mentee`
--

INSERT INTO `mentee` (`email`, `name`, `class`, `roll_no`, `mentor`) VALUES
('2015.kaustubh.thanekar@ves.ac.in', 'Kaustubh Thanekar', 'D10', 73, 'parth.chandrana@ves.ac.in'),
('2015aarti.bhagtani@ves.ac.in', 'Aarti Bhagtani', 'D10', 12, 'amit.singh@ves.ac.in'),
('2015abhishek.shere@ves.ac.in', 'Abhishek Shere', 'D10', 67, 'parth.chandrana@ves.ac.in'),
('2015abid.inamdar@ves.ac.in', 'Abid Inamdar', 'D10', 37, 'roopkala.ravindran@ves.ac.in'),
('2015adheesh.juvekar@ves.ac.in', 'Adheesh Juvekar', 'D10', 42, 'roopkala.ravindran@ves.ac.in'),
('2015aditya.bhatia@ves.ac.in', 'Aditya Bhatia', 'D10', 14, 'amit.singh@ves.ac.in'),
('2015aishwarya.bhavsar@ves.ac.in', 'Aishwarya Bhavsar', 'D10', 17, 'pooja.shetty@ves.ac.in'),
('2015aman.gupta@ves.ac.in', 'Aman Gupta', 'D10', 31, 'pooja.shetty@ves.ac.in'),
('2015aman.lohana@ves.ac.in', 'Aman Lohana', 'D10', 49, 'asha.bharambhe@ves.ac.in'),
('2015anchal.lalwani@ves.ac.in', 'Anchal Lalwani', 'D10', 48, 'roopkala.ravindran@ves.ac.in'),
('2015anuja.chordiya@ves.ac.in', 'Anuja Chordiya', 'D10', 23, 'pooja.shetty@ves.ac.in'),
('2015arvind.narayanan@ves.ac.in', 'Arvind Narayanan', 'D10', 6, 'amit.singh@ves.ac.in'),
('2015asutosh.padhi@ves.ac.in', 'Asutosh Padhi', 'D10', 55, 'asha.bharambhe@ves.ac.in'),
('2015bhavika.adnani@ves.ac.in ', 'Bhavika Adnani', 'D10', 2, 'amit.singh@ves.ac.in'),
('2015bhavika.shahani@ves.ac.in', 'Bhavika Shahani', 'D10', 65, 'parth.chandrana@ves.ac.in'),
('2015deepesh.haryani@ves.ac.in', 'Deepesh Haryani', 'D10', 32, 'pooja.shetty@ves.ac.in'),
('2015dhiraj.choithramani@ves.ac.in', 'Dhiraj Choithramani', 'D10', 22, 'pooja.shetty@ves.ac.in'),
('2015dipshi.shetty@ves.ac.in', 'Dipshi Shetty', 'D10', 68, 'parth.chandrana@ves.ac.in'),
('2015girish.teckchandani@ves.ac.in', 'Girish Teckchandani', 'D10', 72, 'parth.chandrana@ves.ac.in'),
('2015harsh.jain@ves.ac.in', 'Harsh Jain', 'D10', 39, 'roopkala.ravindran@ves.ac.in'),
('2015harsha.achara@ves.ac.in', 'Harsha Achara', 'D10', 1, 'amit.singh@ves.ac.in'),
('2015heena.dawani@ves.ac.in', 'Heena Dawani', 'D10', 26, 'pooja.shetty@ves.ac.in'),
('2015hema.lulla@ves.ac.in', 'Hema Lulla', 'D10', 50, 'asha.bharambhe@ves.ac.in'),
('2015hiten.chawla@ves.ac.in', 'Hiten Chawla', 'D10', 20, 'pooja.shetty@ves.ac.in'),
('2015inderjeet.saluja@ves.ac.in', 'Inderjeet Saluja', 'D10', 63, 'asha.bharambhe@ves.ac.in'),
('2015isha.shetty@ves.ac.in', 'Isha Shetty', 'D10', 69, 'parth.chandrana@ves.ac.in'),
('2015ishita.bhatnagar@ves.ac.in', 'Ishita Bhatnagar', 'D10', 15, 'amit.singh@ves.ac.in'),
('2015jackie.hinduja@ves.ac.in', 'Jackie Hinduja', 'D10', 34, 'roopkala.ravindran@ves.ac.in'),
('2015karan.hotwani@ves.ac.in', 'Karan Hotwani', 'D10', 36, 'roopkala.ravindran@ves.ac.in'),
('2015karan.valecha@ves.ac.in', 'Karan Valecha', 'D10', 76, 'parth.chandrana@ves.ac.in'),
('2015kaushal.bhogale@ves.ac.in', 'Kaushal Bhogale', 'D10', 18, 'pooja.shetty@ves.ac.in'),
('2015kiran. hiranandani@ves.ac.in', 'Kiran Hiranandani', 'D10', 35, 'roopkala.ravindran@ves.ac.in'),
('2015kirti.panchal@ves.ac.in', 'Kirti Panchal', 'D10', 56, 'asha.bharambhe@ves.ac.in'),
('2015manisha. udasi@ves.ac.in', 'Manisha Udasi', 'D10', 74, 'parth.chandrana@ves.ac.in'),
('2015mayank.agrawal@ves.ac.in', 'Mayank Agarwal', 'D10', 3, 'amit.singh@ves.ac.in'),
('2015mayur.lund@ves.ac.in', 'Mayur Lund', 'D10', 51, 'asha.bharambhe@ves.ac.in'),
('2015mishall.swain@ves.ac.in', 'Mishall Swain', 'D10', 71, 'parth.chandrana@ves.ac.in'),
('2015murlidhar.sharma@ves.ac.in', 'Murlidhar Sharma', 'D10', 66, 'parth.chandrana@ves.ac.in'),
('2015nausheen.asif@ves.ac.in', 'Nausheen Sayed', 'D10', 64, 'parth.chandrana@ves.ac.in'),
('2015navin.dhamriyani@ves.ac.in', 'Navin Dhamriyani', 'D10', 27, 'pooja.shetty@ves.ac.in'),
('2015neha.baranwal@ves.ac.in', 'Neha Baranwal', 'D10', 10, 'amit.singh@ves.ac.in'),
('2015nidhi.mishra@ves.ac.in', 'Nidhi Mishra', 'D10', 53, 'asha.bharambhe@ves.ac.in'),
('2015nisha.khubchandani@ves.ac.in', 'Nisha Khubchandani', 'D10', 45, 'roopkala.ravindran@ves.ac.in'),
('2015om.uparkar@ves.ac.in', 'Om Uparkar', 'D10', 75, 'parth.chandrana@ves.ac.in'),
('2015onkarsingh.bagga@ves.ac.in', 'Onkar Bagga', 'D10', 7, 'amit.singh@ves.ac.in'),
('2015pinky.rathod@ves.ac.in', 'Pinky Rathod', 'D10', 60, 'asha.bharambhe@ves.ac.in'),
('2015prasad.gujar@ves.ac.in', 'Prasad Gujar', 'D10', 30, 'pooja.shetty@ves.ac.in'),
('2015praveen.dangwani@ves.ac.in', 'Praveen Dangwani', 'D10', 24, 'pooja.shetty@ves.ac.in'),
('2015priya.vidhrani@ves.ac.in', 'Priya Vidhrani', 'D10', 77, 'parth.chandrana@ves.ac.in'),
('2015puja.bathija@ves.ac.in', 'Puja Bathija', 'D10', 11, 'amit.singh@ves.ac.in'),
('2015raaj.raishinghani@ves.ac.in', 'Raaj Raisinghani', 'D10', 58, 'asha.bharambhe@ves.ac.in'),
('2015rachna.bahrani@ves.ac.in', 'Rachna Baharani', 'D10', 8, 'amit.singh@ves.ac.in'),
('2015radhika.karwa@ves.ac.in', 'Radhika  Karwa', 'D10', 44, 'roopkala.ravindran@ves.ac.in'),
('2015riddhi.surve@ves.ac.in', 'Riddhi Surve', 'D10', 70, 'parth.chandrana@ves.ac.in'),
('2015riya.karia@ves.ac.in', 'Riya Karia', 'D10', 43, 'roopkala.ravindran@ves.ac.in'),
('2015rohit.ahuja@ves.ac.in', 'Rohit Ahuja', 'D10', 4, 'amit.singh@ves.ac.in'),
('2015ruchita.yeole@ves.ac.in', 'Ruchita Yeole', 'D10', 78, 'parth.chandrana@ves.ac.in'),
('2015sagar.ganiga@ves.ac.in', 'Sagar Ganiga', 'D10', 29, 'pooja.shetty@ves.ac.in'),
('2015sahil.mirchandani@ves.ac.in', 'Sahil Mirchandani', 'D10', 52, 'asha.bharambhe@ves.ac.in'),
('2015saish.mohare@ves.ac.in', 'Saish Mohare', 'D10', 54, 'asha.bharambhe@ves.ac.in'),
('2015sanyam.bharani@ves.ac.in', 'Sanyam Bharani', 'D10', 13, 'amit.singh@ves.ac.in'),
('2015shaunak.baradkar@ves.ac.in', 'Shaunak Baradkar', 'D10', 9, 'amit.singh@ves.ac.in'),
('2015shravan.chikhale@ves.ac.in', 'Shravan Chikhale', 'D10', 21, 'pooja.shetty@ves.ac.in'),
('2015shravan.jain@ves.ac.in', 'Shravan Jain', 'D10', 40, 'roopkala.ravindran@ves.ac.in'),
('2015shreya.jangale@ves.ac.in', 'Shreya Jangale', 'D10', 41, 'roopkala.ravindran@ves.ac.in'),
('2015siddhant.kulkarni@ves.ac.in', 'Siddhant Kulkarni', 'D10', 47, 'roopkala.ravindran@ves.ac.in'),
('2015simran.bhojwani@ves.ac.in', 'Simran Bhojwani', 'D10', 19, 'pooja.shetty@ves.ac.in'),
('2015sneha.roundhal@ves.ac.in', 'Sneha Roundhal', 'D10', 61, 'asha.bharambhe@ves.ac.in'),
('2015suraj.bhatt@ves.ac.in', 'Suraj Bhatt', 'D10', 16, 'amit.singh@ves.ac.in'),
('2015suraj.pawar@ves.ac.in', 'Suraj Pawar', 'D10', 57, 'asha.bharambhe@ves.ac.in'),
('2015utsav.das@ves.ac.in', 'Utsav Das', 'D10', 25, 'pooja.shetty@ves.ac.in'),
('2015varun.rathi@ves.ac.in', 'Varun Rathi', 'D10', 59, 'asha.bharambhe@ves.ac.in'),
('2015vijay.sahani@ves.ac.in', 'Vijay Sahani', 'D10', 62, 'asha.bharambhe@ves.ac.in'),
('2015vipul.kithani@ves.ac.in', 'Vipul Kithani', 'D10', 46, 'roopkala.ravindran@ves.ac.in'),
('2015vishal.israni@ves.ac.in', 'Vishal Israni', 'D10', 38, 'roopkala.ravindran@ves.ac.in'),
('2015yash.hemwani@ves.ac.in', 'Yash Hemwani', 'D10', 33, 'roopkala.ravindran@ves.ac.in'),
('aarju.shaha@ves.ac.in', 'Aarju Shaha', 'D15', 63, 'asha.bharambhe@ves.ac.in'),
('abhinav.valecha@ves.ac.in', 'Abhinav Valecha', 'D15', 72, 'parth.chandrana@ves.ac.in'),
('aditya.gavane@ves.ac.in', 'Aditya Gavane', 'D15', 16, 'amit.singh@ves.ac.in'),
('ajay.gurumurthy@ves.ac.in', 'Ajay Gurumurthy', 'D15', 20, 'pooja.shetty@ves.ac.in'),
('akash.katkar@ves.ac.in', 'Akash Katkar', 'D15', 34, 'roopkala.ravindran@ves.ac.in'),
('akash.khiani@ves.ac.in', 'Akash Khiani', 'D15', 38, 'roopkala.ravindran@ves.ac.in'),
('akshaykumar.lilani@ves.ac.in', 'Akshaykumar Lilani', 'D15', 42, 'roopkala.ravindran@ves.ac.in'),
('ameya.parab@ves.ac.in', 'Ameya Parab', 'D15', 50, 'asha.bharambhe@ves.ac.in'),
('amit.fatnani@ves.ac.in', 'Amit Fatnani', 'D15', 13, 'amit.singh@ves.ac.in'),
('aniket.jetwani@ves.ac.in', 'Aniket Jetwani', 'D15', 28, 'pooja.shetty@ves.ac.in'),
('aniket.nighot@ves.ac.in', 'Aniket Nighot', 'D15', 49, 'asha.bharambhe@ves.ac.in'),
('anjali.jaisinghani@ves.ac.in', 'Anjali Jaisinghani', 'D15', 26, 'pooja.shetty@ves.ac.in'),
('anjali.wani@ves.ac.in', 'Anjali Wani', 'D15', 75, 'parth.chandrana@ves.ac.in'),
('ankit.kesharwani@ves.ac.in', 'Ankit Kesharwani', 'D15', 35, 'roopkala.ravindran@ves.ac.in'),
('ankita.dharne@ves.ac.in', 'Ankita Dharne', 'D15', 12, 'amit.singh@ves.ac.in'),
('arpan.gulrajani@ves.ac.in', 'Arpan Gulrajani', 'D15', 19, 'pooja.shetty@ves.ac.in'),
('arpita.ambavane@ves.ac.in', 'Arpita Ambavane', 'D15', 4, 'amit.singh@ves.ac.in'),
('ashraf.sayyed@ves.ac.in', 'Ashraf Sayyed', 'D15', 61, 'asha.bharambhe@ves.ac.in'),
('ayush.kalla@ves.ac.in', 'Ayush Kalla', 'D15', 31, 'pooja.shetty@ves.ac.in'),
('bhavna.khatwani@ves.ac.in', 'Bhavna Khatwani', 'D15', 37, 'roopkala.ravindran@ves.ac.in'),
('chayan.agarwal@ves.ac.in', 'Chayan Agarwal', 'D15', 1, 'amit.singh@ves.ac.in'),
('deepa.turshani@ves.ac.in', 'Deepa Turshani', 'D15', 71, 'parth.chandrana@ves.ac.in'),
('dhiren.kewlani@ves.ac.in', 'Dhiren Kewlani', 'D15', 36, 'roopkala.ravindran@ves.ac.in'),
('dinesh.rupani@ves.ac.in', 'Dinesh Rupani', 'D15', 58, 'asha.bharambhe@ves.ac.in'),
('girish.chawla@ves.ac.in', 'Girish Chawla', 'D15', 7, 'amit.singh@ves.ac.in'),
('hitesh.shahani@ves.ac.in', 'Hitesh Shahani', 'D15', 64, 'parth.chandrana@ves.ac.in'),
('jai.hinduja@ves.ac.in', 'Jai Hinduja', 'D15', 23, 'pooja.shetty@ves.ac.in'),
('jayesh.motwani@ves.ac.in', 'Jayesh Motwani', 'D15', 45, 'roopkala.ravindran@ves.ac.in'),
('jayesh.nagpal@ves.ac.in', 'Jayesh Nagpal', 'D15', 48, 'roopkala.ravindran@ves.ac.in'),
('jeetiksha.chandiramani@ves.ac.in', 'Jeetiksha Chandiramani', 'D15', 6, 'amit.singh@ves.ac.in'),
('jitesh.ahuja@ves.ac.in', 'Jitesh Ahuja', 'D15', 2, 'amit.singh@ves.ac.in'),
('juhi.purswani@ves.ac.in', 'Juhi Purswani', 'D15', 53, 'asha.bharambhe@ves.ac.in'),
('kalpesh.juvekar@ves.ac.in', 'Kalpesh Juvekar', 'D15', 30, 'pooja.shetty@ves.ac.in'),
('karan.murpana@ves.ac.in', 'Karan Murpana', 'D15', 47, 'roopkala.ravindran@ves.ac.in'),
('krima.shah@ves.ac.in', 'Krima Shah', 'D15', 62, 'asha.bharambhe@ves.ac.in'),
('krithika.srinivasan@ves.ac.in', 'Krithika Srinivasan', 'D15', 68, 'parth.chandrana@ves.ac.in'),
('kunal.dayaramani@ves.ac.in', 'Kunal Dayaramani', 'D15', 11, 'amit.singh@ves.ac.in'),
('laukik.gaikwad@ves.ac.in', 'Laukik Gaikwad', 'D15', 14, 'amit.singh@ves.ac.in'),
('mahesh.parwani@ves.ac.in', 'Mahesh Parwani', 'D15', 51, 'asha.bharambhe@ves.ac.in'),
('miten.solanki@ves.ac.in', 'Miten Solanki', 'D15', 67, 'parth.chandrana@ves.ac.in'),
('neeraj.harjani@ves.ac.in', 'Neeraj Harjani', 'D15', 21, 'pooja.shetty@ves.ac.in'),
('nihar.karle@ves.ac.in', 'Nihar Karle', 'D15', 33, 'roopkala.ravindran@ves.ac.in'),
('nikhil.jethwani@ves.ac.in', 'Nikhil Jethwani', 'D15', 27, 'pooja.shetty@ves.ac.in'),
('nitin.rohra@ves.ac.in', 'Nitin Rohra', 'D15', 57, 'asha.bharambhe@ves.ac.in'),
('pawan.tilwani@ves.ac.in', 'Pawan Tilwani', 'D15', 69, 'parth.chandrana@ves.ac.in'),
('payal.popat@ves.ac.in', 'Payal Popat', 'D15', 52, 'asha.bharambhe@ves.ac.in'),
('pooja.singh@ves.ac.in', 'Pooja Singh', 'D15', 66, 'parth.chandrana@ves.ac.in'),
('pratik.ahuja@ves.ac.in', 'Pratik Ahuja', 'D15', 3, 'amit.singh@ves.ac.in'),
('punit.kulal@ves.ac.in', 'Punit Kulal', 'D15', 40, 'roopkala.ravindran@ves.ac.in'),
('radhika.raghuwanshi@ves.ac.in', 'Radhika Raghuwanshi', 'D15', 54, 'asha.bharambhe@ves.ac.in'),
('raghav.jhawar@ves.ac.in', 'Raghav Jhawar', 'D15', 29, 'pooja.shetty@ves.ac.in'),
('rahul.shetty@ves.ac.in', 'Rahul Shetty', 'D15', 65, 'parth.chandrana@ves.ac.in'),
('raj.ramchandani@ves.ac.in', 'Raj Ramchandani', 'D15', 56, 'asha.bharambhe@ves.ac.in'),
('rajeevkumar.yadav@ves.ac.in', 'Rajeevkumar Yadav', 'D15', 76, 'parth.chandrana@ves.ac.in'),
('ram.motwani@ves.ac.in', 'Ram Motwani', 'D15', 46, 'roopkala.ravindran@ves.ac.in'),
('rashmi.chhabria@ves.ac.in', 'Rashmi Chhabria', 'D15', 8, 'amit.singh@ves.ac.in'),
('ravi.yadav@ves.ac.in', 'Ravi Yadav', 'D15', 77, 'parth.chandrana@ves.ac.in'),
('rohan.jagiasi@ves.ac.in', 'Rohan Jagiasi', 'D15', 25, 'pooja.shetty@ves.ac.in'),
('rohini.yedelli@ves.ac.in', 'Rohini Yedelli', 'D15', 78, 'parth.chandrana@ves.ac.in'),
('rohit.lalwani@ves.ac.in', 'Rohit Lalwani', 'D15', 41, 'roopkala.ravindran@ves.ac.in'),
('rohit.wadhwa@ves.ac.in', 'Rohit Wadhwa', 'D15', 73, 'parth.chandrana@ves.ac.in'),
('sagar.ahuja@ves.ac.in', 'Sagar Ahuja', 'D10', 5, 'amit.singh@ves.ac.in'),
('sahil.chanchlani@ves.ac.in', 'Sahil Chanchlani', 'D15', 5, 'amit.singh@ves.ac.in'),
('saurabh.tripathi@ves.ac.in', 'Saurabh Tripathi', 'D15', 70, 'parth.chandrana@ves.ac.in'),
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
('sushant.wagle@ves.ac.in', 'Sushant Wagle', 'D15', 74, 'parth.chandrana@ves.ac.in'),
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
('parth.chandrana@ves.ac.in', 'Parth Chandrana', '1234567', 5),
('pooja.shetty@ves.ac.in', 'Pooja Shetty', '1234567', 2),
('roopkala.ravindran@ves.ac.in', 'Roopkala Ravindran', '1234567', 3);

-- --------------------------------------------------------

--
-- Table structure for table `next_meet`
--

CREATE TABLE `next_meet` (
  `email` varchar(40) NOT NULL,
  `next_meet` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `next_meet`
--

INSERT INTO `next_meet` (`email`, `next_meet`) VALUES
('2015aman.gupta@ves.ac.in', '2017-04-07'),
('2015sagar.ganiga@ves.ac.in', '2017-04-09'),
('ameya.parab@ves.ac.in', '2017-04-07'),
('nitin.rohra@ves.ac.in', '2017-04-12'),
('payal.popat@ves.ac.in', '2017-04-08'),
('raj.ramchandani@ves.ac.in', '2017-04-09');

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
-- Indexes for table `log_record`
--
ALTER TABLE `log_record`
  ADD KEY `fk_email` (`email`);

--
-- Indexes for table `mentee`
--
ALTER TABLE `mentee`
  ADD PRIMARY KEY (`email`),
  ADD KEY `fk_mentor` (`mentor`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mentor_id` (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `next_meet`
--
ALTER TABLE `next_meet`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `studentprofile`
--
ALTER TABLE `studentprofile`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `log_record`
--
ALTER TABLE `log_record`
  ADD CONSTRAINT `fk_email` FOREIGN KEY (`email`) REFERENCES `mentee` (`email`);

--
-- Constraints for table `mentee`
--
ALTER TABLE `mentee`
  ADD CONSTRAINT `fk_mentor` FOREIGN KEY (`mentor`) REFERENCES `mentor` (`email`);

--
-- Constraints for table `next_meet`
--
ALTER TABLE `next_meet`
  ADD CONSTRAINT `next_meet_ibfk_1` FOREIGN KEY (`email`) REFERENCES `mentee` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
