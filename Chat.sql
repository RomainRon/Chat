-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jan 19, 2024 at 12:15 PM
-- Server version: 10.6.12-MariaDB-1:10.6.12+maria~ubu2004-log
-- PHP Version: 8.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `ip_adress` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `content`, `ip_adress`, `create_at`) VALUES
(1, 1, 'CC', '172.16.238.1', '2024-01-11 11:26:36'),
(4, 1, 'Bjr', '172.16.238.1', '2024-01-11 15:35:56'),
(5, 2, '1000-7', '172.16.238.1', '2024-01-11 15:37:57'),
(6, 2, 'Au revoir', '172.16.238.1', '2024-01-11 16:07:31'),
(7, 3, 'hey motherfucker', '172.16.238.1', '2024-01-11 16:40:04'),
(8, 1, 'P8', '172.16.238.1', '2024-01-12 09:45:29'),
(9, 4, 'Nom de Zeus', '172.16.238.1', '2024-01-12 11:02:42'),
(10, 5, 'CC', '172.16.238.1', '2024-01-12 13:40:56'),
(11, 6, 'Coucoucoucoucoucocoucoucoucoucoucououcoucoucouc', '172.16.238.1', '2024-01-12 14:34:19'),
(12, 7, 'CC', '172.16.238.1', '2024-01-12 14:53:48'),
(13, 1, 'TTTTTTT', '172.16.238.1', '2024-01-12 15:39:46'),
(14, 4, '2,21 gigawatt', '172.16.238.1', '2024-01-12 15:49:25'),
(15, 8, 'salut', '172.16.238.1', '2024-01-12 16:09:46'),
(16, 9, 'fred est pas cool', '172.16.238.1', '2024-01-12 17:22:20'),
(17, 10, 'Vous êtes conviés à la réunnion de ce matin pour parler de votre activité portuaire. ', '172.16.238.1', '2024-01-12 17:26:36'),
(18, 11, 'Salut mes petits ésclaves préférés. j\'espere que vous avez fais vos quot', '172.16.238.1', '2024-01-12 17:30:22'),
(19, 12, 'salut mes petits esclaves, j\'éspere que vous avez eu vos quotas de coton mes petits noir. Ne mangeais pas toute la bouillie dans vos gamelle c\'est tout ce que vous aurez pour le mois. bisou mes petit negroooooo', '172.16.238.1', '2024-01-12 17:31:34'),
(20, 13, 'c est moi marty je suis revenue du futur ', '172.16.238.1', '2024-01-12 18:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `pseudo`) VALUES
(1, 'Romain'),
(2, 'Kaneki'),
(3, 'Orlane'),
(4, 'Doc'),
(5, 'Jorge'),
(6, 'Adam'),
(7, 'Stephane'),
(8, 'aaaaa'),
(9, 'oldfreddy42'),
(10, 'PDG Lex'),
(11, 'LaPuteDuCoinDeLaRue'),
(12, 'La pute du coin de la rue'),
(13, 'karen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_message_user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_message_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
