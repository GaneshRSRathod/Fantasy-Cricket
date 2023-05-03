-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2019 at 06:13 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Fcricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adname` varchar(20) NOT NULL,
  `pass` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adname`, `pass`) VALUES
('ganesh', 'gan'),
('prajwalds', 'prajwl'),
('sourabh', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `fteam`
--

CREATE TABLE `fteam` (
  `usr` varchar(20) NOT NULL,
  `match_no` int(5) NOT NULL,
  `pl1_id` int(4) DEFAULT NULL,
  `pl1_team` varchar(20) DEFAULT NULL,
  `pl2_id` int(4) DEFAULT NULL,
  `pl2_team` varchar(20) DEFAULT NULL,
  `pl3_id` int(4) DEFAULT NULL,
  `pl3_team` varchar(20) DEFAULT NULL,
  `pl4_id` int(4) DEFAULT NULL,
  `pl4_team` varchar(20) DEFAULT NULL,
  `pl5_id` int(4) DEFAULT NULL,
  `pl5_team` varchar(20) DEFAULT NULL,
  `pl6_id` int(4) DEFAULT NULL,
  `pl6_team` varchar(20) DEFAULT NULL,
  `pl7_id` int(4) DEFAULT NULL,
  `pl7_team` varchar(20) DEFAULT NULL,
  `pl8_id` int(4) DEFAULT NULL,
  `pl8_team` varchar(20) DEFAULT NULL,
  `pl9_id` int(4) DEFAULT NULL,
  `pl9_team` varchar(20) DEFAULT NULL,
  `pl10_id` int(4) DEFAULT NULL,
  `pl10_team` varchar(20) DEFAULT NULL,
  `pl11_id` int(4) DEFAULT NULL,
  `pl11_team` varchar(20) DEFAULT NULL,
  `pl1_credit` float NOT NULL DEFAULT 0,
  `pl2_credit` float NOT NULL DEFAULT 0,
  `pl3_credit` float NOT NULL DEFAULT 0,
  `pl4_credit` float NOT NULL DEFAULT 0,
  `pl5_credit` float NOT NULL DEFAULT 0,
  `pl6_credit` float NOT NULL DEFAULT 0,
  `pl7_credit` float NOT NULL DEFAULT 0,
  `pl8_credit` float NOT NULL DEFAULT 0,
  `pl9_credit` float NOT NULL DEFAULT 0,
  `pl10_credit` float NOT NULL DEFAULT 0,
  `pl11_credit` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fteam`
--

INSERT INTO `fteam` (`usr`, `match_no`, `pl1_id`, `pl1_team`, `pl2_id`, `pl2_team`, `pl3_id`, `pl3_team`, `pl4_id`, `pl4_team`, `pl5_id`, `pl5_team`, `pl6_id`, `pl6_team`, `pl7_id`, `pl7_team`, `pl8_id`, `pl8_team`, `pl9_id`, `pl9_team`, `pl10_id`, `pl10_team`, `pl11_id`, `pl11_team`, `pl1_credit`, `pl2_credit`, `pl3_credit`, `pl4_credit`, `pl5_credit`, `pl6_credit`, `pl7_credit`, `pl8_credit`, `pl9_credit`, `pl10_credit`, `pl11_credit`) VALUES
('aditya', 4, 8, 'South_Africa', 2, 'South_Africa', 5, 'South_Africa', 6, 'West_Indies', 9, 'South_Africa', 10, 'West_Indies', 1, 'South_Africa', 12, 'South_Africa', 12, 'West_Indies', 13, 'South_Africa', 16, 'South_Africa', 46, 90, 40, 0, 0, 0, 66, 0, 0, 0, 0),
('ganesh', 2, 3, 'India', 2, 'India', 5, 'India', 7, 'Pakistan', 10, 'Pakistan', 13, 'India', 17, 'Pakistan', 8, 'Pakistan', 13, 'Pakistan', 14, 'Pakistan', 15, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ganesh', 6, 2, 'Pakistan', 1, 'India', 3, 'Pakistan', 7, 'Pakistan', 10, 'Pakistan', 13, 'India', 4, 'Pakistan', 14, 'India', 16, 'India', 16, 'Pakistan', 17, 'India', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ganesh', 7, 3, 'India', 2, 'India', 3, 'England', 6, 'India', 13, 'India', 15, 'England', 17, 'England', 18, 'England', 16, 'India', 17, 'India', 19, 'India', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('padya', 5, 7, 'New_Zealand', 1, 'New_Zealand', 6, 'India', 10, 'New_Zealand', 13, 'India', 10, 'India', 12, 'India', 11, 'New_Zealand', 12, 'New_Zealand', 14, 'New_Zealand', 15, 'New_Zealand', 0, 0, 0, 0, 24, 0, 0, 6, 0, 0, 0),
('rohit', 2, 3, 'India', 2, 'India', 3, 'Pakistan', 5, 'India', 17, 'Pakistan', 9, 'India', 9, 'Pakistan', 18, 'Pakistan', 13, 'Pakistan', 14, 'Pakistan', 16, 'India', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('rohit', 4, 8, 'West_Indies', 1, 'West_Indies', 4, 'West_Indies', 5, 'South_Africa', 6, 'South_Africa', 9, 'South_Africa', 7, 'West_Indies', 10, 'South_Africa', 16, 'South_Africa', 16, 'West_Indies', 17, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('rohit', 5, 3, 'India', 2, 'New_Zealand', 6, 'India', 7, 'India', 13, 'India', 12, 'India', 13, 'New_Zealand', 14, 'India', 15, 'New_Zealand', 17, 'New_Zealand', 19, 'India', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('rohit', 6, 3, 'India', 2, 'India', 3, 'Pakistan', 5, 'India', 7, 'India', 1, 'Pakistan', 4, 'India', 9, 'India', 11, 'India', 11, 'Pakistan', 13, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('rohit', 7, 4, 'England', 2, 'India', 3, 'England', 6, 'England', 13, 'India', 10, 'England', 10, 'India', 12, 'India', 11, 'India', 12, 'England', 13, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fuser`
--

CREATE TABLE `fuser` (
  `username` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuser`
--

INSERT INTO `fuser` (`username`, `pass`, `Name`) VALUES
('aditya', 'pass', 'aditya'),
('as', 's', 'ss'),
('ganesh', 'pass', 'Ganesh'),
('ganesh25', 'pass', 'Ganesh'),
('karan', 'rahtod', 'karan'),
('manish52', 'pass', 'manish'),
('master', 'word', 'Ganesh Rathod'),
('onk', 'onkar', 'onkar'),
('padya', 'padya', 'padya'),
('prajwal', 'surpam', 'prajwal'),
('prajwalds17', 'pass', 'prajwald'),
('ramesh', 'pawar', 'Ramesh'),
('rathod', '123', 'ganesh'),
('rohit', 'rohit', 'rohit'),
('s', 's', 's'),
('sarang', 'sharang', 'sarang'),
('surpam', '47', 'prajwal'),
('swapnya', 'swa12', 'swapnil'),
('to', 'to', 'to'),
('vaibhav', 'vdm', 'Vaibhav');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `match_no` int(3) NOT NULL,
  `team1` varchar(20) DEFAULT NULL,
  `team2` varchar(20) DEFAULT NULL,
  `done` tinyint(1) DEFAULT 0,
  `winner` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`match_no`, `team1`, `team2`, `done`, `winner`) VALUES
(1, 'Australia', 'India', 1, NULL),
(2, 'India', 'Pakistan', 1, NULL),
(3, 'Bangladesh', 'England', 1, NULL),
(4, 'South_Africa', 'West_Indies', 1, NULL),
(5, 'India', 'New_Zealand', 1, NULL),
(6, 'India', 'Pakistan', 1, NULL),
(7, 'England', 'India', 1, NULL),
(8, 'India', 'Pakistan', 1, NULL),
(9, 'Australia', 'Bangladesh', 1, NULL),
(10, 'England', 'India', 1, NULL),
(11, 'Australia', 'Bangladesh', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Player`
--

CREATE TABLE `Player` (
  `ID` int(4) NOT NULL,
  `Team` varchar(20) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `runs` int(6) DEFAULT NULL,
  `wickets` int(4) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ;

--
-- Dumping data for table `Player`
--

INSERT INTO `Player` (`ID`, `Team`, `Name`, `runs`, `wickets`, `type`, `match_played`) VALUES
(1, 'Australia', 'David Warner', 2073, 0, 'batsman', 78),
(1, 'Bangladesh', 'Shakib Al Hasan', 1567, 92, 'all_rounder', 77),
(1, 'England', 'Eoin Morgan', 1894, 0, 'batsman', 89),
(1, 'India', 'Virat Kohli', 2681, 12, 'batsman', 82),
(1, 'New_Zealand', 'Martin Guptil', 2359, 0, 'batsman', 81),
(1, 'Pakistan', 'Shoaib Malik', 2251, 29, 'all_rounder', 112),
(1, 'South_Africa', 'JP Duminy', 1984, 21, 'all_rounder', 81),
(1, 'West_Indies', 'Chris Gayle', 1627, 17, 'batsman', 59),
(2, 'Australia', 'Aron Finch', 1775, 0, 'batsman', 60),
(2, 'Bangladesh', 'Tamim Iqbal', 1556, 0, 'batsman', 72),
(2, 'England', 'Alex Hales', 1644, 0, 'batsman', 65),
(2, 'India', 'Rohit Sharma', 2623, 2, 'batsman', 108),
(2, 'New_Zealand', 'Ross Taylor', 1726, 0, 'batsman', 93),
(2, 'Pakistan', 'Umar Akmal', 1690, 0, 'wicket_keeper', 86),
(2, 'South_Africa', 'Faf Du Plesis', 1301, 5, 'batsman', 41),
(2, 'West_Indies', 'Marlon Samuels', 1611, 22, 'batsman', 68),
(3, 'Australia', 'Glenn Maxwell', 1567, 26, 'all_rounder', 66),
(3, 'Bangladesh', 'Mahamudullah', 1392, 31, 'all_rounder', 82),
(3, 'England', 'Joe Root', 893, 9, 'batsman', 37),
(3, 'India', 'MS Dhoni', 1650, 5, 'wicket_keeper', 108),
(3, 'New_Zealand', 'Kane Williamson', 1505, 6, 'batsman', 57),
(3, 'Pakistan', 'Ahmed Shahzad', 1471, 0, 'batsman', 61),
(3, 'South_Africa', 'David Miller', 1268, 0, 'batsman', 69),
(3, 'West_Indies', 'Dwayne Bravo', 1142, 52, 'all_rounder', 67),
(4, 'Australia', 'Darcy Short', 592, 3, 'batsman', 25),
(4, 'Bangladesh', 'Mushfiquer Rahim', 1261, 0, 'wicket_keeper', 83),
(4, 'England', 'Jonny Bairstrow', 571, 0, 'wicket_keeper', 37),
(4, 'India', 'Suresh Raina', 1648, 19, 'all_rounder', 88),
(4, 'New_Zealand', 'Colin Munro', 1470, 4, 'batsman', 58),
(4, 'Pakistan', 'Mohammad Hafiz', 1908, 54, 'all_rounder', 91),
(4, 'South_Africa', 'Quinto De Kock', 1018, 0, 'wicket_keeper', 38),
(4, 'West_Indies', 'Lendel Simmons', 907, 6, 'batsman', 46),
(5, 'Australia', 'Steve Smith', 499, 17, 'batsman', 38),
(5, 'Bangladesh', 'Shabbir Rehman', 946, 6, 'batsman', 45),
(5, 'England', 'David Malan', 355, 1, 'batsman', 13),
(5, 'India', 'Shikhar Dhawan', 1446, 3, 'batsman', 65),
(5, 'New_Zealand', 'Corey Anderson', 485, 14, 'all_rounder', 31),
(5, 'Pakistan', 'Babar Azam', 1399, 0, 'batsman', 37),
(5, 'South_Africa', 'Reeza Hendricks', 593, 0, 'batsman', 22),
(5, 'West_Indies', 'Kieron Pollard', 903, 23, 'all_rounder', 63),
(6, 'Australia', 'Travis Head', 321, 1, 'batsman', 21),
(6, 'Bangladesh', 'Soumya Sarkar', 761, 4, 'all_rounder', 45),
(6, 'England', 'James Vince', 339, 0, 'batsman', 16),
(6, 'India', 'K L Rahul', 899, 0, 'batsman', 38),
(6, 'New_Zealand', 'Colin de Grandhome', 466, 10, 'all_rounder', 31),
(6, 'Pakistan', 'Sarfaraz Ahmed', 812, 0, 'wicket_keeper', 60),
(6, 'South_Africa', 'Farhan Beherdien', 530, 3, 'batsman', 38),
(6, 'West_Indies', 'Evin Lewis', 647, 0, 'batsman', 24),
(7, 'Australia', 'Chris Lynn', 221, 2, 'batsman', 23),
(7, 'Bangladesh', 'Liton Das', 461, 0, 'batsman', 24),
(7, 'India', 'Manish Pandey', 567, 6, 'batsman', 41),
(7, 'New_Zealand', 'Tim Seifert', 274, 0, 'wicket_keeper', 18),
(7, 'Pakistan', 'Fakhar Zaman', 775, 0, 'batsman', 36),
(7, 'South_Africa', 'Rassein Van Der Dussein', 298, 0, 'batsman', 9),
(7, 'West_Indies', 'Andre Russel', 465, 25, 'all_rounder', 48),
(8, 'Australia', 'Mathew Wade', 239, 3, 'wicket_keeper', 31),
(8, 'Bangladesh', 'Moshrafe Mortaza', 377, 42, 'all_rounder', 55),
(8, 'India', 'Rishabh Pant', 336, 3, 'wicket_keeper', 30),
(8, 'New_Zealand', 'James Neesham', 186, 11, 'all_rounder', 17),
(8, 'Pakistan', 'Hussain Talat', 371, 4, 'all_rounder', 16),
(8, 'South_Africa', 'Heinrich Claseen', 198, 0, 'wicket_keeper', 9),
(8, 'West_Indies', 'Nicolous Pooran', 275, 0, 'wicket_keeper', 15),
(9, 'Australia', 'Mitchell Marsh', 117, 6, 'all_rounder', 16),
(9, 'Bangladesh', 'Nasir Hussain', 370, 7, 'all_rounder', 32),
(9, 'England', 'Chris Jordan', 204, 52, 'bowler', 46),
(9, 'India', 'Hardik Pandya', 322, 40, 'all_rounder', 50),
(9, 'New_Zealand', 'Tom Latham', 163, 0, 'wicket_keeper', 13),
(9, 'Pakistan', 'Imad Wasim', 255, 42, 'all_rounder', 42),
(9, 'South_Africa', 'Rilee Rossow', 327, 0, 'batsman', 15),
(9, 'West_Indies', 'Shai Hope', 186, 0, 'wicket_keeper', 13),
(10, 'Australia', 'Nathan Coulter Nile', 150, 39, 'bowler', 33),
(10, 'Bangladesh', 'Anamul Haque', 355, 0, 'batsman', 14),
(10, 'England', 'David Willey', 166, 34, 'all_rounder', 33),
(10, 'India', 'Ravindra Jadeja', 179, 33, 'all_rounder', 54),
(10, 'New_Zealand', 'Hamish Rutherford', 151, 0, 'batsman', 8),
(10, 'Pakistan', 'Haris Sohail', 202, 0, 'batsman', 15),
(10, 'South_Africa', 'Chris Morris', 133, 34, 'all_rounder', 23),
(10, 'West_Indies', 'Shimron Heytmyer', 116, 0, 'batsman', 15),
(11, 'Australia', 'Marcus Stoinis', 138, 11, 'all_rounder', 24),
(11, 'Bangladesh', 'Mustafizur Rehman', 42, 52, 'bowler', 36),
(11, 'England', 'Adil Rashid', 51, 41, 'bowler', 44),
(11, 'India', 'Ravichandran Ashwin', 110, 60, 'bowler', 56),
(11, 'New_Zealand', 'Tim Southee', 181, 73, 'bowler', 64),
(11, 'Pakistan', 'Mohammad Amir', 50, 59, 'bowler', 49),
(11, 'South_Africa', 'Imran Tahir', 18, 61, 'bowler', 35),
(11, 'West_Indies', 'Samuel Badree', 43, 54, 'bowler', 51),
(12, 'Australia', 'Alex Carey', 125, 3, 'wicket_keeper', 27),
(12, 'Bangladesh', 'Mohammad Saifuddin', 108, 12, 'all_rounder', 14),
(12, 'England', 'Liam Plunkett', 42, 25, 'bowler', 27),
(12, 'India', 'Krunal Pandya', 106, 14, 'all_rounder', 26),
(12, 'New_Zealand', 'Ish Sodhi', 50, 47, 'bowler', 38),
(12, 'Pakistan', 'Shadab Khan', 122, 49, 'bowler', 39),
(12, 'South_Africa', 'Dale Stey', 16, 61, 'bowler', 44),
(12, 'West_Indies', 'Sunil Narine', 155, 52, 'bowler', 52),
(13, 'Australia', 'Andrew Tye', 61, 37, 'bowler', 31),
(13, 'Bangladesh', 'Aminul Islam', 0, 4, 'bowler', 3),
(13, 'England', 'Tom Curran', 24, 14, 'bowler', 18),
(13, 'India', 'Shreyash Iyer', 151, 0, 'batsman', 24),
(13, 'New_Zealand', 'Mitchell Santner', 253, 45, 'all_rounder', 37),
(13, 'Pakistan', 'Hasan Ali', 61, 35, 'bowler', 32),
(13, 'South_Africa', 'Andile Phelukwayo', 73, 29, 'bowler', 23),
(13, 'West_Indies', 'Carlos Braithwate', 310, 31, 'all_rounder', 42),
(14, 'Australia', 'Mitchell Starc', 12, 35, 'bowler', 30),
(14, 'Bangladesh', 'Rubel Hussain', 17, 28, 'bowler', 28),
(14, 'England', 'Mark Wood', 10, 11, 'bowler', 16),
(14, 'India', 'Vijay Shankar', 101, 5, 'all_rounder', 18),
(14, 'New_Zealand', 'Trent Boult', 22, 37, 'bowler', 25),
(14, 'Pakistan', 'Wahab Riaz', 145, 30, 'bowler', 33),
(14, 'South_Africa', 'Kagiso Rabada', 5, 28, 'bowler', 21),
(14, 'West_Indies', 'Sheldon Cottrell', 11, 24, 'bowler', 17),
(15, 'Australia', 'Pat Cummins', 35, 34, 'bowler', 28),
(15, 'Bangladesh', 'Taskin Ahmed', 29, 12, 'bowler', 20),
(15, 'England', 'Chris Woaks', 91, 9, 'all_rounder', 13),
(15, 'India', 'Bhuvaneshwar Kumar', 26, 44, 'bowler', 50),
(15, 'New_Zealand', 'Adam Milne', 21, 25, 'bowler', 21),
(15, 'Pakistan', 'Shahin Afridi', 0, 16, 'bowler', 13),
(15, 'South_Africa', 'Bueran Hendricks', 19, 18, 'bowler', 11),
(15, 'West_Indies', 'Kimo Paul', 127, 20, 'all_rounder', 17),
(16, 'Australia', 'Adam Zampa', 23, 28, 'bowler', 26),
(16, 'Bangladesh', 'Al-Amin Hussain', 7, 39, 'bowler', 27),
(16, 'England', 'Jos Buttler', 1260, 0, 'wicket_keeper', 68),
(16, 'India', 'Jasprit Bumrah', 10, 53, 'bowler', 47),
(16, 'New_Zealand', '16', 157, 14, 'all_rounder', 16),
(16, 'Pakistan', 'Usnan Shenwari', 2, 13, 'bowler', 18),
(16, 'South_Africa', 'Junior Dala', 18, 13, 'bowler', 13),
(16, 'West_Indies', 'Oshen Thomas', 8, 9, 'bowler', 11),
(17, 'Australia', 'Billy Stanlake', 21, 30, 'bowler', 18),
(17, 'Bangladesh', 'Arafat Sani', 39, 12, 'bowler', 11),
(17, 'England', 'Moeen Ali', 235, 15, 'all_rounder', 27),
(17, 'India', 'Yuzvendra Chahal', 4, 46, 'bowler', 37),
(17, 'New_Zealand', 'Matt Henry', 21, 7, 'bowler', 6),
(17, 'Pakistan', 'Asif Ali', 331, 0, 'batsman', 27),
(17, 'South_Africa', 'Dwain Pretorious', 87, 3, 'all_rounder', 6),
(17, 'West_Indies', 'Shanon Gabriel', 0, 3, 'bowler', 3),
(18, 'Australia', 'Zhyle Richardson', 2, 9, 'bowler', 10),
(18, 'Bangladesh', 'Mehadi Hasan', 11, 0, 'bowler', 2),
(18, 'England', 'Ben Stokes', 232, 10, 'all_rounder', 25),
(18, 'India', 'Kuldeep Yadav', 24, 35, 'bowler', 24),
(18, 'New_Zealand', 'Lockie Ferguson', 1, 14, 'bowler', 8),
(18, 'Pakistan', 'Faheem Ashraf', 134, 29, 'all_rounder', 29),
(18, 'South_Africa', 'Lungi Ngidi', 6, 11, 'bowler', 7),
(18, 'West_Indies', 'Jason Holder', 60, 9, 'bowler', 12),
(19, 'India', 'Umesh Yadav', 4, 11, 'bowler', 13),
(19, 'New_Zealand', 'Tim Bruce', 279, 0, 'wicket_keeper', 15),
(20, 'India', 'Khaleel Ahmed', 2, 13, 'bowler', 17),
(21, 'India', 'Deepak Chahar', 23, 9, 'bowler', 10);

-- --------------------------------------------------------

--
-- Table structure for table `player_series`
--

CREATE TABLE `player_series` (
  `ID` int(4) NOT NULL,
  `Team` varchar(20) NOT NULL,
  `runs` int(5) DEFAULT 0,
  `wickets` int(3) DEFAULT 0,
  `catches` int(2) DEFAULT 0,
  `run_outs` int(2) DEFAULT 0,
  `5_wickets` int(3) NOT NULL DEFAULT 0,
  `maidens` int(3) NOT NULL DEFAULT 0,
  `fifties` int(3) NOT NULL DEFAULT 0,
  `hundreds` int(3) NOT NULL DEFAULT 0,
  `sixes` int(3) NOT NULL DEFAULT 0,
  `fours` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_series`
--

INSERT INTO `player_series` (`ID`, `Team`, `runs`, `wickets`, `catches`, `run_outs`, `5_wickets`, `maidens`, `fifties`, `hundreds`, `sixes`, `fours`) VALUES
(1, 'Australia', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 'India', 21, 8, 3, 5, 1, 4, 0, 0, 2, 4),
(1, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 'Pakistan', 0, 2, 0, 0, 0, 0, 0, 0, 5, 0),
(1, 'South_Africa', 50, 0, 0, 0, 0, 0, 1, 0, 3, 2),
(1, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Australia', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0),
(2, 'India', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(2, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'South_Africa', 0, 5, 0, 0, 1, 3, 0, 0, 0, 0),
(2, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Australia', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(3, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'England', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'India', 25, 2, 0, 0, 0, 3, 0, 0, 2, 61),
(3, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(3, 'South_Africa', 0, 0, 3, 0, 0, 0, 0, 0, 0, 0),
(3, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Australia', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'England', 23, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'India', 21, 3, 0, 0, 0, 3, 0, 0, 16, 3),
(4, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Australia', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'India', 33, 3, 0, 0, 0, 0, 0, 0, 2, 3),
(5, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 6, 0),
(5, 'South_Africa', 0, 0, 0, 5, 0, 0, 0, 0, 0, 0),
(5, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Australia', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0),
(6, 'India', 0, 0, 0, 0, 0, 3, 0, 0, 3, 0),
(6, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(6, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Australia', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'India', 2, 6, 0, 0, 0, 3, 0, 0, 0, 2),
(7, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(7, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'Australia', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(8, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'India', 10, 3, 0, 0, 0, 0, 0, 0, 6, 2),
(8, 'New_Zealand', 2, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(8, 'Pakistan', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(8, 'South_Africa', 42, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(8, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'Australia', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'India', 12, 2, 0, 0, 0, 0, 0, 0, 2, 4),
(9, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Australia', 0, 3, 0, 0, 0, 0, 0, 0, 1, 0),
(10, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'England', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0),
(10, 'India', 25, 0, 0, 0, 0, 0, 0, 0, 3, 0),
(10, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'Australia', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'England', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'India', 0, 3, 0, 0, 0, 0, 0, 0, 0, 3),
(11, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0),
(11, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0),
(11, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Australia', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'India', 0, 0, 0, 0, 0, 1, 0, 0, 1, 6),
(12, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Pakistan', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'Australia', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'England', 0, 0, 0, 0, 0, 3, 0, 0, 0, 3),
(13, 'India', 0, 0, 0, 0, 0, 3, 0, 0, 2, 0),
(13, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'Australia', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'India', 0, 0, 0, 0, 0, 0, 0, 0, 2, 2),
(14, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'Pakistan', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0),
(14, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'Australia', 0, 0, 0, 0, 0, 0, 0, 0, 23, 0),
(15, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'India', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'Pakistan', 0, 2, 0, 0, 0, 0, 0, 0, 0, 2),
(15, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'Australia', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0),
(16, 'India', 2, 2, 0, 0, 0, 1, 0, 0, 0, 2),
(16, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'Australia', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'India', 0, 0, 0, 0, 0, 0, 0, 0, 8, 2),
(17, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'Pakistan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'Australia', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(18, 'Bangladesh', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'England', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'India', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'Pakistan', 1, 5, 0, 0, 1, 0, 0, 0, 0, 0),
(18, 'South_Africa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'West_Indies', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 'India', 0, 2, 0, 0, 0, 3, 0, 0, 2, 2),
(19, 'New_Zealand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 'India', 0, 2, 2, 0, 0, 0, 0, 0, 4, 0),
(21, 'India', 0, 3, 2, 0, 0, 6, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `type` varchar(20) DEFAULT NULL
) ;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`type`, `point`) VALUES
('run', 1),
('century', 16),
('half_century', 8),
('six', 2),
('four', 1),
('wicket', 10),
('maiden', 8),
('5_wicket', 16),
('catch', 8),
('run_out', 8);

-- --------------------------------------------------------

--
-- Table structure for table `Team`
--

CREATE TABLE `Team` (
  `Name` varchar(20) NOT NULL,
  `match_played` int(5) DEFAULT 0,
  `match_won` int(5) DEFAULT 0,
  `match_lost` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Team`
--

INSERT INTO `Team` (`Name`, `match_played`, `match_won`, `match_lost`) VALUES
('Australia', 121, 64, 52),
('Bangladesh', 90, 30, 58),
('England', 112, 55, 52),
('India', 121, 74, 43),
('New_Zealand', 125, 61, 55),
('Pakistan', 148, 90, 54),
('South_Africa', 115, 68, 45),
('West_Indies', 113, 49, 57);

-- --------------------------------------------------------

--
-- Table structure for table `team_series`
--

CREATE TABLE `team_series` (
  `Name` varchar(20) NOT NULL,
  `match_played` int(3) DEFAULT 0,
  `match_won` int(3) DEFAULT 0,
  `match_lost` int(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_series`
--

INSERT INTO `team_series` (`Name`, `match_played`, `match_won`, `match_lost`) VALUES
('Australia', 0, 0, 0),
('Bangladesh', 0, 0, 0),
('England', 0, 0, 0),
('India', 0, 0, 0),
('New_Zealand', 0, 0, 0),
('Pakistan', 0, 0, 0),
('South_Africa', 0, 0, 0),
('West_Indies', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adname`);

--
-- Indexes for table `fteam`
--
ALTER TABLE `fteam`
  ADD PRIMARY KEY (`usr`,`match_no`),
  ADD KEY `match_no` (`match_no`),
  ADD KEY `pl1_id` (`pl1_id`,`pl1_team`),
  ADD KEY `pl2_id` (`pl2_id`,`pl2_team`),
  ADD KEY `pl3_id` (`pl3_id`,`pl3_team`),
  ADD KEY `pl4_id` (`pl4_id`,`pl4_team`),
  ADD KEY `pl5_id` (`pl5_id`,`pl5_team`),
  ADD KEY `pl6_id` (`pl6_id`,`pl6_team`),
  ADD KEY `pl7_id` (`pl7_id`,`pl7_team`),
  ADD KEY `pl8_id` (`pl8_id`,`pl8_team`),
  ADD KEY `pl9_id` (`pl9_id`,`pl9_team`),
  ADD KEY `capt_id` (`pl10_id`,`pl10_team`),
  ADD KEY `wcapt_id` (`pl11_id`,`pl11_team`);

--
-- Indexes for table `fuser`
--
ALTER TABLE `fuser`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`match_no`),
  ADD KEY `team1` (`team1`),
  ADD KEY `team2` (`team2`),
  ADD KEY `winner` (`winner`);

--
-- Indexes for table `player_series`
--
ALTER TABLE `player_series`
  ADD PRIMARY KEY (`ID`,`Team`);

--
-- Indexes for table `Team`
--
ALTER TABLE `Team`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `team_series`
--
ALTER TABLE `team_series`
  ADD PRIMARY KEY (`Name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fteam`
--
ALTER TABLE `fteam`
  ADD CONSTRAINT `fteam_ibfk_1` FOREIGN KEY (`usr`) REFERENCES `fuser` (`username`) ON DELETE CASCADE,
  ADD CONSTRAINT `fteam_ibfk_10` FOREIGN KEY (`pl8_id`,`pl8_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL,
  ADD CONSTRAINT `fteam_ibfk_11` FOREIGN KEY (`pl9_id`,`pl9_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL,
  ADD CONSTRAINT `fteam_ibfk_12` FOREIGN KEY (`pl10_id`,`pl10_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL,
  ADD CONSTRAINT `fteam_ibfk_13` FOREIGN KEY (`pl11_id`,`pl11_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL,
  ADD CONSTRAINT `fteam_ibfk_2` FOREIGN KEY (`match_no`) REFERENCES `matches` (`match_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `fteam_ibfk_3` FOREIGN KEY (`pl1_id`,`pl1_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL,
  ADD CONSTRAINT `fteam_ibfk_4` FOREIGN KEY (`pl2_id`,`pl2_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL,
  ADD CONSTRAINT `fteam_ibfk_5` FOREIGN KEY (`pl3_id`,`pl3_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL,
  ADD CONSTRAINT `fteam_ibfk_6` FOREIGN KEY (`pl4_id`,`pl4_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL,
  ADD CONSTRAINT `fteam_ibfk_7` FOREIGN KEY (`pl5_id`,`pl5_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL,
  ADD CONSTRAINT `fteam_ibfk_8` FOREIGN KEY (`pl6_id`,`pl6_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL,
  ADD CONSTRAINT `fteam_ibfk_9` FOREIGN KEY (`pl7_id`,`pl7_team`) REFERENCES `player_series` (`ID`, `Team`) ON DELETE SET NULL;

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`team1`) REFERENCES `team_series` (`Name`) ON DELETE SET NULL,
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`team2`) REFERENCES `team_series` (`Name`) ON DELETE SET NULL,
  ADD CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`winner`) REFERENCES `team_series` (`Name`) ON DELETE SET NULL;

--
-- Constraints for table `player_series`
--
ALTER TABLE `player_series`
  ADD CONSTRAINT `player_series_ibfk_1` FOREIGN KEY (`ID`,`Team`) REFERENCES `Player` (`ID`, `Team`) ON DELETE CASCADE;

--
-- Constraints for table `team_series`
--
ALTER TABLE `team_series`
  ADD CONSTRAINT `team_series_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `Team` (`Name`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
