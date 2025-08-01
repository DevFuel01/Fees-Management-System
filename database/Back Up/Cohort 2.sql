-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2025 at 02:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `description`, `level`, `total_amount`, `date_created`) VALUES
(1, 'Basic Computer Knowledge', 'Basic Computer Knowledge', 'Basic', 52000, '2025-02-17 11:17:03'),
(2, 'Cyber Security and Networking', 'Cyber Security and Networking', 'Standard', 52000, '2025-02-17 11:18:56'),
(3, 'Data Science and Cloud Computing', 'Data Science and Cloud Computing', 'Standard', 52000, '2025-02-17 11:23:25'),
(4, 'Graphic Design and UI/UX', 'Graphic Design and UI/UX', 'Standard', 52000, '2025-02-17 11:24:45'),
(5, 'Artifice Intelligent and Machine Learning', 'Artifice Intelligent and Machine Learning', 'Standard', 52000, '2025-02-17 11:26:16'),
(6, 'Internet of Things (IoT) and Robotics', 'Internet of Things (IoT) and Robotics', 'Standard', 52000, '2025-02-17 11:27:20'),
(7, 'Software and Web Development', 'Software and Web Development', 'Standard', 52000, '2025-02-17 11:29:11'),
(8, 'IT/SWIES', 'IT/SWIES', 'IT/SWIES', 30000, '2025-02-17 11:30:32'),
(9, 'Tech Eves Hub', 'Tech Eves Hub', 'Tech Eves Hub', 7000, '2025-02-26 11:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `course_id`, `description`, `amount`) VALUES
(1, 1, 'Form Fee', 2000),
(2, 1, 'Shirt Fee', 5000),
(3, 1, 'Fees', 45000),
(4, 2, 'Form Fee', 2000),
(5, 2, 'Shirt Fee', 5000),
(6, 2, 'Fees', 45000),
(7, 3, 'Form Fee', 2000),
(8, 3, 'Shirt Fee', 5000),
(9, 3, 'Fees', 45000),
(10, 4, 'Form Fee', 2000),
(11, 4, 'Shirt Fee', 5000),
(12, 4, 'Fees', 45000),
(13, 5, 'Form Fee', 2000),
(14, 5, 'Shirt Fee', 5000),
(15, 5, 'Fees', 45000),
(16, 6, 'Form Fee', 2000),
(17, 6, 'Shirt Fee', 5000),
(18, 6, 'Fees', 45000),
(19, 7, 'Form Fee', 2000),
(20, 7, 'Shirt Fee', 5000),
(21, 7, 'Fees', 45000),
(22, 8, 'IT/SWIES Fee', 25000),
(23, 8, 'Shirt Fee', 5000),
(24, 9, 'Tech Eves Hub', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(30) NOT NULL,
  `ef_id` int(30) NOT NULL,
  `amount` float NOT NULL,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `ef_id`, `amount`, `remarks`, `date_created`) VALUES
(1, 1, 42000, 'The sum of ten thousand naira to be paid by Mr. Haruna Muhammad Usman', '2025-02-17 11:46:06'),
(2, 2, 47000, 'Remain Five Thousand For Shirt.', '2025-02-26 11:30:07'),
(3, 4, 7000, 'Paid', '2025-02-26 12:14:20'),
(4, 5, 7000, 'Paid', '2025-02-26 12:15:31'),
(5, 8, 7000, 'Paid', '2025-02-26 12:16:51'),
(6, 9, 7000, 'Paid', '2025-02-26 12:17:19'),
(7, 10, 7000, 'Paid', '2025-02-26 12:17:56'),
(8, 12, 7000, 'Paid', '2025-02-26 12:22:56'),
(9, 14, 7000, 'Paid', '2025-02-26 12:23:51'),
(10, 15, 30000, 'Paid', '2025-02-28 12:33:44'),
(11, 16, 50000, 'Paid', '2025-02-28 12:41:12'),
(12, 17, 52000, 'Paid', '2025-02-28 12:46:06'),
(13, 18, 30000, 'Paid 35K, 5K For Shirt', '2025-02-28 13:12:45'),
(14, 19, 30000, 'Paid', '2025-02-28 13:24:54'),
(15, 20, 30000, 'Paid.', '2025-02-28 13:32:43'),
(16, 21, 20000, 'Remain Ten Thousand Naira Only', '2025-03-05 10:12:31'),
(17, 23, 30000, 'Paid', '2025-03-05 10:13:45'),
(18, 24, 30000, 'Paid', '2025-03-05 10:15:02'),
(19, 26, 20000, 'Remain Ten Thousand Naira Only', '2025-03-05 10:16:14'),
(20, 29, 20000, 'Remain Ten Thousand Naira Only', '2025-03-05 10:16:45'),
(21, 22, 30000, 'Paid', '2025-03-10 11:27:11'),
(22, 25, 30000, 'Paid', '2025-03-10 11:28:48'),
(23, 27, 15000, 'Remain 15,000 naira only', '2025-03-10 11:30:41'),
(24, 30, 20000, 'Remain ten thousand naira only', '2025-03-10 11:33:48'),
(25, 11, 7000, 'Paid', '2025-03-13 09:55:00'),
(26, 3, 5000, 'Remain two thousand naira only', '2025-03-13 09:58:55'),
(27, 21, 10000, 'Paid', '2025-03-17 11:29:24'),
(28, 30, 10000, 'Paid', '2025-03-29 10:38:01'),
(29, 32, 20000, 'Remain Ten Thousand Naira Only', '2025-03-29 10:44:10'),
(30, 33, 25000, 'Remain Five Thousand Naira Only', '2025-03-29 10:47:11'),
(31, 28, 30000, 'Paid', '2025-04-14 18:06:16'),
(32, 34, 20000, 'Remain Ten Thousand Naira Only.', '2025-04-14 18:10:33'),
(33, 26, 10000, 'Paid', '2025-04-30 09:02:52'),
(34, 33, 5000, 'Paid', '2025-05-12 13:14:49'),
(35, 3, 2000, 'Paid', '2025-05-12 13:15:47'),
(36, 32, 10000, 'Paid', '2025-05-12 13:32:31'),
(37, 35, 12000, 'Remain fourty Thousand.   ', '2025-06-10 15:18:37'),
(38, 35, 30000, 'remain 10K', '2025-06-10 15:22:23');

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
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `id_no`, `name`, `contact`, `address`, `email`, `date_created`) VALUES
(1, '001', 'Buhari Muhammad', '09065515621', 'Rikkos', 'buharisudais165@gmail.com', '2025-02-17 11:32:29'),
(2, '002', 'DAUDA YUNANA YAKUBU', '09076226556', 'Farin Gada, Jos', 'kinanjonah@gmail.com', '2025-02-26 11:25:36'),
(3, '003', 'Yakub Nusaiba Muhammad', '08105257672', 'C/73 Alhaji Ango Street, Nassarawa Gwong, Jos', 'yakubnusaiba5@gmail.com', '2025-02-26 11:44:53'),
(4, '004', 'Khadija Idris lawan', '09017071742', 'Nasarawa gwong Nepa road Nof52', 'khadijaidris770@gmail.com', '2025-02-26 11:47:12'),
(5, '005', 'Shuaibu Habeeba Dajot ', '09034670525', 'B10 Nasarawa Gwong Jos ', 'Beebadajot@gmail.com', '2025-02-26 11:50:16'),
(6, '006', 'Amina Musa Andimi', '07041140476', '133/8 Tsoho Salihu Street Jos', 'Meenatandimi@gmail.com', '2025-02-26 11:52:35'),
(7, '007', 'Muhammad Rukaiyya Saleh', '09039674682', 'Ring Road', 'goldenrukky8@gmail.com', '2025-02-26 11:54:06'),
(8, '008', 'Azi Favour Kushim', '07066710288', 'Tina Junction, Plateau State', 'Favourazi30@gmail.com', '2025-02-26 11:55:26'),
(9, '009', 'Aisha Muhammad Hassan', '09064540463', 'Tudun Wada, Jos North, Plateau State.', 'aishamuhammadhassan26@gmail.com', '2025-02-26 11:56:42'),
(10, '010', 'Umar khadija Saad', '08161681678', 'Nò 1 Sarkin Arab street', 'khadijasaadd2@gmail.com', '2025-02-26 12:01:58'),
(11, '011', 'Habibatullah Yahaya Isah', '08066698277', '24B Dogon Dutse', 'hyahayaisah@gmail.com', '2025-02-26 12:03:05'),
(12, '012', 'Zainab Shuaibu saad ', '07061341203', 'Jos', 'zsaad9091@gmail.com', '2025-02-26 12:04:38'),
(13, '013', 'Bashir Hidayat Muhammad', '07012687717', '46/5A Ajayi Street', 'hidayatjamb2020@gmail.com', '2025-02-26 12:06:42'),
(14, '014', 'Nanlop Raymond Jacob', '08061984801', 'New Layout, Barkin Ladi Plateau State', 'jacobnanlop@gmail.com', '2025-02-26 12:07:40'),
(15, '015', 'Sadiq Abubakar Lalo', '09038827169', 'Filin Sukuwa', 'sadiqal2019@gmail.com', '2025-02-28 12:25:46'),
(16, '016', 'Auwal Alhassan', '', '', '', '2025-02-28 12:37:20'),
(17, '017', 'Buhari Tildi', '', '', '', '2025-02-28 12:37:57'),
(18, '018', 'Kanglong Rachael Rangmuk', '09032540564', 'Jos', 'kanglongrachael942@gmail.com', '2025-02-28 13:08:26'),
(19, '019', 'Muhammad Adam Ismail', '08137796888', 'T48 Katako Bridge, Jos.', 'muhammadadam6850@gmail.com', '2025-02-28 13:24:09'),
(20, '020', 'Umaima Aliyu Khalid', '09068974741', 'Dogon Dustin', 'khalidumaimah3@gmail.com', '2025-02-28 13:31:37'),
(21, '021', 'Salisu Salisu Ayuba', '07038502048', 'Rikkos', 'salisu.ayuba80@gmail.com', '2025-03-05 09:57:51'),
(22, '022', 'Muhammad Habiba', '08130220164', '87/10 Dan Karfalla Street', 'Auwalhabiba7@gmail.com', '2025-03-05 09:58:45'),
(23, '023', 'Bala Halima Paki', '09037911093', 'Filin Sukuwa', 'halimapaki014@gmail.com', '2025-03-05 09:59:30'),
(24, '024', 'Idris Rabiatu Haruna', '09068516881', '8/28 Duwala Street', 'harunarabiatu13@gmail.com', '2025-03-05 10:00:57'),
(25, '025', 'Saeed Aisha', '08142466820', '117 Dan Karfalla Street', 'aishaseead6820@gmail.com', '2025-03-05 10:01:49'),
(26, '026', 'Muhammad Auwal Nasir', '08104373590', 'UJ', '', '2025-03-05 10:02:34'),
(27, '027', 'Ishak Zakari Zakari', '09036768045', 'M40 Ali Kazuare', 'zakariishak2000@gmail.com', '2025-03-05 10:03:28'),
(28, '028', 'Ibrahim Rukaiya Uwais', '08142423588', 'Line Toraku', 'Ibrahimrukaiyauwais@gmail.com', '2025-03-05 10:04:20'),
(29, '029', 'Fauziyyah Muhammad', '08119181507', 'Sabin Layi Behind New Stadium', 'babagidafauzeeya@gmail.com', '2025-03-05 10:04:52'),
(30, '030', 'Abubakar Ghali Jibo', '07017034136', 'Angowar Rogo', 'abubakarghali123@gmail.com', '2025-03-10 11:32:27'),
(31, '031', 'Mujanah Adam Usman', '07084603606', 'No 24 Rikkos', 'mujanahadam@gmail.com', '2025-03-17 11:16:28'),
(32, '032', 'Emmanuel Stephen', '', '', '', '2025-03-29 10:40:54'),
(33, '033', 'Gabriel Laya Simon', '', '', '', '2025-03-29 10:45:11'),
(34, '034', 'Alqasim Ishaq Sadis', '', '', '', '2025-04-14 18:08:06'),
(35, '035', 'Idris Ibrahim', '07062616249', 'Dilimi', 'ibrahimi107809@gmail.com', '2025-06-10 15:11:36');

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
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_ef_list`
--

INSERT INTO `student_ef_list` (`id`, `student_id`, `ef_no`, `course_id`, `total_fee`, `date_created`) VALUES
(1, 1, '001', 1, 52000, '2025-02-17 11:43:54'),
(2, 2, '002', 2, 52000, '2025-02-26 11:27:58'),
(3, 3, '003', 9, 7000, '2025-02-26 12:09:02'),
(4, 4, '004', 9, 7000, '2025-02-26 12:09:26'),
(5, 5, '005', 9, 7000, '2025-02-26 12:09:40'),
(6, 6, '006', 9, 7000, '2025-02-26 12:09:53'),
(7, 7, '007', 9, 7000, '2025-02-26 12:10:08'),
(8, 8, '008', 9, 7000, '2025-02-26 12:10:25'),
(9, 9, '009', 9, 7000, '2025-02-26 12:10:41'),
(10, 10, '010', 9, 7000, '2025-02-26 12:11:00'),
(11, 11, '011', 9, 7000, '2025-02-26 12:11:17'),
(12, 12, '012', 9, 7000, '2025-02-26 12:11:31'),
(13, 13, '013', 9, 7000, '2025-02-26 12:11:46'),
(14, 14, '014', 9, 7000, '2025-02-26 12:12:04'),
(15, 15, '015', 8, 30000, '2025-02-28 12:26:38'),
(16, 17, '017', 7, 52000, '2025-02-28 12:39:04'),
(17, 16, '016', 3, 52000, '2025-02-28 12:39:34'),
(18, 18, '018', 8, 30000, '2025-02-28 13:09:35'),
(19, 19, '019', 8, 30000, '2025-02-28 13:24:28'),
(20, 20, '020', 8, 30000, '2025-02-28 13:32:03'),
(21, 21, '021', 8, 30000, '2025-03-05 10:06:44'),
(22, 22, '022', 8, 30000, '2025-03-05 10:06:58'),
(23, 23, '023', 8, 30000, '2025-03-05 10:07:14'),
(24, 24, '024', 8, 30000, '2025-03-05 10:07:41'),
(25, 25, '025', 8, 30000, '2025-03-05 10:07:57'),
(26, 26, '026', 8, 30000, '2025-03-05 10:08:12'),
(27, 27, '027', 8, 30000, '2025-03-05 10:08:28'),
(28, 28, '028', 8, 30000, '2025-03-05 10:08:45'),
(29, 29, '029', 8, 30000, '2025-03-05 10:09:08'),
(30, 30, '030', 8, 30000, '2025-03-10 11:32:47'),
(31, 31, '031', 9, 7000, '2025-03-17 11:17:17'),
(32, 32, '032', 8, 30000, '2025-03-29 10:41:32'),
(33, 33, '033', 8, 30000, '2025-03-29 10:46:26'),
(34, 34, '034', 8, 30000, '2025-04-14 18:08:42'),
(35, 35, '035', 7, 52000, '2025-06-10 15:14:58');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Idris Ibrahim', 'Daddy', '21232f297a57a5a743894a0e4a801fc3', 1);

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `student_ef_list`
--
ALTER TABLE `student_ef_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
