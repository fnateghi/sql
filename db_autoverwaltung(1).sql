-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 22. Sep 2020 um 10:13
-- Server-Version: 10.4.11-MariaDB
-- PHP-Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `db_autoverwaltung`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tb_auto`
--

CREATE TABLE `tb_auto` (
  `id` int(10) NOT NULL,
  `fk_kunddennummer` int(10) NOT NULL,
  `farbe` varchar(45) NOT NULL,
  `klasse` varchar(45) NOT NULL,
  `marke` varchar(45) NOT NULL,
  `modell` varchar(45) NOT NULL,
  `preis` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tb_kunde`
--

CREATE TABLE `tb_kunde` (
  `kundennummer` int(10) NOT NULL,
  `nachname` varchar(45) NOT NULL,
  `vorname` varchar(45) NOT NULL,
  `strasse` varchar(45) NOT NULL,
  `hausnummer` varchar(10) NOT NULL,
  `postleitzahl` int(6) NOT NULL,
  `region` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `tb_auto`
--
ALTER TABLE `tb_auto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kunddennummer` (`fk_kunddennummer`);

--
-- Indizes für die Tabelle `tb_kunde`
--
ALTER TABLE `tb_kunde`
  ADD PRIMARY KEY (`kundennummer`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `tb_auto`
--
ALTER TABLE `tb_auto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `tb_kunde`
--
ALTER TABLE `tb_kunde`
  MODIFY `kundennummer` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `tb_auto`
--
ALTER TABLE `tb_auto`
  ADD CONSTRAINT `tb_auto_ibfk_1` FOREIGN KEY (`fk_kunddennummer`) REFERENCES `tb_kunde` (`kundennummer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
