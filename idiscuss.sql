-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220713.615782a727
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 01:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Paython', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Its language constructs and object-oriented approach aim to help programmers write clear, logical code', '2022-06-20 21:58:01'),
(2, 'Javascript', 'JavaScript is the world\'s most popular programming language. JavaScript is the programming language of the Web. JavaScript is easy to learn. \r\n', '2022-06-20 22:00:12'),
(3, 'Django', 'The Django web framework is a free, open source framework that can speed up development of a web application being built in the Python programming language.', '2022-06-21 13:46:41'),
(4, 'Flask', 'Flask is a web framework, it’s a Python module that lets you develop web applications easily. It’s has a small and easy-to-extend core: it’s a microframework that doesn’t include an ORM (Object Relational Manager) or such features.', '2022-06-21 13:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'this is a comment', 1, 0, '2022-06-22 17:28:28'),
(2, 'next comment', 1, 0, '2022-06-22 17:37:16'),
(3, 'somebody please fix this', 1, 0, '2022-06-22 17:51:46'),
(4, 'somebody please fix this', 1, 0, '2022-06-22 17:56:47'),
(5, '\r\nThis is a peer to peer forum. No Spam / Advertising / Self-promote in the forums is not allowed. Do not post copyright-infringing material. Do not post “offensive” posts, links or images. Do not cross post questions. Remain respectful of other members at all times', 3, 0, '2022-06-22 18:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(7) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'uable to install pyaudio', 'i am not able to install pyaudio on window\r\n', 1, 0, '2022-06-22 12:33:18'),
(2, 'Not able to use python', 'please help me', 1, 0, '2022-06-22 16:48:14'),
(3, 'Fetch Api is not working', 'please help to fix it', 2, 0, '2022-06-22 18:00:40'),
(4, 'problem about flask', 'we can not found a installation flask please help ', 4, 0, '2022-06-24 13:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `datetime`) VALUES
(1, 'this@.com', '123', '2022-06-25 17:15:47'),
(2, '', '$2y$10$EMoFV6u9R9IrtQkGXO076eD9EkpsxiT51v/EtY48pnNkVX5K21Sdu', '2022-06-25 17:39:36'),
(3, 'nirav@123.com', '$2y$10$KSxkxlGeyq.Y/4xd3QbqluVl.84SdvFQnpADSeGY5ejTqcmINOCpm', '2022-06-25 17:41:52'),
(4, 'niravs@1234', '$2y$10$Eu.lTfD.Bk1HUnpDoJjg9.jRZZxrHCnl/HKHkMTFOJchRWzOgvVIS', '2022-06-25 17:52:25'),
(5, 'bhargav@gmail.com', '$2y$10$sw4AHJ95O5uqDi4uiSAcyOUiiLoESC7MH1PTPExno2p/ssM1JwfVa', '2022-06-26 10:44:51'),
(6, 'syam@g.123', '$2y$10$JctQ5JzrELQRAE9SJBw/duLLQ49sO73Fu228torpOuTfby0L.Z1Wm', '2022-06-26 11:25:48'),
(7, 'ni@1.com', '$2y$10$LgXQrSoWpvncfUDh64wQPuT8ckHwGalI4R8hdIb0zkORqIWE8xfii', '2022-07-08 11:22:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
