-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2019 at 01:21 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mitcse`
--

-- --------------------------------------------------------

--
-- Table structure for table `newgrp`
--

CREATE TABLE `newgrp` (
  `pgroup` int(10) NOT NULL,
  `studname` varchar(30) NOT NULL,
  `teacher` varchar(100) NOT NULL,
  `proname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newgrp`
--

INSERT INTO `newgrp` (`pgroup`, `studname`, `teacher`, `proname`) VALUES
(1, 'Tanmay Ambatkar', 'Jayanand Kamble', 'Data Management'),
(1, 'Sonali Munemanik', 'Jayanand Kamble', 'Data Management'),
(1, 'Pallavi Varpe', 'Jayanand Kamble', 'Data Management'),
(1, 'Bhagyesh Parmar', 'Jayanand Kamble', 'Data Management');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `nid` int(10) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`nid`, `note`) VALUES
(6, '1. Final BE Projects Review may be Scheduled on 7th or 8th of JUNE.'),
(7, '2. Final demo will have same venue as was for internal demo.');

-- --------------------------------------------------------

--
-- Table structure for table `pastpro`
--

CREATE TABLE `pastpro` (
  `pid` varchar(10) NOT NULL,
  `studid1` varchar(10) NOT NULL,
  `studname1` varchar(30) NOT NULL,
  `studid2` varchar(10) NOT NULL,
  `studname2` varchar(30) NOT NULL,
  `studid3` varchar(10) NOT NULL,
  `studname3` varchar(30) NOT NULL,
  `studid4` varchar(10) NOT NULL,
  `studname4` varchar(30) NOT NULL,
  `studid5` varchar(10) NOT NULL,
  `studname5` varchar(30) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `teacherid` int(10) NOT NULL,
  `teachername` varchar(30) NOT NULL,
  `pstatus` varchar(10) NOT NULL,
  `pyear` varchar(10) NOT NULL,
  `img_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pastpro`
--

INSERT INTO `pastpro` (`pid`, `studid1`, `studname1`, `studid2`, `studname2`, `studid3`, `studname3`, `studid4`, `studname4`, `studid5`, `studname5`, `pname`, `teacherid`, `teachername`, `pstatus`, `pyear`, `img_name`) VALUES
('', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', ''),
('2013-01', '39', 'Monica Shrivastava', '28', 'Pooja Muley', '', '', '', '', '', '', 'Book My taxi', 100348, 'Prof.S A Sanap', 'completed', '2012-13', ''),
('2013-02', '8', 'Chetan Chopade', '22', 'Avinash Kankhar', '24', 'Pushparaj Khandagale', '', '', '', '', 'Advanced Securities & Function', 0, 'Prof. Kshirsagar', 'completed', '2012-13', ''),
('2013-03', '1', 'Payal Bande', '11', 'Pooja Deochake', '14', 'Supriya Durugkar', '', '', '', '', 'Online Grieverance Rederessal ', 0, 'Dr R B Naik', 'completed', '2012-13', ''),
('2013-04', '58', 'Sanskruti Vanjari', '61', 'Bebi Moirangmayum', '', '', '', '', '', '', 'Personalized Image Search', 0, 'Dr R B Naik', 'completed', '2012-13', ''),
('2013-05', '59', 'Minakshi Shengule', '60', 'Reshma Musale', '', '', '', '', '', '', 'Orphan Foundation Development', 100477, 'Prof S B Siledar', 'completed', '2012-13', ''),
('2013-06', '15', 'Jaysheel Elamgodil', '2', 'Onkar Badve', '18', 'Amol Pathad', '', '', '', '', 'Class Viewer', 100077, 'Prof S A Kinariwala', 'completed', '2012-13', ''),
('2013-07', '40', 'Anuja Singh', '53', 'Jagtap Deepak', '', '', '', '', '', '', 'Social Networking Website', 100477, 'Prof S B Siledar', 'completed', '2012-13', ''),
('2013-08', '45', 'Ganesh Shelke', '42', 'Arshad Shaikh', '5', 'Ajinkya Deshpande', '', '', '', '', 'Online IDE', 0, 'Prof. D D Dharmadhikari', 'completed', '2012-13', ''),
('2013-09', '37', 'Aditya Pathak', '38', 'Satish Dabhade', '', '', '', '', '', '', 'Web Server Administration & Se', 0, 'Prof. Prashant Band', 'completed', '2012-13', ''),
('2013-10', '23', 'Amruta Dahale', '16', 'Sunmeet Kaur Gujral', '19', 'Sandhya Jamkar', '27', 'Tejaswini Mahasaheb', '', '', 'E-mandi', 100079, 'Prof J A Kamble', 'completed', '2012-13', ''),
('2013-11', '35', 'ShaheBaz Khan', '49', 'Manjiri Kawthe', '51', 'Madhura Shiradkar', '67', 'Ateeque Khan', '', '', 'Online Mobile Backup', 0, 'Prof. Pradip Paithane', 'completed', '2012-13', ''),
('2013-12', '29', 'Aniket Nikam', '6', 'Ganesh Chavan', '56', 'Akshay Lakhotiya', '57', 'Dipak Khandekar', '', '', 'Truth Discovery With Multiple ', 100074, 'Prof R A Mangrule', 'completed', '2012-13', ''),
('2013-13', '41', 'Dipika Joshi', '46', 'Deshpande priyanka', '52', 'Rakhi Mundada', '44', 'Ashwini Lohakare', '', '', 'Database Wizard', 0, 'Prof V B Patil', 'completed', '2012-13', ''),
('2013-14', '36', 'Pallavi Bambal', '33', 'Rasika Joshi', '32', 'Sayali Bagde', '', '', '', '', 'Online Public Voting System', 0, 'Prof  V B Patil', 'completed', '2012-13', ''),
('2013-15', '3', 'Supriya Bhalerao', '7', 'Princy Chenchery', '10', 'Shraddha  Somulwa', '17', 'Albir Kaur Jabinda', '', '', 'School Bus Tracker', 0, 'Dr R B Naik', 'completed', '2012-13', ''),
('2013-16', '20', 'Abhilasha Sharma', '25', 'Prerna Raut', '4', 'Kiran Bhuigad', '', '', '', '', 'E-Healthcare', 0, 'Prof. B S Ahirwadkar', 'completed', '2012-13', ''),
('2013-17', '47', 'Sonawane Sachin', '55', 'Rohan Pawar', '70', 'Bhavik Mota', '', '', '', '', 'Digital parking System', 100079, 'Prof. J A Kamble', 'completed', '2012-13', ''),
('2013-18', '21', 'Sneha Bhandge', '31', 'Pande Revati', '62', 'Deshpande Mayuri', '', '', '', '', 'Interactive image segmentation', 100340, 'Prof. L B Randive', 'completed', '2012-13', ''),
('2013-19', '68', 'Shashikant Mitkari', '50', 'Shriprasad Joshi', '', '', '', '', '', '', 'Detecting Phishing Web Pages U', 100476, 'Prof. P C Gill', 'completed', '2012-13', ''),
('2013-20', '13', 'Pratik Purandare', '30', 'Vishal Pakolu', '34', 'Rohit Palhate', '', '', '', '', 'Data Sharing Application for M', 100089, 'Prof. P N Suryawanshi', 'completed', '2012-13', ''),
('2013-21', '26', 'Pooja Kalange', '63', 'Anil Jadhav', '23', 'Manisha Supekar', '65', 'Mithil Deshmukh', '', '', 'HR Operations Manager', 100089, 'Prof. P N Suryawanshi', 'completed', '2012-13', ''),
('2013-22', '12', 'Aditya Deora', '43', 'Sachi yadav', '', '', '', '', '', '', 'Imagination', 0, 'Prof. Kshirsagar', 'completed', '2012-13', ''),
('2013-23', '71', 'Shaikh A M R', '66', 'Md. Sarfaraz Khan', '64', 'Quadri Talha', '69', 'Azmat Khan', '', '', 'Android Quiz', 0, 'Prof. Prashant Band', 'completed', '2012-13', ''),
('2013-24', '54', 'Pushkar Deshmukh', '48', 'Sagar Kotambe', '', '', '', '', '', '', 'Controlling PC Via Android', 0, 'Prof. Pradip Paithane', 'completed', '2012-13', ''),
('2014-01', 'BEA1', 'Vishakha Bagdane', 'BEA4', 'Swati Dhande', 'BEA14', 'Dhanshri Ghuge', 'BEA8', 'Priyanka Shinde', '', '', 'Efficient Simlatiry Search ove', 100079, 'J.A.Kamble', 'completed', '2013-14', ''),
('2014-02', 'BEA2', 'Yugandhara Bhadekar', 'BEA18', 'Sharadhi Shetty', 'BEA20', 'Radhika Sonawane', 'BEA50', 'Samiksha Medshikar', '', '', 'Efficient Utilization of Multi', 0, 'Dr.R.B.Naik', 'completed', '2013-14', ''),
('2014-03', 'BEA11', 'Vaibhav Pawar', 'BEA6', 'Akshay Ratnaparkhe', 'BEA7', 'Saurabh Diwate', 'BEA10', 'Kunal harkare', '', '', 'Implementation of SPAM mail de', 0, 'P.H.Band', 'completed', '2013-14', ''),
('2014-04', 'BEA3', 'Nitin Kantak', 'BEA19', 'Bidwai Girish', 'BEA12', 'Aktar Syed', 'BEA13', 'Bhushan Lohiya', '', '', 'Web service Discovery,Validati', 100477, 'S.B.Siledar', 'completed', '2013-14', ''),
('2014-05', 'BEA9', 'Vrushali Matsagar', 'BEA16', 'Rajpreet Oberoi', 'BEA25', 'Sneha Tachale', 'BEA26', 'Varsha Nagare', '', '', 'Review Classification Through ', 0, 'P P Walke', 'completed', '2013-14', ''),
('2014-06', 'BEA15', 'Yamini Patil', 'BEA17', 'Neha Chaudhary', 'BEA29', 'Vishal Chauthmal', 'BEA36', 'Rushabh Late', '', '', 'Image Steganography Uisng RGB', 100340, 'L.B.Randive', 'completed', '2013-14', ''),
('2014-07', 'BEA21', 'Sheetal Bhosle', 'BEA31', 'Yogesh Gore', 'BEA37', 'Sandeep Suste', 'BEA40', 'Palskar Abhijeet', '', '', 'Iris Recognition using HIPI', 0, 'V.B.Patil', 'completed', '2013-14', ''),
('2014-08', 'BEA23', 'Disha Walvekar', 'BEA24', 'Meenal wadjikar', 'BEA44', 'Ruchir Mahajan', 'BEA46', 'Shrikrushna Humbad', '', '', 'Efficient Utilization of Multi', 0, 'Dr.R.B.Naik', 'completed', '2013-14', ''),
('2014-09', 'BEA32', 'Prajakta Kulkarni', 'BEA35', 'Mansi Gosavi', 'BEA34', 'Pranav Joshi', 'BEA38', 'Mahesh Kulkarni', '', '', 'ABRIGARVN :Data Integrity in C', 0, 'D.D.Dharmadhikari', 'completed', '2013-14', ''),
('2014-10', 'BEA39', 'Shashank Perkar', 'BEA56', 'Onkar Dengle', 'BEA58', 'Pradip Gadhe', 'BEA59', 'Amol Khade', '', '', 'Cancer Detection & Classificat', 0, 'M.M.Ganeshwade', 'completed', '2013-14', ''),
('2014-11', 'BEA41', 'Tushar Nemane', 'BEA45', 'Santosh Landge', 'BEA48', 'Arjun Nile', 'BEA52', 'Tushar patil', '', '', 'Integration of Heterogeneous D', 0, 'B. S. Ahirwadkar', 'completed', '2013-14', ''),
('2014-12', 'BEA51', 'Ankit Sharma', 'BEA53', 'Balaji Mulate', 'BEA61', 'Megha Hotte', 'BEA57', 'Ashwini Kanherkar', '', '', 'Distributed Query Processing u', 100077, 'S.A.Kinariwala', 'completed', '2013-14', ''),
('2014-13', 'BEA49', 'Sachin Patil', 'BEA54', 'Aniket Thakre', 'BEA55', 'Tushar Kele', 'BEA60', 'Kiran Chavan', '', '', 'Mining Educational Data to ana', 100476, 'P.C.Gill', 'completed', '2013-14', ''),
('2014-14', 'BEA62', 'Vishvambhar  Kalegaonkar', 'BEA73', 'Ankur Thepade', 'BEA63', 'Pooja Kshirsagar', 'BEA72', 'Pratibha Kakade', '', '', 'Source Code water marking', 100340, 'P.N.Suryawanshi', 'completed', '2013-14', ''),
('2014-15', 'BEA67', 'Pravin Lakade', 'BEA42', 'Akash Pachlore', 'BEA80', 'Charanjeet Singh', 'BEA65', 'Ganesh Waghmare', 'BEA66', 'Sandeep Jadhav', 'Voice base Integration System', 100079, 'J.A.Kamble', 'completed', '2013-14', ''),
('2014-16', 'BEA69', 'Pornima Gundewar', 'BEA70', 'Samiksha Borkar', 'BEA5', 'Pranav Manwatkar', 'BEA28', 'Akshay Vibhandik', '', '', 'Face Recognition System', 0, 'M.M.Ganeshwade', 'completed', '2013-14', ''),
('2014-17', 'BEA71', 'Pankaj jadhav', 'BEA47', 'Sushil Bang', 'BEA73', 'Swapnil Nisargan', 'BEA64', 'Rahul Hire', 'BEA33', 'Swapnil Kulkarni', 'Video BroadCaster Using Androi', 0, 'P P Walke', 'completed', '2013-14', ''),
('2014-18', 'BEA81', 'Mayura Deshpande', 'BEA83', 'Ketki Kshirsagar', 'BEA82', 'Sandhya Panchal', 'BEA87', 'Pranati Waghodekar', '', '', 'Authentication for session pas', 0, 'B S Ahirwadkar', 'completed', '2013-14', ''),
('2014-19', 'BEA86', 'Rekha Kalse', 'BEA85', 'Ankita Deshpande', 'BEA84', 'Pooja Game', 'BEA89', 'Mousam Varu', '', '', 'DM: A prediction for performan', 100476, 'P C Gill', 'completed', '2013-14', ''),
('2014-20', 'BEB1', 'Vikas Gadhe', 'BEB7', 'Lakhan Bharuka', 'BEB3', 'SHIVPRASAD SHELGAVKAR', 'BEB12', 'MANDAR DAOO', '', '', 'Web Based Compiler', 100079, 'J.A.Kamble', 'completed', '2013-14', ''),
('2014-21', 'BEB13', 'SARANG DESHPANDE', 'BEB18', 'SAGAR ADHE', 'BEB52', 'TRYAMBAK PHOLANE', 'BEB30', 'SUDARSHAN MOTE', '', '', 'Attendance on Android', 0, 'D C Sirdeshpande', 'completed', '2013-14', ''),
('2014-22', 'BEB31', 'AJINKYA NARWADE', 'BEB32', 'SAGAR MALPANI', 'BEB33', 'PRIYANKA GARDE', 'BEB45', 'AKANSHA SRIVASTAVA', '', '', 'Video Surviliance System using', 0, 'M.M.Ganeshwade', 'completed', '2013-14', ''),
('2014-23', 'BEB6', 'SHWETA SING THAKUR', 'BEB11', 'GAIKWADÂ APARNAÂ KISHOR', 'BEB43', 'MADHURI PAWAR', 'BEB46', 'RASHMI ZORE', '', '', 'DB Ranking', 0, 'V.B.Patil', 'completed', '2013-14', ''),
('2014-24', 'BEB4', 'REKHA GHODSE', 'BEB5', 'SUNITA DOMBE', 'BEB28', 'DUSHYANT DIXIT', 'BEB8', 'PAWAN SHETKAR', '', '', 'Traffic Control in Networking', 100477, 'S.B.Siledar', 'completed', '2013-14', ''),
('2014-25', 'BEB36', 'ABDUL HASIB SHAIKH', 'BEB39', 'JISHAN SHAIKH', 'BEB40', 'NITIN KHARAT', 'BEB37', 'ANKUSH KHARAT', '', '', 'Heart Diesease Analyze', 100074, 'R.A.Mangrule', 'completed', '2013-14', ''),
('2014-26', 'BEB38', 'SAKSHI PANDITA', 'BEB44', 'N.BOISHI HAOKIP', 'BEB19', 'KALYANI KULKARNI', 'BEB20', 'PRIYANKA KHAPLE', '', '', 'Opinion Mining', 100340, 'L.B.Randive', 'completed', '2013-14', ''),
('2014-27', 'BEB41', 'MONIKA WAGH', 'BEB15', 'ASHWINI SINGARE', 'BEB47', 'SAYALI PAWAR', 'BEB79', 'SONAL PUROHIT', '', '', 'Application of K-means cluster', 100476, 'P.C.Gill', 'completed', '2013-14', ''),
('2014-28', 'BEB58', 'NITEEN MAGAR', 'BEB59', 'ROHIT KONKA', 'BEB57', 'JALINDAR KAYANDE', 'BEB55', 'SHIVDAS VAIDYA', '', '', 'Redundent Scheduling for Trans', 0, 'Dr.R.B.Naik', 'completed', '2013-14', ''),
('2014-29', 'BEB56', 'AJINKYA JOSHI', 'BEB25', 'SANDEEP RATHOD', 'BEB27', 'PURVA DATE', 'BEB35', 'EESHA JADHAV', '', '', 'NAS Box', 0, 'P.H.Band', 'completed', '2013-14', ''),
('2014-30', 'BEB65', 'SANA SAMREEN SHAIKH', 'BEB66', 'PRIYANKA D. RATHOD', 'BEB70', 'UMA KHATAL', 'BEB73', 'NIKITA AKKAR', '', '', 'Heart Diesease Prediction', 0, 'P P Walke', 'completed', '2013-14', ''),
('2014-31', 'BEB21', 'NAMRATA BODHALE', 'BEB22', 'MANJUSH WAHUL', 'BEB23', 'KOMAL YELMATE', 'BEB50', 'KAJAL UPADHYE', '', '', 'Web Browser for Disabled', 0, 'D.D.Dharmadhikar', 'completed', '2013-14', ''),
('2014-32', 'BEB26', 'PRIYANKA RATHOD', 'BEB34', 'ARCHANA DHAS', 'BEB16', 'PRIYANKA WATHORE', '', '', '', '', 'Data Hiding in Audio file', 0, 'D C Sirdeshpande', 'completed', '2013-14', ''),
('2014-33', 'BEB78', 'DHANANJAY SARAF', 'BEB77', 'RAHUL PHOKE', 'BEB74', 'ATUL PARDESHI', 'BEB76', 'KHAIREÂ AJINKYAÂ HIRAMANÂ ', '', '', 'AES Special Security System', 100074, 'R.A.Mangrule', 'completed', '2013-14', ''),
('2014-34', 'BEB61', 'DEEPALI ZOND', 'BEB62', 'CHAITALI MOGALE', 'BEB63', 'POOJA KULKARNI', 'BEB64', 'SWATI PATIL', '', '', 'Internet Hot Spot Detection us', 100077, 'S.A.Kinariwala', 'completed', '2013-14', ''),
('2014-35', 'BEB53', 'AKASH SONDE', 'BEB54', 'SANKET AKOLKAR', 'BEB60', 'DAYANAND RATHOD', 'BEB17', 'AKASH REKALWAR', '', '', 'LABS Linux Automation Uisng Ba', 100340, 'L.B.Randive', 'completed', '2013-14', ''),
('2014-36', 'BEB2', 'DIPESH KAMBLE', 'BEB29', 'AKSHAY SHARMA', 'BEB24', 'GAURAV CHAVAN', 'BEB48', 'ZAID KHAN', '', '', 'MIT Internal Services', 100340, 'P.N.Suryawanshi', 'completed', '2013-14', ''),
('2014-37', 'BEB10', 'SWAPNA APSINGEKAR', 'BEB42', 'PRIYA WARWANTKAR', 'BEB51', 'Syed Noman Ali', 'BEB82', 'ANURAG DESAI', '', '', 'Watermarking Rdbms', 100340, 'P.N.Suryawanshi', 'completed', '2013-14', ''),
('2014-38', 'BEB67', 'PRAKASH GAIKWAD', 'BEB68', 'RAHUL CHOUHAN', 'BEB69', 'KHUSHAL CHAVAN', 'BEB88', 'Gaurav Rapatwar', '', '', 'Secure Routing Protocol for Ad', 100074, 'R.A.Mangrule', 'completed', '2013-14', ''),
('2014-39', 'BEB72', 'PYNHUNLANG MYLLIEM UMLONG', 'BEB80', 'NGORU BENNYHOPE', 'BEB49', 'MAYUR PANDE', 'BEB83', 'Yan Lyngdoh', '', '', 'Droid Tracker', 0, 'V B Patil', 'completed', '2013-14', ''),
('2014-40', 'BEB84', 'Amol Bhise', 'BEB85', 'Aditya Sonpethkar', 'BEB86', 'Janardhan Raut', 'BEB87', 'Sachin Magar', '', '', 'LniX++: Ldap Nis X.500', 0, 'V B Patil', 'completed', '2013-14', ''),
('2014-41', 'BEB9', 'POOJA DESHMUKH', '', '', '', '', '', '', '', '', 'Criminal Identification', 0, 'P P Walke', 'completed', '2013-14', ''),
('2015-01', 'BEA44', 'MODKE SHEETAL Z.', 'BEA46', 'DUBEY KAVITA V. ', 'BEA49', ' PATIL DEVYANI', 'BEA70', 'SHINDE SNEHA H.', '', '', 'bSafe', 0, 'Prof.V.B.Patil', 'completed', '2014-15', ''),
('2015-02', 'BEA13', 'JADHAV SHRIRAM RAJENDRA ', 'BEA37', 'TIWARI ABHILASH GANESHPRASAD', 'BEA60', 'VYAWHARE SAGAR S.', 'BEA63', 'ZANZANE ABHIJEET', '', '', 'Advanced Attendance System on ', 0, 'Prof.G.S.Joshi', 'completed', '2014-15', ''),
('2015-03', 'BEA43', 'PABITWAR ABHISHEK A.', 'BEA45', 'KHANDARE DIKSHA T.', 'BEA56', 'CHAVAN SHRADHA B.', 'BEA80', 'PRADIP GHADE', 'BEA74', 'SURYAWANSHI YOGESH E.', 'Event Management System', 100079, 'Prof.J.A.Kamble', 'completed', '2014-15', ''),
('2015-04', 'BEA22', 'KAKATI SHRUTI SHRIDHAR', 'BEA29', 'RAGATE SUBHASHREE SANGAMESHWAR', 'BEA18', 'KAWDE PUJA RAJENDRA ', 'BEA19', 'KHATRI SONAL VILAS ', '', '', 'Classifying and Filtering Data', 100077, 'Prof. S.A.Kinariwala', 'completed', '2014-15', ''),
('2015-05', 'BEA09', 'HARALE KIRAN NAMDEV', 'BEA10', ' SUPE HARSHAD', 'BEA11', 'INDALKAR VISHAL PRALHAD ', 'BEA12', 'JADHAV MAYUR ARUNRAO ', '', '', 'Online Java Compiler', 0, 'Prof.D C Sirdeshpande', 'completed', '2014-15', ''),
('2015-06', 'BEA01', 'BONGANE ARJUN NAGORAO', 'BEA25', 'PARDESHI AJAY RAJENDRASINGH ', 'BEA31', 'SHEWALE SATISH KANTRAO ', 'BEA36', 'TIDKE VAIBHAV SAKHARAM ', '', '', 'Health Care Information and Ma', 0, 'Prof. B.S.Ahirwadkar', 'completed', '2014-15', ''),
('2015-07', 'BEA65', 'SANA AHMED SHARIQ', 'BEA68', 'NIKAM POOJA S.', 'BEA73', 'SHINDE SUKANYA V.', 'BEA75', 'BORSE GAJANAN TULSHIRAM', '', '', 'Student Portal', 100477, 'Prof.S.B.Siledar', 'completed', '2014-15', ''),
('2015-08', 'BEA47', ' PANDE ANAND C.', 'BEA52', 'BODHEKAR ABHISHEK ', 'BEA53', 'CHAVAN VAIBHAV ', 'BEA67', 'GHULE MANOHAR HARI', '', '', 'Intellegent Crime Investigatio', 100476, 'Prof.P.C.Gill', 'completed', '2014-15', ''),
('2015-09', 'BEA04', 'DESHPANDE GAURI MUKUNDRAO ', 'BEA16', 'KALAMKAR SHUBHANGI RAOSAHEB ', 'BEA30', 'RAMTEKE KIRTI RAYBHAN ', 'BEA33', 'THAKUR GAYATRI CHANDUSING ', '', '', 'Campus Navigator Android', 0, 'Prof.P.H.Band', 'completed', '2014-15', ''),
('2015-10', 'BEA02', 'DALWE SWAPNIL SURESHRAO ', 'BEA20', 'KULKARNI GOVIND RAVINDRA ', 'BEA48', ' JARIWALA KHUSHABU', 'BEA69', 'CHANAGOND SOUMYASHRI', '', '', 'Placement Automation System', 0, 'Prof.D.D.Dharmadhikari', 'completed', '2014-15', ''),
('2015-11', 'BEA54', ' DIXIT MANJIRI', 'BEA55', ' PITEKAR  ARTI  A.', 'BEA58', 'KACHKURE VAISHALI R.', '', '', '', '', 'Crime Detection Using Data Min', 0, 'Prof.D.C.Sirdeshpande', 'completed', '2014-15', ''),
('2015-12', 'BEA59', 'VIDYASAGAR RUTUJA', 'BEA61', 'UGHADE SHITAL S.', 'BEA66', 'TEKE URMILA S.', 'BEA50', 'BANSODE JYOTI F.', '', '', 'Online Attendance Application', 0, 'Prof.V.B.Patil', 'completed', '2014-15', ''),
('2015-13', 'BEA17', 'KATARE MAHARUDRA GANESHRAO ', 'BEA14', 'JAISWAL ANURAG CHANDRASHEKHAR ', 'BEA15', 'JAYBHAYE SHUBHAM GAJANAN ', 'BEA62', 'RAJENDRA YOGIRAJ', 'BEA71', 'GAIKWAD RAKESH B.', 'Human Resource Management', 100348, 'Prof.S.A.Sanap', 'completed', '2014-15', ''),
('2015-14', 'BEA03', 'DESHMUKH AMRUTA SANJAYRAO', 'BEA76', 'PHAPAL SUNITA DHONDIRAM', 'BEA40', 'AGRAWAL DEEPIKA GOPAL ', 'BEA23', 'NILAWAR NEHA', '', '', 'Cardiac Problem Forcasting usi', 100340, 'Prof.L.B.Randive', 'completed', '2014-15', ''),
('2015-15', 'BEA07', 'GAWANDE SUPRIYA PRABHAKAR ', 'BEA08', 'GORE MADHUR SANTOSH ', 'BEA26', 'PINJARE KIRAN GANESH ', 'BEA42', 'SURYAWANSHI AKSHAY ', '', '', 'Centralized Storage by LDAP', 0, 'Prof.V.B.Patil', 'completed', '2014-15', ''),
('2015-16', 'BEA39', 'ABDUL RAZZAK ABDUL BARI ', 'BEA64', 'SHAIKH RIYAZ MOBIN', 'BEA79', 'SAYEMA BAIG', 'BEA81', 'EHTESHAN ALI', 'BEA82', 'Mohd. Vaseem Mujahed', 'Image Scanner with Speech Synt', 0, 'Prof.P.M.Paithane', 'completed', '2014-15', ''),
('2015-17', 'BEA32', 'SUPEKAR PREETICHANDRA PRITHVIR', 'BEA35', 'THOSAR SHRADDHA SATISHRAO ', 'BEA28', 'RABDE NISHA GAJANAN ', 'BEA38', 'WARADE DEEPALI SUBHASH ', '', '', 'Service Awareness and Monitori', 0, 'Dr R.B.Naik', 'completed', '2014-15', ''),
('2015-18', 'BEA05', 'EDAKE SNEHAL SHRIMANT ', 'BEA34', 'THOMBRE PRASHANT CHANDRABHAN ', '', '', '', '', '', '', 'Pocket Schedular', 100079, 'Prof. J.A.Kamble', 'completed', '2014-15', ''),
('2015-19', 'BEB01', 'AGRAWAL HARSHAL DEEPAK ', 'BEB02', 'AGRAWAL SHUBHAM VIJAY KUMARJI ', 'BEB15', 'DEVANSH PANDIT PANDOTRA ', 'BEB40', 'DESHMUKH AMOL SHIVLAL', '', '', 'Online Grocery Shop', 0, 'Dr.R.B.Naik', 'completed', '2014-15', ''),
('2015-20', 'BEB22', 'JOSHI APURVA SUDHIR ', 'BEB28', 'MIDHUN MOHAN ', 'BEB36', 'SHAHADE PARAG AVINASH ', 'BEB39', 'SIRDESHPANDE RASHMI JAGDISH ', '', '', 'Media Response Analysis Using ', 0, 'Prof.V.B.Patil', 'completed', '2014-15', ''),
('2015-21', 'BEB23', 'KHANKE GANESH SUNIL ', 'BEB24', 'SINGH NIRANJAN BISHWANATH ', 'BEB49', 'VITEKAR SURAJ P.', 'BEB31', 'MUNDE SANTOSH VITHAL ', 'BEB70', 'SONSALE NANDKUMAR LAXMAN', 'E-Class Attendance Count', 0, 'Prof.D.D.Dharmadhikari', 'completed', '2014-15', ''),
('2015-22', 'BEB57', 'Gangasagar khupse', 'BEB47', 'YEOTEKAR MONIKA M. ', 'BEB54', ' SHELKE KOMAL', 'BEB56', 'BHOITE PRIYA L.', '', '', 'Notice Board System (Android)', 0, 'Prof.P.H.Band', 'completed', '2014-15', ''),
('2015-23', 'BEB04', 'AMBEKAR SHILPA BABURAO ', 'BEB09', 'PANCHPUTRE KOMAL KESHAO', 'BEB19', 'SHELAR POOJA ROHIDAS', 'BEB21', 'JAGTAP RUPALI DADARAO ', '', '', 'Load Balancer', 0, 'Prof.D.D.Dharmadhikari', 'completed', '2014-15', ''),
('2015-24', 'BEB38', 'SHIRALE SHILPA SAMBHAJI ', 'BEB69', 'BARASKARÂ PRIYANKAÂ UTTAMÂ ', 'BEB71', 'BORLEPWARÂ SUCHITAÂ SURYAKANT', 'BEB43', 'DUKRE PRIYA', '', '', 'Student Feedback Analysis', 101039, 'Prof.Kiran Gaikwad', 'completed', '2014-15', ''),
('2015-25', 'BEB10', 'BHALERAO PALLAVI LAXMIKANT ', 'BEB26', 'LIPANE SUSHMA SURESH ', 'BEB30', 'MUNDANKAR SNEHAL SANJAY ', 'BEB37', 'SHELKE PALLAVI JITENDRA ', '', '', 'Travel Package Recommendation ', 100077, 'Prof. S.A.Kinariwala', 'completed', '2014-15', ''),
('2015-26', 'BEB58', 'BHISE MADHURI', 'BEB59', 'PUND PRAJKTA D.', 'BEB76', 'DARWANI KOMAL', 'BEB61', 'JOSHI SWAPNA C.', '', '', 'Secure multifactor Chat applic', 100477, 'Prof S.B.Siledar', 'completed', '2014-15', ''),
('2015-27', 'BEB72', 'SHETKAR DIPMALA G.', 'BEB67', 'MUNDHE ANUPAMA A.', 'BEB78', 'DEORE PALLAVI P.', 'BEB79', 'RANE SAYALI  S.', '', '', 'Supporting Privacy Protection ', 100089, 'Prof.P.N.Suryavanshi', 'completed', '2014-15', ''),
('2015-28', 'BEB07', 'BAPAT NAIMISH SADANAND ', 'BEB11', 'BHUJANG SWAPNIL DEVIDAS ', 'BEB64', 'JOSHI SHYAM S.', 'BEB66', 'THOTE MAYANK D.', '', '', 'Logistic System', 0, 'Prof.D.C.Sirdeshpande', 'completed', '2014-15', ''),
('2015-29', 'BEB13', 'CHAVAN RAJESH PANDURANG ', 'BEB27', 'MOHTA AJINKYA MANOJ ', 'BEB05', 'BABAR BALIRAM KAKASAHEB ', '', '', '', '', 'Bloood Bank System.', 0, 'Prof. G.S.Joshi', 'completed', '2014-15', ''),
('2015-30', 'BEB52', ' JAIN SHIVPARTH S.', 'BEB53', 'AMIR KHAN PATHAN.', 'BEB45', 'WANI SACHIN D.', '', '', '', '', '3D Hologram Image Projection', 0, 'Prof.R.B.Patil', 'completed', '2014-15', ''),
('2015-31', 'BEB62', 'SONUNE REENA ', 'BEB75', 'KASBEKAR POOJA', 'BEB73', 'PARISKAR DIPALI C.', 'BEB06', 'BAGADE KARTIK SUNIL ', '', '', 'Secrete Sharing Schemas for Pr', 100089, 'Prof.P.N.Suryavanshi', 'completed', '2014-15', ''),
('2015-32', 'BEB55', 'DEVASI PREETI ASHOK ', 'BEB50', ' KULKARNI GOPAL S.', 'BEB51', 'NAVANDAR MOHIT S.', 'BEB46', 'AKSHA NASEEM KHAN', '', '', 'Disastro Helper Android', 0, 'Prof.B.S.Ahirwadkar', 'completed', '2014-15', ''),
('2015-33', 'BEB63', 'KULKARNI KRUTIKA', 'BEB68', 'RAGADE REETA B.', '', '', '', '', '', '', 'Virtual Fitting room', 0, 'Prof. P.H.Band', 'completed', '2014-15', ''),
('2015-34', 'BEB29', 'NIKAM MAYURI VISHVAMBHAR', 'BEB33', 'PALNITKAR SHREYA BALKRISHNA', 'BEB20', 'JADHAV GANGA', '', '', '', '', 'Automated Student Feedback Eva', 100476, 'Prof.P.C.Gill', 'completed', '2014-15', ''),
('2016-01', 'BEA01', 'ROHINEE RAMAWAT', 'BEA12', 'POOJA CHAUDHARI', 'BEA30', 'RUPALI WARKAD', 'BEA36', 'PRIYANKA KANTHALE', '', '', 'Theft identification and Automated Water Supply System using Embedded Technology', 100477, 'Prof. S.B.Siledar', 'completed', '2015-16', ''),
('2016-02', 'BEA07', 'AAKASH AUTE', 'BEA08', 'SURAJ BAGUL', 'BEA10', 'NEHA BONDADE', 'BEA40', 'RAJAS PUROHIT', '', '', 'Finding Regulatory Motifs uisng Distributed Systems', 0, 'Prof.Vijay B.Patil', 'completed', '2015-16', ''),
('2016-03', 'BEA29', 'PAWAN JADHAV', 'BEA41', 'SHUBHAM DAHALE', 'BEB13', 'PATHAK PARTH SUNIL', 'BEB25', 'RAMANUJ SHASTRI H.', '', '', 'Virtual computing', 100079, 'Prof.J.A.Kamble', 'completed', '2015-16', ''),
('2016-04', 'BEA26', 'PRAJAKTA HIRE', 'BEA34', 'SANJIWANI KAMBLE', 'BEA39', 'CHANDRAKANT HAKE', 'BEA43', 'ASHWINI PURANIK', '', '', 'Intellegent Performance Analysis of students by using Data Mining Techniques', 100476, 'Prof.P.C.Gill', 'completed', '2015-16', ''),
('2016-05', 'BEA11', 'SURAJ PATIL', 'BEA16', 'JAHED CHAVAN', 'BEA35', 'SAYALI KAMBLE', 'BEA49', 'DEVANAND BHARGAJE', '', '', 'Lalpari Direction Finding', 0, 'Prof.Vijay.B.Patil', 'completed', '2015-16', ''),
('2016-06', 'BEA44', 'RUPALI SALVE', 'BEA51', 'PRIYANKA BELDAR', 'BEA54', 'MONIKA KUMBHAKARNA', 'BEB11', 'Amruta Nangare', '', '', 'Customer Relationship Management', 0, 'Prof. K.A Kulkarni', 'completed', '2015-16', ''),
('2016-07', 'BEA02', 'SAKSHI AGALE', 'BEA09', 'ANKITA BHAVTANKAR', 'BEA18', 'TEJOWATI CHOUKIDAR', 'BEA32', 'PALLAVI KALWAGHE', '', '', 'Realtime sentiment analysis of twitter data using Hadoop', 100077, 'Prof.S.A.Kinariwala', 'completed', '2015-16', ''),
('2016-08', 'BEA05', 'MANISHA ALANE', 'BEA20', 'NAMITA DESHPANDE', 'BEA23', 'NISHA GADHAVE', 'BEA28', 'ASHWINI JADHAV', '', '', 'Accident detection system using Image Processing', 0, 'Dr. R.B.Naik', 'completed', '2015-16', ''),
('2016-09', 'BEA25', 'ABOLI GORE', 'BEA66', 'ANUJA DESHPANDE', 'BEB37', 'RAO SHREYA ARUN', 'BEB38', 'MANISHA SHELKE', '', '', 'Secure Multi Owner data Sharing for dynamic group in cloud', 0, 'Prof. K. Vengatesan', 'completed', '2015-16', ''),
('2016-10', 'BEA13', 'VAIDHEHI CHAUDHARI', 'BEA65', 'PRITI KUMARI', 'BEA67', 'PALLAVI GADALE', 'BEA75', 'NEHA SAOJI', '', '', 'Sentiment Analysis of drug reviews', 0, 'Prof. B.S.Ahirwadkar', 'completed', '2015-16', ''),
('2016-11', 'BEA68', 'MOHSIN OSMANI', 'BEA73', 'AKSA KHAN', 'BEA74', 'SHAIKH MUFEEZ', 'BEA75', 'MAHARUDRA KATARE', 'BEA76', 'JAGDISH SHINDE', 'Motion Sensor using Arduino ', 0, 'Prof.S.G.Chavan', 'completed', '2015-16', ''),
('2016-12', 'BEA27', 'SHIVAJI INGOLE', 'BEA31', 'MOHIT JOSHI', 'BEA42', 'PARAG SARWADE', 'BEA54', 'ASHIH AGHOR', '', '', 'Query Explorer', 101039, 'Prof.K.P.Gaikwad', 'completed', '2015-16', ''),
('2016-13', 'BEA46', 'POOJA PAWAR', 'BEA47', 'DIPALI NAWALE', 'BEA48', 'GOPIKA NIKAM', 'BEA64', 'RAGINI BHISE', '', '', 'Ready Platform for Running Hadoop Services', 0, 'Prof.P.H.Band', 'completed', '2015-16', ''),
('2016-14', 'BEA53', 'MONIKA SHETKAR', 'BEA56', 'PALLAVI GADADE', 'BEB15', 'AAKANKSHA', 'BEB19', 'IMPALA A.', '', '', 'Emotion Based Music Player', 101039, 'K.P.Gaikwad', 'completed', '2015-16', ''),
('2016-15', 'BEA52', 'AMAR KATE', 'BEA55', 'UMRAO ALANE', 'BEA61', 'AMOL PANDIT', 'BEA62', 'SIDDHARTH KHARAT', '', '', 'Audion  steganography ', 0, 'Prof.M.M.Ganesgwade', 'completed', '2015-16', ''),
('2016-16', 'BEA12', 'CHAVAN PRADIP', 'BEA13', 'CHAVAN VILAS', 'BEA62', 'Vishal Indalkar', 'BEA63', 'Abhijit Sawai', '', '', 'Multilevel policy based security configuration in Dsitributed database', 0, 'Prof.R.R.Chakre', 'completed', '2015-16', ''),
('2016-17', 'BEA21', 'SANKET DORLE', 'BEA33', 'SANDESH KAMBLE', 'BEA37', 'AAKASH KARHALE', 'BEA57', 'SAGAR JADHAV', '', '', 'Internet of Things as PAAS', 0, 'Prof.D.D.Dharmadhikari', 'completed', '2015-16', ''),
('2016-18', 'BEA03', 'SHAILESH AGRAWAL', 'BEA15', 'PRASHANT CHINCHOLKAR', 'BEA21', 'AKSHAY GADDAPA', 'BEA23', 'KARTIK GALEWAR', '', '', 'Attendance by Face recognition', 0, 'Prof.S.S.Lahoti', 'completed', '2015-16', ''),
('2016-19', 'BEB01', 'KATE KARISHMA KIRAN', 'BEB03', 'DESHMUKH VAISHNAVI UDAY', 'BEB07', 'LATE AYODHYA GANESHRAO', 'BEB31', 'KALYANI SHINDE', '', '', 'CSE Portal', 0, 'Prof. Pradeep Paithane', 'completed', '2015-16', ''),
('2016-20', 'BEB34', 'BINIWALE MRUNMAYI MADHAV', 'BEB46', 'PRIYANKA WADKAR', 'BEB38', 'BHOKRE POOJA', 'BEB41', 'DESHPANDE RASIKA RAVINDRA', '', '', 'Ceasing maliceous activities based on hadoop ', 100089, 'Prof.P.N.Suryawanshi', 'completed', '2015-16', ''),
('2016-21', 'BEB04', 'KUKARNI PRAJAKTA VIJAY', 'BEB05', 'LAKHOLE SWATI  BALKRISHNA', 'BEB21', 'RODE VAISHALI TUKARAM', 'BEB72', 'SNEHA ASTURE', '', '', 'Sign language Translator', 100340, 'Prof.L.B.Randive', 'completed', '2015-16', ''),
('2016-22', 'BEA03', 'SHIVAM AGNIHOTRI', 'BEB14', 'KULKARNI ABHIJEET SANJAY', 'BEB24', 'AJINKYA SHASTRI', 'BEB26', 'GANESH TIDKE', '', '', 'Resume categorization using Hadoop', 0, 'Prof. R.B.Patil', 'completed', '2015-16', ''),
('2016-23', 'BEB36', 'RANDIVE MAYURI', 'BEB37', 'BHANDARI  SNEHAL', 'BEB39', 'KALE SNEHAL', 'BEB46', 'GHUMARE PRADNYA', 'BEB49', 'KOMAL SHINDE', 'Shopping Mall Guide', 0, 'Prof. S.D.Pawar', 'completed', '2015-16', ''),
('2016-24', 'BEB09', 'MAHAJAN MONIKA RAJENDRA', 'BEB10', 'MUNDADA VAISHNAVI V.', 'BEB16', 'PURI PALLAVI BALU', 'BEB18', 'RANDIVE DEEPALI ARUN', '', '', 'Face Recognition Using unsupervised learning', 0, 'Dr. Jagdish Kumar', 'completed', '2015-16', ''),
('2016-25', 'YD', 'CHAVAN AMRITA BALIRAM', 'BEB35', 'KALE BHAGYASHRI', 'YD', 'KATHAR PRATIBHA', 'BEB26', 'Amol Doijad', 'BEB42', 'CHOUDHARI SNEHA SURYAKANT', 'e-dictionary using data mining', 100348, 'Prof.S.A.Sanap', 'completed', '2015-16', ''),
('2016-26', 'BEB23', 'PRITAM SANAP', 'BEB34', 'AISHWARYA WAGH', 'BEB35', 'AISHWARYA JAGTAP', 'BEB36', 'POOJA YEOLE', '', '', 'E-locker', 100074, 'Prof. R.A.Mangrule', 'completed', '2015-16', ''),
('2016-27', 'BEB27', 'CHOPDE SAKHAHARI MOHINI', 'BEB69', 'REENA SONUNE', 'BEB70', 'SNEHAL MUNDANKAR', 'BEB71', 'POOJA KASBEKAR', '', '', 'Home Automation using Raspberry Pi ', 0, 'Prof.H.P.Daulani', 'completed', '2015-16', ''),
('2016-28', 'BEB54', 'ASOLKAR SHRIRAM', 'BEB55', 'DANI SHUBHAM', 'BEB56', 'TAKALKAR AKSHAY', 'BEB58', 'CHAVARE RAVISHANKAR', 'BEB51', 'Sushant Wanwe', 'GUI for Linux/unix', 0, 'Prof.P.H.Band', 'completed', '2015-16', ''),
('2016-29', 'BEB07', 'LATE KAILAS ASARAM', 'BEB10', 'NANDGAONKAR AKSHAY N.', 'BEB40', 'KHEDKAR SATISH', 'BEB48', 'FULMAMDIKAR ABHISHEK', '', '', 'Sentiment Analysis ', 100077, 'Prof.S.A.Kinariwala', 'completed', '2015-16', ''),
('2016-30', 'BEB06', 'LANDGE RAHULROHIDAS', 'BEB32', 'GOKUL SHINDE', 'BEB33', 'AMIT WABLE', 'BEB41', 'RATHOD VISHWAJIT VASANT', 'BEB16', 'Amol Nirmal', 'Vigilance Using Smart Phone', 0, 'Prof.P.P.Wankhede', 'completed', '2015-16', ''),
('2016-31', 'BEA19', 'ANKITA DESHMUKH', 'BEA70', 'SHIVANI SHARMA', 'BEB42', 'MAHAJAN RUJUTA', '', '', '', '', 'Hotel Management', 101207, 'Prof. S R Milke', 'completed', '2015-16', ''),
('2016-32', 'BEA41', 'Iname Ravindra', 'BEA45', 'Dipak Chikhale', 'BEB20', 'Shubham Sadal', 'BEB56', 'Sumedh Dhandhar', '', '', 'Bar Code System', 0, 'Prof.Sudhir G.Chavan', 'completed', '2015-16', ''),
('2018-01', 'B01', 'Niraja Karwande', 'B04', 'Anjali Rajput', 'B06', 'Riya Sharma', 'B09', 'Anisha Waybhat', '', '', 'Smart Irrigation System for Fa', 100089, 'Prof. P. N. Suryawanshi', 'completed', '2017-18', ''),
('2018-02', 'A02', 'Prachi Bindu', 'A31', 'Anshuman Patil', 'A43', 'Madhumati Pathak', 'A25', 'Shivam Madane', '', '', 'Digital Information management', 100476, 'Prof. P. C. Gill', 'completed', '2017-18', ''),
('2018-03', 'B12', 'Prafful Kaul', 'B16', 'Md. Talha', 'B13', 'Aditya Rawas', 'B11', 'Saurabh Patil', '', '', 'Personal BOT', 0, 'Prof. B. S. Ahirwadkar', 'completed', '2017-18', ''),
('2018-04', 'B10', 'Rajnandini Daud', 'B24', 'Mohini Gaikwad', 'B27', 'Darshana Krishnamoorthy', 'B33', 'Anuja Kotecha', '', '', 'School Bus Tracking System', 100477, 'Prof. S. B. Siledar', 'completed', '2017-18', ''),
('2018-05', 'A01', 'Pallavi Adhude', 'A40', 'Suchitra Maggidwar', 'A05', 'Shalini Chikne', 'A09', 'Shamal Jawale', '', '', 'Baggage Tracking based on IoT', 0, 'Prof. K. A. Kulkarni', 'completed', '2017-18', ''),
('2018-06', 'A03', 'Shamal Chabukswar', 'A08', 'Vaishnavi Dwivedi', 'A11', 'Rasika Kale', 'A12', 'Rutuja Kamble', '', '', 'Prediction of movie success us', 0, 'Prof. B. S. Ahirwadkar', 'completed', '2017-18', ''),
('2018-07', 'A23', 'Sameer Kandarkar', 'A36', 'Shriya Mule', 'A51', 'Shubham Joshi', '', '', '', '', 'System resource utilization us', 101207, 'Prof. S. R. Milke', 'completed', '2017-18', ''),
('2018-08', 'B26', 'Shivam Lakade', 'B28', 'Snehal Harel', 'A32', 'Ankush Mistry', 'B55', 'Sandip Jadhav', '', '', 'Sponsored: Sara Pet', 100477, 'Prof. S. B. Siledar', 'completed', '2017-18', ''),
('2018-09', 'B03', 'Kalyani Padaswan', 'B05', 'Komal Raut', 'B07', 'Shamal Somani', 'B08', 'Vishakha Sonawane', '', '', 'Human Behavioral analysis base', 0, 'Prof. S. S. Marathe', 'completed', '2017-18', ''),
('2018-10', 'A39', 'Revati Joshi', 'A41', 'Pooja Patil', 'A57', 'Rajashri Chhapekar', 'A47', 'Priyanka Mali', 'A55', 'Priyanka Chavan', 'Analysis of Road Traffic fatal', 0, 'Prof. S. S. Lahoti', 'completed', '2017-18', ''),
('2018-11', 'A46', 'Gitanjali Bhusare', 'A49', 'Ganesh Bondare', 'A65', 'Vishal Dhondkar', 'B82', 'Deepak Shevre', '', '', 'Shopping with a MAP', 0, 'Prof. S. B. Lohare', 'completed', '2017-18', ''),
('2018-12', 'B52', 'Rushikesh Sonwane', 'B53', 'Gajanan Korde', 'B67', 'Shrikant Gopnarayan', 'B57', 'Sagar Ghodke', '', '', 'Sponsored: Jai Balaji Transpor', 0, 'Prof. S. L. Kasar', 'completed', '2017-18', ''),
('2018-13', 'A17', 'Nilesh Dahiphale', 'A50', 'Sanket Mundada', 'A29', 'Pranav Pandit', '', '', '', '', 'Automated attendance system an', 100077, 'Prof. S. A. Kinariwala', 'completed', '2017-18', ''),
('2018-14', 'A34', 'Rupali Khale', 'A10', 'Rakhi Kadam', 'A38', 'Deepali Yevale', 'A56', 'Vaishnavi Awaghad', '', '', 'Crop Disease Detection', 101039, 'Prof. K. P. Gaikwad', 'completed', '2017-18', ''),
('2018-15', 'B23', 'Anita Nikam', 'B30', 'Rohini Lahire', 'B31', 'Kirti Kumawat', '', '', '', '', 'Location based reminder system', 101320, 'Prof. P. A. Kapadiya', 'completed', '2017-18', ''),
('2018-16', 'B29', 'Mutha Sejal', 'A33', 'Aman Pitty', 'B63', 'Vijay Bhise', 'B18', 'Suraj Ugalmule', '', '', 'IoT based Bus Monitoring and A', 0, 'Prof. Shalini Jain', 'completed', '2017-18', ''),
('2018-17', 'B17', 'Pankaj Shelke', 'A30', 'Aditya Patil', 'B25', 'Trupti Ekhande', 'B02', 'Mayuri Mhaske', '', '', 'Unmaned Arial vehical', 0, 'Prof. R. B. Patil', 'completed', '2017-18', ''),
('2018-18', 'A19', 'Shubham Jadhav', 'A13', 'Amtul Shaikh', 'A20', 'Shubham Jaiswal', '', '', '', '', 'Smart Home System', 100089, 'Prof. P. N. Suryawanshi', 'completed', '2017-18', ''),
('2018-19', 'A15', 'Archana Pathak', 'A16', 'Ashwini Pardhe', 'B75', 'Shraddha Gaikwad', '', '', '', '', 'Aurangabad Event Calender', 100074, 'Prof. R. A. Mangrule', 'completed', '2017-18', ''),
('2018-20', 'B32', 'Pooja Agharde', 'B35', 'Ketki Patwardhan', 'A37', 'Jayshri Sonkamble', '', '', '', '', 'Satellite Image Segmentation', 100340, 'Prof. L. B. Randive', 'completed', '2017-18', ''),
('2018-21', 'A04', 'Shruti Chikalthankar', 'A22', 'Shreyas Joshi', 'A24', 'Kulkarni Shantanu', '', '', '', '', 'Adulteration Identification in', 100340, 'Prof. L. B. Randive', 'completed', '2017-18', ''),
('2018-22', 'B34', 'Priyanka Wagh', 'B37', 'Renuka Dighoule', 'B39', 'Mayuri Rajurkar', 'B68', 'Seema Mahamuni', '', '', 'Openion Mining for Hotel Ratin', 100077, 'Prof. S. A. Kinariwala', 'completed', '2017-18', ''),
('2018-23', 'A45', 'Varsha Kale', 'A42', 'Shweta Kandi', 'A44', 'Amruta Garad', 'A35', 'Payal Rasne', '', '', 'IoT Based Water Level control ', 0, 'Prof. M. M. Ganeshwade', 'completed', '2017-18', ''),
('2018-24', 'B36', 'Krishna Bajmali', 'B38', 'Jayant Dhumal', 'B64', 'Sagar Javheri', 'B41', 'Sanket Deshpande', '', '', 'Online Skilled people provider', 100348, 'Prof. S. A. Sanap', 'completed', '2017-18', ''),
('2018-25', 'A28', 'Sunil Mohite', 'A21', 'Swapnil Jaiswal', '', '', '', '', '', '', 'Lab Equipment monitoring', 100476, 'Prof. P. C. Gill', 'completed', '2017-18', ''),
('2018-26', 'B59', 'Saurabh Ghodeswar', 'B42', 'Sham Prajapati', 'B62', 'Shekhar Jaiswal', 'B61', 'Pushpak Hurpade', 'B83', 'Gaikwad Prashant', 'Social filter using Machine Le', 101440, 'Prof. B. Chaudhari', 'completed', '2017-18', ''),
('2018-27', 'A06', 'Suruchi Dharma', 'A07', 'Sarvesha Dudhgaonkar', 'A18', 'Prasad Deshpande', 'A27', 'Akshay Wani', '', '', 'Code As A Service', 101207, 'Prof. S. R. Milke', 'completed', '2017-18', ''),
('2018-28', 'B40', 'Niranjan Mahtole', 'B22', 'Shivaji Pawar', 'B54', 'Ramdas Landge', 'B56', 'Sagar Dobhal', '', '', 'Sponsored: Shree Venkatesh Sch', 101349, 'Prof. S. D. Ghode', 'completed', '2017-18', ''),
('2018-29', 'A26', 'Pradip Wagh', 'A48', 'Sumit Hulgunde', 'A64', 'Yogesh Deshmukh', 'A63', 'Vicky Dawane', 'A59', 'Shubham Mugale', 'Chat Bot', 0, 'Prof. R. B. Patil', 'completed', '2017-18', ''),
('2018-30', 'B14', 'Sanjay Sapkal', 'B15', 'Sujit Sawant', 'B20', 'Vishal Wadkar', 'B21', 'Ajay Wayal', '', '', 'All in one open source social ', 101440, 'Prof. B. Chaudhari', 'completed', '2017-18', ''),
('2018-31', 'B50', 'Kunal Ramdasi', 'B69', 'Pranav Bidkar', 'B51', 'Ranvirkar Kiran', 'B48', 'Thorat Kuldip', '', '', 'E-Grampanchayat', 100079, 'Prof. J. A. Kamble', 'completed', '2017-18', ''),
('2018-32', 'B58', 'Sushmita Suryawanshi', 'B43', 'Sachin Jagtap', 'B71', 'Swapnil Rasne', 'B44', 'Pradip Solunke', 'B74', 'Priyanka Rajput', 'A Indicator', 0, 'Prof. S. L. Kasar', 'completed', '2017-18', ''),
('2018-33', 'A53', 'Vaishnavi Koturwar', 'A52', 'Pawan Kardile', 'A58', 'Shankar Waghmare', '', '', '', '', 'Reward Back', 100074, 'Prof. R. A. Mangrule', 'completed', '2017-18', ''),
('2018-34', 'B47', 'Atmaram Tak', 'B45', 'Dhananjay Sakhare', 'B80', 'Akshay Kulkarni', 'B46', 'Ganesh Ugale', 'B19', 'Shubham Wadhave', 'Data Obfuscation Tool', 100079, 'Prof. J. A. Kamble', 'completed', '2017-18', ''),
('2018-35', 'B70', 'Pratiksha Salunke', 'B60', 'Varun Nagrare', 'B49', 'Sandesh Kasliwal', 'B72', 'Lokesh Sonawane', '', '', 'Expences Manager', 100348, 'Prof. S. A. Sanap', 'completed', '2017-18', ''),
('2018-36', 'B73', 'Deepali Ranbawle', 'A61', 'Tejaswini Ingle', 'A54', 'Neha Jojare', '', '', '', '', 'Online Course Registration Sys', 101429, 'Prof. P. L. Sonwane', 'completed', '2017-18', ''),
('2018-37', 'B65', 'satish Khedkar', 'B78', 'Amit Chopade', 'B66', 'Sumit Ghag', 'B76', 'Ranjana Chavan', 'B79', 'Priti Avhale', 'Multiplex Ticket Booking', 101039, 'Prof. K. P. Gaikwad', 'completed', '2017-18', ''),
('2018-38', 'A60', 'Rahul Gore', 'A62', 'Bhagwat Pawar', 'A14', 'Rupali Jogdand', '', '', '', '', 'Farmer Connector ', 101429, 'Prof. P. L. Sonwane', 'completed', '2017-18', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studid` int(10) NOT NULL,
  `studname` varchar(30) NOT NULL,
  `class` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studid`, `studname`, `class`) VALUES
(18877, 'Tanmay Ambatkar', 'BECSE-A'),
(18245, 'Sonali Munemanik', 'BECSE-A'),
(23454, 'Pallavi Varpe', 'BECSE-A'),
(15443, 'Bhagyesh Parmar', 'BECSE-A');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(10) NOT NULL,
  `teacherid` int(10) NOT NULL,
  `teachername` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `teacherid`, `teachername`, `password`) VALUES
(1, 100079, 'Jayanand Kamble', 'admin'),
(2, 101460, 'Arti Mohanpurkar', '101460'),
(3, 101506, 'Dr Mainak Biswas', '101506'),
(4, 100284, 'Swati Jaipurkar', '100284'),
(5, 100074, 'Rupali A.Mangrule', '100074'),
(6, 101207, 'Sanket Milke', '101207'),
(7, 101429, 'Priyanka  Sonwane', '101429 '),
(8, 100089, 'Pramod Suryawanshi ', '100089'),
(9, 100924, 'Madhuri Joshi', '100924'),
(10, 100477, 'Seema Siledar', '100477'),
(11, 101039, 'Kiran Gaikwad', '101039'),
(12, 100340, 'Lalita Randive', '100340'),
(13, 100351, 'Kiran Chaudhari', '100351'),
(14, 101440, 'Bharat Chaudhari', '101440'),
(15, 100476, 'Parmeetkaur Gill', '100476'),
(16, 101349, 'Sushma Ghode', '101349'),
(17, 100348, 'Shilpa Sanap', '100348'),
(18, 100077, 'Supriya Kinariwala', '100077'),
(19, 101320, 'Priyanka Kapadia', '101320');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `pastpro`
--
ALTER TABLE `pastpro`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `nid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
