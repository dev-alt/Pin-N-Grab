-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Sep 13, 2023 at 07:08 AM
-- Server version: 8.1.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Information Technology', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(2, 'Healthcare', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(3, 'Finance', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(4, 'Engineering', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(5, 'Marketing', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(6, 'Education', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(7, 'Sales', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(8, 'Customer Service', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(9, 'Human Resources', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(10, 'Design', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(11, 'Manufacturing', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(12, 'Legal', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(13, 'Hospitality', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(14, 'Retail', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(15, 'Construction', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(16, 'Transportation', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(17, 'Science', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(18, 'Arts and Entertainment', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(19, 'Non-Profit', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(20, 'Agriculture', '2023-09-13 07:07:13', '2023-09-13 07:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `Jobs`
--

CREATE TABLE `Jobs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `deadline` date NOT NULL,
  `paymentType` varchar(255) NOT NULL,
  `skillLevel` varchar(255) NOT NULL,
  `experienceRequired` varchar(255) NOT NULL,
  `jobStatus` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Jobs`
--

INSERT INTO `Jobs` (`id`, `title`, `description`, `location`, `deadline`, `paymentType`, `skillLevel`, `experienceRequired`, `jobStatus`, `createdAt`, `updatedAt`, `user_id`, `category_id`) VALUES
(5, 'Software Engineer', 'Join our team as a software engineer...', 'New York', '2023-10-01', 'Salary', 'Senior', '5+ years', 'Open', '2023-09-13 07:07:58', '2023-09-13 07:07:58', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `UserProfiles`
--

CREATE TABLE `UserProfiles` (
  `id` int NOT NULL,
  `bio` text,
  `dateOfBirth` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `interests` varchar(255) DEFAULT NULL,
  `socialMediaLinks` json DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profilePicture` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `contactEmail` varchar(255) DEFAULT NULL,
  `contactPhone` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `UserProfiles`
--

INSERT INTO `UserProfiles` (`id`, `bio`, `dateOfBirth`, `gender`, `interests`, `socialMediaLinks`, `address`, `profilePicture`, `website`, `contactEmail`, `contactPhone`, `createdAt`, `updatedAt`, `UserId`) VALUES
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-08 07:36:26', '2023-09-08 07:36:26', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `username`, `email`, `password`, `firstName`, `lastName`, `createdAt`, `updatedAt`) VALUES
(3, 'test', 'test@email.com', '$2b$10$0goiLMDfb1KveTL3sxEKUe9LuBGSJy6WdWO51KzVoRxeyPeaNO/Em', 'test', 'user', '2023-09-08 07:36:26', '2023-09-08 07:36:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Jobs`
--
ALTER TABLE `Jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `UserProfiles`
--
ALTER TABLE `UserProfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD UNIQUE KEY `email_4` (`email`),
  ADD UNIQUE KEY `email_5` (`email`),
  ADD UNIQUE KEY `email_6` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Jobs`
--
ALTER TABLE `Jobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `UserProfiles`
--
ALTER TABLE `UserProfiles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Jobs`
--
ALTER TABLE `Jobs`
  ADD CONSTRAINT `Jobs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Jobs_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `UserProfiles`
--
ALTER TABLE `UserProfiles`
  ADD CONSTRAINT `UserProfiles_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
