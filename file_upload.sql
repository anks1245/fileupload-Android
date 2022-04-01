-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2022 at 05:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file_upload`
--

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(111) NOT NULL,
  `file` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `file`, `name`, `description`, `uploaded_at`) VALUES
(7, 'IMG_20211107_161305.jpg', 'Ankit', 'File Uploaded from the app using retrofit', '2021-11-12 02:35:08'),
(8, 'National Education Day of India is celebrated on 11 November every year. to commemorate the birth anniversary of Maulana Abul Kalam Azad, the first education minister of independent India, who served ', 'Ankit', 'test1', '2021-11-14 01:21:08'),
(9, 'IMG_20211107_161305.jpg', 'Ankit', 'Ram', '2021-11-14 01:26:08'),
(10, 'IMG_20211107_161305.jpg', 'Ankit', 'Ram', '2021-11-14 01:26:12'),
(11, 'IMG_20211107_161305.jpg', 'Ankit', 'Ram', '2021-11-14 01:26:16'),
(12, 'IMG_20211107_161305.jpg', 'Ankit', 'Nag', '2021-11-14 01:27:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
