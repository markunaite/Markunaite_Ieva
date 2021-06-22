-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 01:01 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kursai`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf16_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `course_id`, `comment`) VALUES
(1, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.'),
(2, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.'),
(3, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.'),
(4, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.'),
(5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.'),
(6, 2, ' Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(7, 1, ' Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(8, 2, 'Hello Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf16_lithuanian_ci NOT NULL,
  `surname` varchar(255) COLLATE utf16_lithuanian_ci NOT NULL,
  `course_name` varchar(255) COLLATE utf16_lithuanian_ci NOT NULL,
  `short_description` varchar(200) COLLATE utf16_lithuanian_ci NOT NULL,
  `long_description` text COLLATE utf16_lithuanian_ci NOT NULL,
  `image` varchar(255) COLLATE utf16_lithuanian_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `surname`, `course_name`, `short_description`, `long_description`, `image`, `price`, `created`) VALUES
(1, 'Petras', 'Petraitis', 'PHP Pagrindai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tri', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.', 'img/php.jpg', 300, '2021-06-22 09:39:46'),
(2, 'Jonas', 'Jonaitis', 'HTML/CSS Ivadas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tri', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.', 'img/css.jpg', 200, '2021-06-22 09:42:00'),
(3, 'Ona', 'Onaityte', 'Pazintis su GIT', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tri', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.', 'img/git.jpg', 200, '2021-06-22 09:42:00'),
(4, 'Mantas', 'Petrosius', 'JavaScript Žaliems', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.', 'img/js.jpg', 400, '2021-06-22 09:44:14'),
(5, 'Laima', 'Laimute', 'JAVA Pagrindai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet felis nulla. In sapien dolor, luctus at orci eget, tempor consequat neque. Nulla felis magna, porttitor sed tincidunt dapibus, tristique at sem.', 'img/css.jpg', 400, '2021-06-22 09:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) COLLATE utf16_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `course_id`, `date`, `email`) VALUES
(1, 1, '2021-06-22 09:46:32', 'laima@laima.lt'),
(2, 2, '2021-06-22 09:46:32', 'mantas@mantas.lt'),
(3, 3, '2021-06-22 09:46:32', 'lukas@lukas.lt'),
(4, 4, '2021-06-22 09:46:32', 'ema@ema.lt'),
(5, 5, '2021-06-22 09:46:32', 'lora@lora.lt');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `course_id`, `rating`) VALUES
(1, 2, 4),
(2, 5, 3),
(3, 4, 5),
(4, 3, 5),
(5, 1, 4),
(6, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_COURSE_COMMENTS` (`course_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_COURSE` (`course_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_COURCE_RATING` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_COURSE_COMMENTS` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `FK_COURSE` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_COURCE_RATING` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
