-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 11:26 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clickfees_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `level` varchar(150) NOT NULL,
  `total_amount` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `description`, `level`, `total_amount`, `date_created`) VALUES
(1, 'Basic Computer Knowledge', 'Basic', 'Basic', 37000, '2024-10-16 18:14:09'),
(2, 'Blockchain And Forex', 'Standard', 'Standard', 52000, '2024-10-16 18:17:30'),
(3, 'Software And Web Development', 'Standard', 'Standard', 52000, '2024-10-19 12:04:18'),
(4, 'IT', 'SWIES', 'IT', 35000, '2024-11-15 17:59:58'),
(5, 'SWIES', 'SWIES', 'SWIES', 20000, '2024-11-15 21:32:05');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `course_id`, `description`, `amount`) VALUES
(1, 1, 'Form Fees', 2000),
(2, 1, 'Shirt Fees', 5000),
(3, 1, 'Basic Fees', 30000),
(4, 2, 'Form Fees ', 2000),
(5, 2, 'Standard Fees', 45000),
(6, 2, 'Shirt Fees', 5000),
(7, 3, 'Fees', 45000),
(8, 3, 'Shirt Fee', 5000),
(9, 3, 'Form Fee', 2000),
(10, 4, 'Shirt Fee', 5000),
(11, 4, 'IT Fee', 30000),
(12, 5, 'IT Fee', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(30) NOT NULL,
  `ef_id` int(30) NOT NULL,
  `amount` float NOT NULL,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `ef_id`, `amount`, `remarks`, `date_created`) VALUES
(1, 1, 2000, 'Form Fees', '2024-10-16 18:19:45'),
(2, 4, 2000, 'Form Fees', '2024-10-16 18:58:12'),
(3, 6, 2000, 'Form Fees', '2024-10-16 19:02:53'),
(4, 8, 2000, 'Form Fees', '2024-10-16 19:03:25'),
(5, 2, 2000, 'Form Fees', '2024-10-16 19:04:13'),
(6, 3, 2000, 'Form Fees', '2024-10-16 19:04:55'),
(7, 5, 2000, 'Form Fees', '2024-10-16 19:05:41'),
(8, 7, 2000, 'Form Fees', '2024-10-16 19:06:26'),
(9, 9, 2000, 'Form Fees', '2024-10-16 19:07:01'),
(10, 10, 2000, 'Form Fees', '2024-10-16 19:07:24'),
(11, 2, 25000, 'Fees payment. Remain 5,000', '2024-10-17 14:38:18'),
(12, 5, 30000, 'Fees Part Payment.', '2024-10-19 11:31:07'),
(13, 1, 20000, 'Fees Part Payment', '2024-10-19 11:36:45'),
(14, 9, 30000, 'Fees Payment.', '2024-10-19 11:45:07'),
(15, 10, 25000, 'Fees Part Payment', '2024-10-19 11:57:51'),
(16, 11, 25000, 'Fees Part Payment', '2024-10-19 12:11:07'),
(17, 12, 35000, 'Shirt and IT Payment', '2024-11-15 18:14:46'),
(18, 13, 14500, 'Paid 14,500 Remain 5,500', '2024-11-15 21:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `id_no`, `name`, `contact`, `address`, `email`, `date_created`) VALUES
(1, '001', 'Ahmad Abdulmutallib Abubakar', '08147713290', '   ', 'ibnlalo9@gmail.com', '2024-10-16 17:59:21'),
(2, '002', 'HAJARA AHMAD SALIHU', '07065499581', 'Bauchi Road', 'auwallawal85@gmail.com', '2024-10-16 18:01:42'),
(3, '003', 'Hussaini Aliyu Yaqub', '07068211736', '   ', 'hussainialiyuyaqub@gmail.com', '2024-10-16 18:02:21'),
(4, '004', 'Abdul Rahman Abdullahi Salihu', '08169117729', '    ', 'abdulrahmanabdullahisalihu@gmai.com', '2024-10-16 18:03:15'),
(5, '005', 'MUHAMMED MUJAHID LAWAL', '08132848662', '   ', 'mujahidmuhammed505@gmail.com', '2024-10-16 18:04:05'),
(6, '006', 'Abdulrahman Abdullahi Sarki', '08169923706', '   ', 'abdulrahmanabdullahisarki@gmail.com', '2024-10-16 18:04:58'),
(7, '007', 'Najibu Aminu', '07045777688', '   ', 'najibuaminu5@gmail.com', '2024-10-16 18:06:03'),
(8, '008', 'Ahmad Tijjani', '08067118962', '', 'tijjanijrahmad@gmail.com', '2024-10-16 18:07:32'),
(9, '009', 'UMAR ABUBAKAR SUNUSI', '08133003428', '', 'umarsunusiabubakar88@gmail.com', '2024-10-16 18:08:03'),
(10, '010', 'Usman Umar Garba', '07063218500', '   ', 'usman@gmail.com', '2024-10-16 18:34:13'),
(11, '011', 'Ibrahim Umar Aliyu', '08101455448', '101 Behind Saminary Katako Bridge Jos, Plateau Sate Nigeria.', 'inyassumar9@gmail.com', '2024-10-19 12:07:34'),
(12, '012', 'Aisha Muawiya', ' ', ' ', '', '2024-11-15 17:57:40'),
(13, '013', 'Hafsa Adam', ' ', ' ', '', '2024-11-15 18:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `student_ef_list`
--

CREATE TABLE `student_ef_list` (
  `id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `ef_no` varchar(200) NOT NULL,
  `course_id` int(30) NOT NULL,
  `total_fee` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_ef_list`
--

INSERT INTO `student_ef_list` (`id`, `student_id`, `ef_no`, `course_id`, `total_fee`, `date_created`) VALUES
(1, 1, '001', 2, 52000, '2024-10-16 18:18:34'),
(2, 2, '002', 1, 37000, '2024-10-16 18:43:49'),
(3, 3, '003', 1, 37000, '2024-10-16 18:44:40'),
(4, 4, '004', 1, 37000, '2024-10-16 18:45:37'),
(5, 5, '005', 2, 52000, '2024-10-16 18:46:07'),
(6, 6, '006', 2, 52000, '2024-10-16 18:47:32'),
(7, 7, '007', 2, 52000, '2024-10-16 18:48:19'),
(8, 8, '008', 2, 52000, '2024-10-16 18:48:46'),
(9, 9, '009', 1, 37000, '2024-10-16 18:49:27'),
(10, 10, '010', 2, 52000, '2024-10-16 18:49:42'),
(11, 11, '011', 3, 52000, '2024-10-19 12:10:06'),
(12, 12, '012', 4, 35000, '2024-11-15 18:11:39'),
(13, 13, '013', 5, 20000, '2024-11-15 21:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '3' COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(2, 'Idris Ibrahim', 'Daddy', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_ef_list`
--
ALTER TABLE `student_ef_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_ef_list`
--
ALTER TABLE `student_ef_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
