-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 10:45 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be17_cr6_bigeventsarwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `big_events`
--

CREATE TABLE `big_events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `e_mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` int(11) NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `big_events`
--

INSERT INTO `big_events` (`id`, `name`, `date`, `description`, `capacity`, `e_mail`, `phone`, `street`, `zip_code`, `city_name`, `type`, `image`, `start_time`) VALUES
(1, 'Der gestiefelte Kater', '2022-12-04', 'Fairy tale opera by César Cui\r\n\r\nFairy tale opera in two acts based on the fairy tale of the same name by Charles Perrault.\r\n\r\nPupils of the Upper Secondary School of the Vienna Boys\' Choir\r\nStudents in the preparatory course dance MUK under the direction', 100, 'test@gmail.com', '+43 1 347 80 80', 'Am Augartenspitz 1', 1020, 'Wien', 'filme', '1.jpg', '16:00:00'),
(2, 'Viennese Christmas Market 2022', '2022-12-08', 'A tall arched gateway with candles welcomes visitors at the entrance to the Viennese Christmas Market on City Hall Square. The traditional Christmas Market offers Christmas gifts, Christmas tree decorations, handicrafts, culinary treats, confectionery, an', 200, 'christkindlmarkt@mail.at', '+4368181818111', 'Rathausplatz', 1010, 'wien', 'music', '2.jpg', '10:30:00'),
(3, 'Christmas Market', '2022-12-19', 'From November 19, 2022 to January 4, 2023, the former summer residence of the Habsburgs in Vienna will once again provide a magnificent setting for the traditional Schönbrunn Palace Culture & Christmas Market and New Year\'s Market. Around 80 exhibitors fr', 3000, 'weihnachtsmarkt@co.at', '+43018954875', 'Schönbrunner Schlossstraße', 1130, 'wien', 'sport', '3.jpg', '10:00:00'),
(4, 'Simply Red', '2022-12-04', 'After 40 years of experience in the music business, Mick Hucknall, mastermind behind Simply Red, now wanted to create something with the new album that is tailored to the core strength of his fantastic band: \"I asked myself what the guys would really like', 3500, 'stadthalle@mail.com', '+431987456', 'Roland-Rainer-Platz 1', 1150, 'wien', 'theater', '4.jpg', '16:30:00'),
(5, 'Guided Tours', '2022-12-13', 'In the Guided Tour through the Spanish Riding School you will visit the baroque Winter Riding School, the Summer Riding School with one of the world’s largest oval\r\nhorse walkers and the stables of the Lipizzan stallions, which have been located in the St', 3000, 'office@srs.at', '+43 1 533 90 31', 'Michaelerplatz 1', 1010, 'wien', 'sport', '5.jpg', '13:00:00'),
(6, 'La Cenerentola', '2022-12-22', 'The Volksoper Wien presents an evening with two Tchaikovsky masterpieces: the opera Iolanta and the ballet The Nutcracker. Iolanta is a blind princess. A famous doctor can cure her, but only after she is being told about her blindness. Her father\r\ndoesn’t', 2500, 'tickets@volksoper.at', '+43 1 513 1 513 ', 'Währinger Straße 78', 1090, 'wien', 'music', '6.jpg', '22:00:00'),
(8, 'test', '2017-01-01', 'test', 1000, 'name@example.com', '123456', 'linzer', 1140, 'wien', 'filme', NULL, '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221202084058', '2022-12-02 09:41:14', 127),
('DoctrineMigrations\\Version20221202084706', '2022-12-02 09:47:16', 60);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `big_events`
--
ALTER TABLE `big_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `big_events`
--
ALTER TABLE `big_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
