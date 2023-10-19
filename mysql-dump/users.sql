-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Oct 19, 2023 at 10:01 PM
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
-- Table structure for table `Applications`
--

CREATE TABLE `Applications` (
  `id` int NOT NULL,
  `applicationText` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  `job_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Applications`
--

INSERT INTO `Applications` (`id`, `applicationText`, `createdAt`, `updatedAt`, `user_id`, `job_id`) VALUES
(1, 'Applied', '2023-10-17 05:20:32', '2023-10-17 05:21:38', 34, 12),
(2, 'Applied', '2023-10-17 05:27:24', '2023-10-17 05:27:40', 37, 12);

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
(1, 'Electrical Services', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(2, 'Moving Services', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(3, 'Gardening Services', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(4, 'Painting Services', '2023-09-13 07:07:13', '2023-09-13 07:07:13'),
(5, 'Home Repair Services', '2023-09-13 07:07:13', '2023-09-13 07:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `Jobs`
--

CREATE TABLE `Jobs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `details` text NOT NULL,
  `deadline` date NOT NULL,
  `paymentAmount` decimal(10,2) NOT NULL,
  `jobStatus` enum('Open','Completed','Closed','Deleted') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `selected_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Jobs`
--

INSERT INTO `Jobs` (`id`, `title`, `description`, `details`, `deadline`, `paymentAmount`, `jobStatus`, `createdAt`, `updatedAt`, `user_id`, `category_id`, `location_id`, `selected_user`) VALUES
(12, 'Electrical Services Technician', 'We are looking for an Electrical Services Technician...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 1355.09, 'Open', '2023-09-12 23:34:07', '2023-10-12 23:34:07', 20, 1, 81, NULL),
(13, 'Electrician', 'We are hiring experienced electricians for various projects...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 1752.46, 'Deleted', '2023-10-12 23:35:34', '2023-10-12 23:35:34', 35, 1, 29, NULL),
(14, 'Journeyman Electrician', 'Join our team as a journeyman electrician with opportunities to advance...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 702.04, 'Closed', '2023-10-12 23:35:37', '2023-10-12 23:35:37', 32, 1, 14, NULL),
(15, 'Electrical Engineer', 'Looking for an electrical engineer to lead our projects...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 242.82, 'Open', '2023-10-12 23:35:40', '2023-10-12 23:35:40', 32, 1, 70, NULL),
(16, 'Electrical Technician', 'Join our team as an electrical technician and work on exciting projects...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 1097.98, 'Open', '2023-10-12 23:35:43', '2023-10-12 23:35:43', 37, 1, 28, NULL),
(17, 'Electrical Project Manager', 'We\'re seeking an experienced project manager to oversee electrical projects...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 766.46, 'Open', '2023-10-12 23:35:46', '2023-10-12 23:35:46', 32, 1, 17, NULL),
(18, 'Moving Services Coordinator', 'We are looking for a coordinator to manage moving services...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 533.33, 'Open', '2023-10-12 23:36:22', '2023-10-12 23:36:22', 40, 2, 82, NULL),
(19, 'Professional Mover', 'Join our team as a professional mover and help clients with their moves...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 362.29, 'Open', '2023-10-12 23:36:25', '2023-10-12 23:36:25', 29, 2, 84, NULL),
(20, 'Moving Services Supervisor', 'We\'re seeking a supervisor to lead our moving services team...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 206.47, 'Open', '2023-10-12 23:36:28', '2023-10-12 23:36:28', 36, 2, 79, NULL),
(21, 'Long-Distance Driver', 'Become a long-distance driver and help transport goods across the country...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 1935.46, 'Open', '2023-10-12 23:36:31', '2023-10-12 23:36:31', 35, 2, 45, NULL),
(22, 'Moving Services Assistant', 'Join our team as an assistant to support moving services operations...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 1072.88, 'Open', '2023-10-12 23:36:34', '2023-10-12 23:36:34', 26, 2, 70, NULL),
(23, 'Home Repair Specialist', 'We are seeking a skilled Home Repair Specialist...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 1548.01, 'Open', '2023-10-12 23:41:28', '2023-10-12 23:41:28', 34, 5, 30, NULL),
(24, 'Home Improvement Technician', 'Join our team as a Home Improvement Technician...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 526.44, 'Open', '2023-10-12 23:41:32', '2023-10-12 23:41:32', 34, 5, 24, NULL),
(25, 'Property Maintenance Expert', 'Looking for a Property Maintenance Expert to join our team...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 1973.16, 'Open', '2023-10-12 23:41:34', '2023-10-12 23:41:34', 26, 5, 24, NULL),
(26, 'Handyman Services Provider', 'We are in need of a Handyman Services Provider...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 301.48, 'Open', '2023-10-12 23:41:37', '2023-10-12 23:41:37', 36, 5, 41, NULL),
(27, 'Home Repair Technician', 'Join our team as a Home Repair Technician...', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-31', 1567.90, 'Open', '2023-10-12 23:41:42', '2023-10-12 23:41:42', 29, 5, 37, NULL),
(28, 'Interior Painter', 'Looking for an experienced Interior Painter to work on residential projects.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-15', 945.08, 'Open', '2023-10-13 00:39:08', '2023-10-13 00:39:08', 30, 4, 57, NULL),
(29, 'Exterior House Painter', 'Experienced Exterior House Painter needed for painting exterior walls and surfaces.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-20', 16.70, 'Open', '2023-10-13 00:39:12', '2023-10-13 00:39:12', 38, 4, 76, NULL),
(30, 'Commercial Building Painter', 'Seeking a Commercial Building Painter for painting office and commercial spaces.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-18', 1233.26, 'Open', '2023-10-13 00:39:15', '2023-10-13 00:39:15', 26, 4, 22, NULL),
(31, 'Artistic Mural Painter', 'Talented Artistic Mural Painter required for creating stunning mural art pieces.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-22', 126.20, 'Open', '2023-10-13 00:39:18', '2023-10-13 00:39:18', 41, 4, 54, NULL),
(32, 'Painting Project Manager', 'Experienced Painting Project Manager needed to oversee painting projects.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-25', 916.21, 'Open', '2023-10-13 00:39:24', '2023-10-13 00:39:24', 37, 4, 19, NULL),
(33, 'Landscaping Specialist', 'Hiring a skilled Landscaping Specialist to design and maintain beautiful gardens.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-15', 207.45, 'Open', '2023-10-13 00:40:25', '2023-10-13 00:40:25', 35, 3, 17, NULL),
(34, 'Tree Trimming Technician', 'Experienced Tree Trimming Technician needed for pruning and maintaining trees.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-20', 278.63, 'Open', '2023-10-13 00:40:29', '2023-10-13 00:40:29', 39, 3, 20, NULL),
(35, 'Floral Garden Caretaker', 'Seeking a Floral Garden Caretaker to maintain a variety of flower gardens.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-18', 765.80, 'Open', '2023-10-13 00:40:32', '2023-10-13 00:40:32', 31, 3, 44, NULL),
(36, 'Horticulture Expert', 'Talented Horticulture Expert required for managing plant collections in a public garden.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-22', 993.09, 'Open', '2023-10-13 00:40:36', '2023-10-13 00:40:36', 30, 3, 62, NULL),
(37, 'Landscape Architect', 'Experienced Landscape Architect needed to design and plan outdoor spaces.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-25', 668.05, 'Open', '2023-10-13 00:40:39', '2023-10-13 00:40:39', 32, 3, 81, NULL),
(41, 'Landscape Architect', 'Experienced Landscape Architect needed to design and plan outdoor spaces.', 'This is a fake job detail description. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus massa ac tincidunt. In hac habitasse platea dictumst. Fusce scelerisque lorem ut purus rhoncus, id varius libero congue. Sed nec urna vel purus sagittis bibendum. Quisque sollicitudin risus id facilisis. Vestibulum a quam a ligula tincidunt dictum. Integer vitae mi auctor, bibendum eros vel, egestas arcu. Sed euismod, metus vel posuere venenatis, augue dui facilisis eros, in gravida elit dui sit amet nunc. Nam in odio augue. Sed volutpat, nulla quis viverra hendrerit, elit libero posuere nunc, eu tristique urna risus nec sapien. Nunc eu diam quis lorem volutpat pellentesque. Donec ac nunc purus. Nulla facilisi. Sed a metus turpis. Donec in ligula vitae urna tincidunt egestas. Suspendisse tincidunt at urna vel dapibus.', '2023-12-25', 356.00, 'Open', '2023-10-14 02:04:14', '2023-10-14 02:04:14', 31, 3, 23, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Locations`
--

CREATE TABLE `Locations` (
  `id` int NOT NULL,
  `regionName` varchar(255) NOT NULL,
  `cityName` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Locations`
--

INSERT INTO `Locations` (`id`, `regionName`, `cityName`, `createdAt`, `updatedAt`) VALUES
(7, 'Northland', 'Whangarei', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(8, 'Northland', 'Kaitaia', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(9, 'Northland', 'Dargaville', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(10, 'Northland', 'Kerikeri', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(11, 'Northland', 'Kaikohe', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(12, 'Northland', 'Warkworth', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(13, 'Auckland', 'Auckland', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(14, 'Auckland', 'Manukau', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(15, 'Auckland', 'Waitakere', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(16, 'Auckland', 'North Shore', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(17, 'Auckland', 'Papakura', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(18, 'Auckland', 'Franklin', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(19, 'Waikato', 'Hamilton', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(20, 'Waikato', 'Cambridge', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(21, 'Waikato', 'Te Awamutu', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(22, 'Waikato', 'Huntly', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(23, 'Waikato', 'Taupo', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(24, 'Waikato', 'Thames', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(25, 'Bay of Plenty', 'Tauranga', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(26, 'Bay of Plenty', 'Rotorua', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(27, 'Bay of Plenty', 'Whakatane', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(28, 'Bay of Plenty', 'Opotiki', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(29, 'Bay of Plenty', 'Katikati', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(30, 'Bay of Plenty', 'Te Puke', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(31, 'Gisborne', 'Gisborne', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(32, 'Gisborne', 'Tolaga Bay', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(33, 'Gisborne', 'Makaraka', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(34, 'Gisborne', 'Patutahi', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(35, 'Gisborne', 'Manutuke', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(36, 'Gisborne', 'Ormond', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(37, 'Hawke\'s Bay', 'Napier', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(38, 'Hawke\'s Bay', 'Hastings', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(39, 'Hawke\'s Bay', 'Havelock North', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(40, 'Hawke\'s Bay', 'Waipawa', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(41, 'Hawke\'s Bay', 'Waipukurau', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(42, 'Hawke\'s Bay', 'Wairoa', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(43, 'Taranaki', 'New Plymouth', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(44, 'Taranaki', 'Hawera', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(45, 'Taranaki', 'Stratford', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(46, 'Taranaki', 'Inglewood', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(47, 'Taranaki', 'Eltham', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(48, 'Taranaki', 'Waitara', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(49, 'Manawatu-Wanganui', 'Palmerston North', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(50, 'Manawatu-Wanganui', 'Whanganui', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(51, 'Manawatu-Wanganui', 'Levin', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(52, 'Manawatu-Wanganui', 'Feilding', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(53, 'Manawatu-Wanganui', 'Marton', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(54, 'Manawatu-Wanganui', 'Foxton', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(55, 'Wellington', 'Wellington', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(56, 'Wellington', 'Lower Hutt', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(57, 'Wellington', 'Upper Hutt', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(58, 'Wellington', 'Porirua', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(59, 'Wellington', 'Kapiti', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(60, 'Wellington', 'Masterton', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(61, 'Tasman', 'Nelson', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(62, 'Tasman', 'Richmond', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(63, 'Tasman', 'Motueka', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(64, 'Tasman', 'Mapua', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(65, 'Tasman', 'Wakefield', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(66, 'Tasman', 'Murchison', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(67, 'Marlborough', 'Blenheim', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(68, 'Marlborough', 'Picton', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(69, 'Marlborough', 'Havelock', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(70, 'Marlborough', 'Seddon', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(71, 'Marlborough', 'Renwick', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(72, 'Marlborough', 'Ward', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(73, 'West Coast', 'Greymouth', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(74, 'West Coast', 'Hokitika', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(75, 'West Coast', 'Westport', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(76, 'West Coast', 'Runanga', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(77, 'West Coast', 'Reefton', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(78, 'West Coast', 'Franz Josef', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(79, 'Canterbury', 'Christchurch', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(80, 'Canterbury', 'Timaru', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(81, 'Canterbury', 'Ashburton', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(82, 'Canterbury', 'Rangiora', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(83, 'Canterbury', 'Kaiapoi', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(84, 'Canterbury', 'Lincoln', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(85, 'Otago', 'Dunedin', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(86, 'Otago', 'Oamaru', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(87, 'Otago', 'Queenstown', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(88, 'Otago', 'Wanaka', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(89, 'Otago', 'Balclutha', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(90, 'Otago', 'Milton', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(91, 'Southland', 'Invercargill', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(92, 'Southland', 'Gore', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(93, 'Southland', 'Winton', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(94, 'Southland', 'Te Anau', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(95, 'Southland', 'Bluff', '2023-10-13 01:16:41', '2023-10-13 01:16:41'),
(96, 'Southland', 'Riverton', '2023-10-13 01:16:41', '2023-10-13 01:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `Messages`
--

CREATE TABLE `Messages` (
  `id` int NOT NULL,
  `subject` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `content` text NOT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `senderUserId` int DEFAULT NULL,
  `recipientUserId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Messages`
--

INSERT INTO `Messages` (`id`, `subject`, `date`, `content`, `isDeleted`, `createdAt`, `updatedAt`, `senderUserId`, `recipientUserId`) VALUES
(1, 'helllo', '2023-10-19 09:36:36', 'asdf', 0, '2023-10-19 09:36:36', '2023-10-19 09:36:36', 20, 24),
(2, 'asdf', '2023-10-19 09:56:15', 'asdf', 0, '2023-10-19 09:56:15', '2023-10-19 09:56:15', 38, 20),
(3, 'asdf', '2023-10-19 09:58:25', 'asdfdfsadf', 0, '2023-10-19 09:58:26', '2023-10-19 09:58:26', 20, 20),
(4, 'Hello rain', '2023-10-19 10:02:07', 'testing message', 0, '2023-10-19 10:02:08', '2023-10-19 10:02:08', 20, 24),
(5, 'hi Bob', '2023-10-19 10:03:24', 'hi', 0, '2023-10-19 10:03:24', '2023-10-19 10:03:24', 24, 20);

-- --------------------------------------------------------

--
-- Table structure for table `SavedJobs`
--

CREATE TABLE `SavedJobs` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `jobId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `SavedJobs`
--

INSERT INTO `SavedJobs` (`id`, `userId`, `jobId`, `createdAt`, `updatedAt`) VALUES
(37, 24, 15, '2023-10-18 08:09:40', '2023-10-18 08:09:40'),
(38, 24, 12, '2023-10-18 08:09:59', '2023-10-18 08:09:59'),
(39, 24, 16, '2023-10-18 08:10:01', '2023-10-18 08:10:01'),
(40, 24, 17, '2023-10-18 08:10:03', '2023-10-18 08:10:03'),
(45, 20, 14, '2023-10-18 21:35:14', '2023-10-18 21:35:14'),
(46, 20, 14, '2023-10-18 21:35:16', '2023-10-18 21:35:16'),
(51, 20, 16, '2023-10-18 21:35:46', '2023-10-18 21:35:46'),
(53, 20, 21, '2023-10-18 21:35:48', '2023-10-18 21:35:48'),
(73, 20, 13, '2023-10-19 10:13:44', '2023-10-19 10:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20230825094426-CreateUserProfiles.js'),
('20230913050945-create_job.js'),
('20230913052348-create-category.js'),
('20231013010048-create-location.js'),
('20231015021457-create-user-review.js'),
('20231015055026-update-job-status.js'),
('20231015055608-create-applications.js'),
('20231015064506-create-saved-job.js'),
('20231016000348-create-user-review.js'),
('20231016010454-change-payment-amount.js'),
('20231016062728-change-UserProfil.js'),
('20231017050820-create-application.js'),
('20231017051841-create-applications.js'),
('20231017051927-create-applications.js'),
('20231017052007-create-applications.js'),
('20231019092829-update-message-model.js');

-- --------------------------------------------------------

--
-- Table structure for table `UserProfiles`
--

CREATE TABLE `UserProfiles` (
  `id` int NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `bio` text,
  `avatar` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `UserProfiles`
--

INSERT INTO `UserProfiles` (`id`, `dateOfBirth`, `gender`, `bio`, `avatar`, `createdAt`, `updatedAt`, `UserId`) VALUES
(20, '2005-12-18', 'Male', 'Hi, I am Bob, and I am on the hunt for exciting opportunities in the fields of technology and project management. With a strong background in these areas, I am eager to bring my skills and experience to a dynamic team.', '48', '2023-09-29 18:20:35', '2023-09-29 18:20:35', 20),
(23, '2006-05-12', 'Female', 'Hi, I am johndoe12345, a technology enthusiast and lifelong learner. Let us connect and explore the world of coding and innovation.', '47', '2023-10-14 00:10:59', '2023-10-14 00:10:59', 24),
(24, '1993-06-05', 'Female', 'Hi, I am janesmith56789, and I am a creative problem solver with a passion for making a positive impact through technology.', '45', '2023-10-16 00:22:12', '2023-10-16 00:22:12', 25),
(25, '1978-01-18', 'Female', 'Hi, I am mikeross_abc, and I am dedicated to driving innovation and excellence in the tech industry.', '32', '2023-10-16 00:23:08', '2023-10-16 00:23:08', 26),
(26, '1980-12-16', 'Female', 'Hi, I am emilywilson_42, and I am on a mission to create innovative solutions and drive positive change.', '24', '2023-10-16 00:23:18', '2023-10-16 00:23:18', 27),
(27, '2000-08-24', 'Male', 'Hi, I am davidbrown_XYZ, and I believe in the power of technology to transform industries.', '23', '2023-10-16 00:23:23', '2023-10-16 00:23:23', 28),
(28, '2008-05-11', 'Male', 'Hi, I am oliviadavis7890, and I am passionate about building a better future through technology.', '44', '2023-10-16 00:23:28', '2023-10-16 00:23:28', 29),
(29, '1987-11-14', 'Male', 'Hi, I am michaelmiller123, and I have a strong background in tech and a vision for a brighter tomorrow.', '49', '2023-10-16 00:23:34', '2023-10-16 00:23:34', 30),
(30, '1985-04-05', 'Male', 'Hi, I am sophiawilson_ABC, and I am dedicated to using technology to make a difference.', '14', '2023-10-16 00:23:41', '2023-10-16 00:23:41', 31),
(31, '1992-09-10', 'Female', 'Hi, I am williamlee42, and I am committed to innovation and growth.', '22', '2023-10-16 00:23:47', '2023-10-16 00:23:47', 32),
(32, '1996-09-07', 'Female', 'Hi, I am avamoore555, and I am excited to be part of the tech revolution.', '19', '2023-10-16 00:23:53', '2023-10-16 00:23:53', 33),
(33, '1994-05-09', 'Female', 'Hi, I am jamesmartin1234, and I believe in the potential of technology to change the world.', '26', '2023-10-16 00:23:57', '2023-10-16 00:23:57', 34),
(34, '1970-09-18', 'Female', 'Hi, I am emmaharris42, and I am enthusiastic about creating innovative solutions.', '24', '2023-10-16 00:24:03', '2023-10-16 00:24:03', 35),
(35, '1982-07-02', 'Female', 'Hi, I am benjaminyoung99, and I am on a journey to shape the future of technology.', '41', '2023-10-16 00:24:07', '2023-10-16 00:24:07', 36),
(36, '1989-05-11', 'Male', 'Hi, I am lilyanderson12, and I am passionate about using technology for good.', '33', '2023-10-16 00:24:12', '2023-10-16 00:24:12', 37),
(37, '1988-04-20', 'Female', 'Hi, I am ethangarcia2023, and I believe in the endless possibilities of technology.', '40', '2023-10-16 00:24:26', '2023-10-16 00:24:26', 38),
(38, '2003-06-08', 'Male', 'Hi, I am gracethompson23, and I am excited to be part of the tech community.', '50', '2023-10-16 00:24:34', '2023-10-16 00:24:34', 39),
(39, '2000-04-08', 'Female', 'Hi, I am masonlewis90, and I am dedicated to innovation and growth in the tech world.', '28', '2023-10-16 00:24:40', '2023-10-16 00:24:40', 40),
(40, '1980-01-19', 'Female', 'Hi, I am chloeclark567, and I am a technology enthusiast on a quest for excellence.', '43', '2023-10-16 00:24:45', '2023-10-16 00:24:45', 41),
(41, '1970-06-09', 'Female', 'Hi, I am noahjohnson888, and I am passionate about exploring the frontiers of technology.', '27', '2023-10-16 00:24:55', '2023-10-16 00:24:55', 42),
(42, '1983-01-12', 'Male', 'Hi, I am isabellabrown123, and I am driven by a desire to innovate and create positive change.', '8', '2023-10-16 00:25:03', '2023-10-16 00:25:03', 43),
(43, '1992-11-07', 'Male', 'Hi, I am a user with no specific bio.', '9', '2023-10-16 00:25:08', '2023-10-16 00:25:08', 44),
(47, NULL, NULL, NULL, NULL, '2023-10-19 21:35:39', '2023-10-19 21:35:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UserReviews`
--

CREATE TABLE `UserReviews` (
  `id` int NOT NULL,
  `type` enum('Worker','Client') NOT NULL,
  `reviewText` text NOT NULL,
  `rating` int NOT NULL,
  `jobId` int NOT NULL,
  `reviewerUserId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `UserReviews`
--

INSERT INTO `UserReviews` (`id`, `type`, `reviewText`, `rating`, `jobId`, `reviewerUserId`, `createdAt`, `updatedAt`) VALUES
(1, 'Client', 'Well done!', 5, 31, 20, '2023-10-15 02:21:30', '2023-10-15 02:21:30'),
(3, 'Worker', 'Excellent Job!!!!!', 5, 31, 38, '2023-10-15 03:20:08', '2023-10-16 01:12:10'),
(4, 'Client', 'Great work!', 5, 31, 26, '2023-10-16 00:15:38', '2023-10-16 01:10:09'),
(5, 'Client', 'Impressive job!', 4, 31, 30, '2023-10-16 00:15:38', '2023-10-16 01:11:50'),
(6, 'Worker', 'Outstanding performance!', 5, 31, 39, '2023-10-16 00:15:38', '2023-10-16 01:10:04'),
(7, 'Client', 'Well done!', 5, 31, 20, '2023-10-16 00:15:38', '2023-10-16 00:15:38'),
(8, 'Client', 'Excellent Job!!!!!', 4, 31, 20, '2023-10-16 00:15:38', '2023-10-16 00:15:38'),
(10, 'Client', 'Great service!', 4, 31, 32, '2023-10-16 00:15:38', '2023-10-16 01:09:57'),
(14, 'Worker', 'Offered amazing service, completed my garden in the expected time', 5, 35, 27, '2023-10-16 00:44:07', '2023-10-16 00:44:07'),
(16, 'Client', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 4, 22, 36, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(17, 'Client', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus  turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo.', 5, 13, 33, '2023-10-16 00:58:30', '2023-10-16 01:06:54'),
(18, 'Client', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 4, 25, 29, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(19, 'Worker', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 5, 12, 32, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(20, 'Client', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 4, 13, 43, '2023-10-16 00:58:30', '2023-10-16 01:09:16'),
(21, 'Client', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 4, 24, 42, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(22, 'Client', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 5, 36, 40, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(23, 'Client', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 5, 28, 37, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(24, 'Client', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 5, 12, 40, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(25, 'Worker', 'Proin leo odio, porttitor  consequat in, consequat ut, nulla.', 5, 15, 35, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(26, 'Client', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', 5, 30, 36, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(27, 'Worker', 'Proin leo odio, porttitor  consequat in, consequat ut, nulla.', 5, 27, 26, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(28, 'Worker', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 4, 20, 31, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(29, 'Client', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 5, 13, 28, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(30, 'Worker', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 5, 36, 29, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(31, 'Worker', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 4, 33, 39, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(32, 'Worker', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 4, 16, 35, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(33, 'Client', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 4, 12, 37, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(34, 'Worker', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', 5, 28, 39, '2023-10-16 00:58:30', '2023-10-16 00:58:30'),
(35, 'Worker', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 4, 12, 43, '2023-10-16 00:58:30', '2023-10-16 01:12:46'),
(36, 'Worker', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 5, 12, 27, '2023-10-16 01:13:43', '2023-10-16 01:13:43'),
(38, 'Worker', 'Excellent service', 5, 31, 40, '2023-10-16 01:22:20', '2023-10-16 01:22:20'),
(39, 'Worker', 'Great service', 5, 26, 20, '2023-10-16 01:23:54', '2023-10-16 01:23:54');

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
(20, 'Bob', 'b@hotmail.com', '$2b$10$Xc5wi8MBzCghFN6VQdx8M.7qjy08kx.MoeBwhOJkpenl3TVsYPR5m', 'b', 'b', '2023-09-29 18:20:34', '2023-09-29 18:20:34'),
(24, 'd', 'd@gmail.com', '$2b$10$oPbJDyhMonrhqAN/PhiDGu4L5nV/TbRbKOOWuj66ZtpnUsOzrKC5m', 'd', 'd', '2023-10-14 00:10:59', '2023-10-14 00:10:59'),
(25, 'johndoe12345', 'johndoe12345@example.com', '$2b$10$eCgA9H.YLuI197TDVJTiJuYHBy6lMu8F4r4y.OgnWZAr1uttXdf/e', 'John', 'Doe', '2023-10-16 00:22:12', '2023-10-16 00:22:12'),
(26, 'janesmith56789', 'janesmith56789@example.com', '$2b$10$P.px4FUHP9rsVBpCBqkWceIetS5vsh/gyhuOqaeqp2FAGFQEHHw2i', 'Jane', 'Smith', '2023-10-16 00:23:08', '2023-10-16 00:23:08'),
(27, 'mikeross_abc', 'mikeross_abc@example.com', '$2b$10$ivz5rikXimorj8rbwwvf7euqgCWnFa4hyOMwOL65kJGt44.lVD/i6', 'Mike', 'Ross', '2023-10-16 00:23:18', '2023-10-16 00:23:18'),
(28, 'emilywilson_42', 'emilywilson_42@example.com', '$2b$10$TCJlRAdeX7bVp.MtY4rCKeXqpy0crgEsmFf3/UmqKos8FWfYt6IjK', 'Emily', 'Wilson', '2023-10-16 00:23:23', '2023-10-16 00:23:23'),
(29, 'davidbrown_XYZ', 'davidbrown_XYZ@example.com', '$2b$10$n2LwGSjJf6NiA9BZAvPoQeM1xlwSt/S.CS4fOEckouUZPjka1Bp7u', 'David', 'Brown', '2023-10-16 00:23:28', '2023-10-16 00:23:28'),
(30, 'oliviadavis7890', 'oliviadavis7890@example.com', '$2b$10$zJ8/oHQDYUdBXV4gyqJruuy5jqAKab/odHzVWg1V6VZuQSNIGNbay', 'Olivia', 'Davis', '2023-10-16 00:23:34', '2023-10-16 00:23:34'),
(31, 'michaelmiller123', 'michaelmiller123@example.com', '$2b$10$l3vdvCdHtJHM2r4qHJDmn.wnlzDZwgFuT38b7LzFoLslly8zuXH8y', 'Michael', 'Miller', '2023-10-16 00:23:41', '2023-10-16 00:23:41'),
(32, 'sophiawilson_ABC', 'sophiawilson_ABC@example.com', '$2b$10$GSHlgnZY0wT/faC.Ehfpr.pbfj9RcbkCGOBTTDfximHxFXZgqEg4i', 'Sophia', 'Wilson', '2023-10-16 00:23:47', '2023-10-16 00:23:47'),
(33, 'williamlee42', 'williamlee42@example.com', '$2b$10$8DWCImzhIyyU9nXJa7UBquvSDp9UFmwRcroUGIhmbKiBYGaKmWc1.', 'William', 'Lee', '2023-10-16 00:23:53', '2023-10-16 00:23:53'),
(34, 'avamoore555', 'avamoore555@example.com', '$2b$10$nQSZpQvvQCZde8eKYYmH9e.EIOgBJnz8q45X1vBW.rb7fyQyHI4PS', 'Ava', 'Moore', '2023-10-16 00:23:57', '2023-10-16 00:23:57'),
(35, 'jamesmartin1234', 'jamesmartin1234@example.com', '$2b$10$DHZat83FFcQ2MldMwlRbeObt8vDUhua5MgGpTeDsCX.0Lr4XH.Fxe', 'James', 'Martin', '2023-10-16 00:24:03', '2023-10-16 00:24:03'),
(36, 'emmaharris42', 'emmaharris42@example.com', '$2b$10$mo7GrzrUKwO16B.pu2GXdeGAM1/xMz49qJ61QzdHzJ/ENn.r15eBu', 'Emma', 'Harris', '2023-10-16 00:24:07', '2023-10-16 00:24:07'),
(37, 'benjaminyoung99', 'benjaminyoung99@example.com', '$2b$10$/rb6tCHBMjq27SB2cpUkRulmRz7oJ3Kp2QaWwPY3QmbcWhQgZfR9m', 'Benjamin', 'Young', '2023-10-16 00:24:12', '2023-10-16 00:24:12'),
(38, 'lilyanderson12', 'lilyanderson12@example.com', '$2b$10$M.OKiChWsb.oRKq35x/JFugq1DHnwuSTxmy8a5FGJZcOCWO5gbCEC', 'Lily', 'Anderson', '2023-10-16 00:24:26', '2023-10-16 00:24:26'),
(39, 'ethangarcia2023', 'ethangarcia2023@example.com', '$2b$10$PwjyNUUytLHRuYM21RCtSe0Z1KXfHBhxVsJh/C4rbpRlBxAwupNY.', 'Ethan', 'Garcia', '2023-10-16 00:24:34', '2023-10-16 00:24:34'),
(40, 'gracethompson23', 'gracethompson23@example.com', '$2b$10$vhfYNX79f8HBQ5G5L8.WN.bZl3dQa62tGB6JyrRo/wtei9VMO4.6.', 'Grace', 'Thompson', '2023-10-16 00:24:40', '2023-10-16 00:24:40'),
(41, 'masonlewis90', 'masonlewis90@example.com', '$2b$10$n8mf8/VCHyZPoRjPv4dhT.4toGw0G8cEY0fDAHGy4dTZiwcYxQdz.', 'Mason', 'Lewis', '2023-10-16 00:24:45', '2023-10-16 00:24:45'),
(42, 'chloeclark567', 'chloeclark567@example.com', '$2b$10$XBH4EwwSTJ7FrSAVZ9lmQuBbE7jlD5MHfoQtuR3DJh6CheZ1q39ZK', 'Chloe', 'Clark', '2023-10-16 00:24:55', '2023-10-16 00:24:55'),
(43, 'noahjohnson888', 'noahjohnson888@example.com', '$2b$10$nFq/qGPFJKMxUF6m20Vwb.vcGWrhiN.V9.2sf2ObnLogmC0Rv9dHy', 'Noah', 'Johnson', '2023-10-16 00:25:03', '2023-10-16 00:25:03'),
(44, 'isabellabrown123', 'isabellabrown123@example.com', '$2b$10$5UO8M9BSJjkebg6TC8BTYe9YLgAWFPhKZevbchwnqmyXBsD4rZFPi', 'Isabella', 'Brown', '2023-10-16 00:25:08', '2023-10-16 00:25:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Applications`
--
ALTER TABLE `Applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `job_id` (`job_id`);

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
  ADD KEY `category_id` (`category_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `Jobs_ibfk_118` (`selected_user`);

--
-- Indexes for table `Locations`
--
ALTER TABLE `Locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Messages`
--
ALTER TABLE `Messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `senderUserId` (`senderUserId`),
  ADD KEY `recipientUserId` (`recipientUserId`);

--
-- Indexes for table `SavedJobs`
--
ALTER TABLE `SavedJobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `jobId` (`jobId`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `UserProfiles`
--
ALTER TABLE `UserProfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserProfiles_UserId_foreign_idx` (`UserId`);

--
-- Indexes for table `UserReviews`
--
ALTER TABLE `UserReviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobId` (`jobId`),
  ADD KEY `reviewerUserId` (`reviewerUserId`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_index` (`email`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD UNIQUE KEY `email_4` (`email`),
  ADD UNIQUE KEY `email_5` (`email`),
  ADD UNIQUE KEY `email_6` (`email`),
  ADD UNIQUE KEY `email_7` (`email`),
  ADD UNIQUE KEY `email_8` (`email`),
  ADD UNIQUE KEY `email_9` (`email`),
  ADD UNIQUE KEY `email_10` (`email`),
  ADD UNIQUE KEY `email_11` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Applications`
--
ALTER TABLE `Applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Jobs`
--
ALTER TABLE `Jobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `Locations`
--
ALTER TABLE `Locations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `Messages`
--
ALTER TABLE `Messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SavedJobs`
--
ALTER TABLE `SavedJobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `UserProfiles`
--
ALTER TABLE `UserProfiles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `UserReviews`
--
ALTER TABLE `UserReviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Applications`
--
ALTER TABLE `Applications`
  ADD CONSTRAINT `Applications_ibfk_23` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Applications_ibfk_24` FOREIGN KEY (`job_id`) REFERENCES `Jobs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Jobs`
--
ALTER TABLE `Jobs`
  ADD CONSTRAINT `Jobs_ibfk_148` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Jobs_ibfk_149` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Jobs_ibfk_150` FOREIGN KEY (`location_id`) REFERENCES `Locations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `Messages`
--
ALTER TABLE `Messages`
  ADD CONSTRAINT `Messages_ibfk_1` FOREIGN KEY (`senderUserId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Messages_ibfk_2` FOREIGN KEY (`recipientUserId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SavedJobs`
--
ALTER TABLE `SavedJobs`
  ADD CONSTRAINT `SavedJobs_ibfk_23` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SavedJobs_ibfk_24` FOREIGN KEY (`jobId`) REFERENCES `Jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UserProfiles`
--
ALTER TABLE `UserProfiles`
  ADD CONSTRAINT `UserProfiles_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `UserReviews`
--
ALTER TABLE `UserReviews`
  ADD CONSTRAINT `UserReviews_ibfk_23` FOREIGN KEY (`jobId`) REFERENCES `Jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserReviews_ibfk_24` FOREIGN KEY (`reviewerUserId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
