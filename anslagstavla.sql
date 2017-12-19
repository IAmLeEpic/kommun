-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 19 dec 2017 kl 14:53
-- Serverversion: 10.1.26-MariaDB
-- PHP-version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `kommunen`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `anslagstavla`
--

CREATE TABLE `anslagstavla` (
  `id` int(10) UNSIGNED NOT NULL,
  `sammantrade` date NOT NULL,
  `uppsattning` date NOT NULL,
  `titel` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `stub` text COLLATE utf8mb4_bin NOT NULL,
  `ansvarig` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `organ` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `forvaringsplats` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dokument` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumpning av Data i tabell `anslagstavla`
--

INSERT INTO `anslagstavla` (`id`, `sammantrade`, `uppsattning`, `titel`, `stub`, `ansvarig`, `organ`, `forvaringsplats`, `dokument`) VALUES
(1, '2017-12-03', '2017-12-01', 'asdqaadldk', 'ddlaskdaöl', 'adaöldkald', 'kdalskdöak', 'wqdaldkaöl', ''),
(2, '2017-12-03', '2017-12-01', 'asdqaadldk', 'ddlaskdaöl', 'adaöldkald', 'kdalskdöak', 'wqdaldkaöl', ''),
(3, '2017-12-03', '2017-12-01', 'asdqaadldk', 'ddlaskdaöl', 'adaöldkald', 'kdalskdöak', 'wqdaldkaöl', ''),
(4, '2017-12-31', '2017-12-23', 'ösdöada', 'asdjakdja', 'asddad', 'slödjsldfls', 'askjdakjd', '');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `anslagstavla`
--
ALTER TABLE `anslagstavla`
  ADD PRIMARY KEY (`id`),
  ADD KEY `titel` (`titel`),
  ADD KEY `sammantrade` (`sammantrade`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `anslagstavla`
--
ALTER TABLE `anslagstavla`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
