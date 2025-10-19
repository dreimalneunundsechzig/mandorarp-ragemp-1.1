-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Okt 2025 um 13:10
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mandorarp`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shop_items`
--

CREATE TABLE `shop_items` (
  `id` int(11) NOT NULL,
  `shop_type` enum('supermarkt','waffenladen') NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `label` varchar(128) NOT NULL,
  `price` int(11) NOT NULL,
  `type` enum('item','weapon') DEFAULT 'item'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `shop_items`
--

INSERT INTO `shop_items` (`id`, `shop_type`, `item_name`, `label`, `price`, `type`) VALUES
(1, 'supermarkt', 'bread', 'Brot', 5, 'item'),
(2, 'supermarkt', 'water', 'Wasser', 3, 'item'),
(3, 'waffenladen', 'weapon_pistol', 'Pistole', 15000, 'weapon'),
(4, 'waffenladen', 'weapon_heavypistol', 'Schwere Pistole', 25000, 'weapon');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `money` varchar(255) NOT NULL DEFAULT '250000',
  `blackmoney` varchar(255) NOT NULL DEFAULT '0',
  `bank` varchar(255) NOT NULL DEFAULT '0',
  `rang` varchar(255) NOT NULL DEFAULT 'Spieler',
  `dob` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `socialclubname` varchar(50) NOT NULL,
  `chardata` longtext DEFAULT NULL,
  `eingeloggt` tinyint(1) DEFAULT 0,
  `charcreated` tinyint(1) DEFAULT 0,
  `position` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `rotation` int(11) NOT NULL,
  `dim` int(11) NOT NULL,
  `inventory` varchar(255) NOT NULL DEFAULT '[]',
  `loadout` varchar(255) NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `money`, `blackmoney`, `bank`, `rang`, `dob`, `sex`, `height`, `password`, `socialclubname`, `chardata`, `eingeloggt`, `charcreated`, `position`, `rotation`, `dim`, `inventory`, `loadout`) VALUES
(0, 'Max', 'Sky', '250000', '0', '0', 'Spieler', '06.09.2000', '0', '187', '$2a$11$UaIPwJgE33Z5t8/qijOSqer1RrMdIEb836gqQp.Xy8Bd303lWKTK.', 'Iramos_Sky', '{\"value\":true,\"dad\":\"45\",\"mum\":\"33\",\"sex\":\"0\",\"morfpercent\":\"0\",\"skintone\":\"100\",\"lips\":\"0\",\"neck\":\"0\",\"jawh\":\"0\",\"jaww\":\"0\",\"chinh\":\"0\",\"chinl\":\"0\",\"chinw\":\"0\",\"chinhole\":\"0\",\"eyesquint\":\"0\",\"eyesbrowh\":\"0\",\"eyesbrowd\":\"0\",\"nosewidth\":\"0\",\"noseh\":\"0\",\"nosepeakl\":\"0\",\"noseboneh\":\"0\",\"nosepeakh\":\"0\",\"nosetwist\":\"0\",\"cheekboneh\":\"0\",\"cheekbonew\":\"0\",\"cheekw\":\"0\",\"eyecolor\":\"0\",\"skinproblem\":\"0\",\"skinproblemopacity\":\"0\",\"freckle\":\"0\",\"freckleopacity\":\"0\",\"scars\":\"0\",\"scarsbrightness\":\"0\",\"wrinkle\":\"0\",\"wrinkleopacity\":\"0\",\"hair\":\"58\",\"hair2\":\"1\",\"haircolor\":\"24\",\"haircolor2\":\"44\",\"eyebrow\":\"0\",\"eyebrowopacity\":\"10\",\"eyebrowcolor\":\"19\",\"beard\":\"9\",\"beardopacity\":\"1\",\"beardcolor\":\"61\",\"makeuptype\":\"-1\",\"makeupintensidad\":\"0\",\"makeupcolor1\":\"0\",\"makeupcolor2\":\"0\",\"lipsticktype\":\"0\",\"lipstickintensidad\":\"0\",\"lipstickcolor1\":\"32\",\"blushtype\":\"0\",\"blushintensidad\":\"0\",\"blushcolor\":\"2\",\"tshirt\":\"32\",\"tshirtcolor\":\"0\",\"torso\":\"37\",\"torsocolor\":\"0\",\"arms\":\"0\",\"armscolor\":\"0\",\"pants\":\"48\",\"pantscolor\":\"0\",\"shoes\":\"0\",\"shoescolor\":\"0\",\"ears\":\"-1\",\"earscolor\":\"0\",\"chain\":\"0\",\"chaincolor\":\"0\",\"glasses\":\"-1\",\"glassescolor\":\"0\",\"watches\":\"-1\",\"watchescolor\":\"0\"}', 1, 1, NULL, 0, 0, '[]', '[]'),
(0, 'Jackson', 'Taylor', '990000000', '5415', '0', 'pl', '01.01.2000', '0', '187', '$2a$11$53N2KWzSkI53l8kivI31G..imHaSrTLdjEnvLaTsndBZmM0TKO15y', 'plozium', '{\"value\": true,\"dad\": \"0\",\"mum\": \"21\",\"sex\": 0,\"morfpercent\": \"50\",\n  \"skintone\": \"50\",\n  \"lips\": \"0\",\n  \"neck\": \"0\",\n  \"jawh\": \"0\",\n  \"jaww\": \"0\",\n  \"chinh\": \"0\",\n  \"chinl\": \"0\",\n  \"chinw\": \"0\",\n  \"chinhole\": \"0\",\n  \"eyesquint\": \"0\",\n  \"eyesbrowh\": \"0\",\n  \"eyesbrowd\": \"0\",\n  \"nosewidth\": \"0\",\n  \"noseh\": \"0\",\n  \"nosepeakl\": \"0\",\n  \"noseboneh\": \"0\",\n  \"nosepeakh\": \"0\",\n  \"nosetwist\": \"0\",\n  \"cheekboneh\": \"0\",\n  \"cheekbonew\": \"0\",\n  \"cheekw\": \"0\",\n  \"eyecolor\": \"0\",\n  \"skinproblem\": \"0\",\n  \"skinproblemopacity\": \"0\",\n  \"freckle\": \"0\",\n  \"freckleopacity\": \"0\",\n  \"scars\": \"0\",\n  \"scarsbrightness\": \"0\",\n  \"wrinkle\": \"0\",\n  \"wrinkleopacity\": \"0\",\n  \"hair\": \"0\",\n  \"hair2\": \"0\",\n  \"haircolor\": \"0\",\n  \"haircolor2\": \"0\",\n  \"eyebrow\": \"0\",\n  \"eyebrowopacity\": \"10\",\n  \"eyebrowcolor\": \"0\",\n  \"beard\": \"-1\",\n  \"beardopacity\": \"0\",\n  \"beardcolor\": \"61\",\n  \"makeuptype\": \"-1\",\n  \"makeupintensidad\": \"0\",\n  \"makeupcolor1\": \"0\",\n  \"makeupcolor2\": \"0\",\n  \"lipsticktype\": \"0\",\n  \"lipstickintensidad\": \"0\",\n  \"lipstickcolor1\": \"32\",\n  \"blushtype\": \"0\",\n  \"blushintensidad\": \"0\",\n  \"blushcolor\": \"2\",\n  \"tshirt_1\": 15,\n  \"tshirt_2\": 0,\n  \"torso_1\": 287,\n  \"torso_2\": 2,\n  \"decals_1\": 0,\n  \"decals_2\": 0,\n  \"arms\": 7,\n  \"pants_1\": 114,\n  \"pants_2\": 2,\n  \"shoes_1\": 78,\n  \"shoes_2\": 2,\n  \"helmet_1\": -1,\n  \"helmet_2\": 0,\n  \"mask_1\": 135,\n  \"mask_2\": 2,\n  \"chain_1\": 0,\n  \"chain_2\": 0,\n  \"ears_1\": 0,\n  \"ears_2\": 0,\n  \"bags_1\": 0,\n  \"bags_2\": 0,\n  \"bproof_1\": 0,\n  \"bproof_2\": 0\n}\n', 0, 1, '{\"x\":15,6125,\"y\":-1125,9833,\"z\":28,722336}', 0, 0, '[]', '[]');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `shop_items`
--
ALTER TABLE `shop_items`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`,`firstname`,`lastname`,`dob`,`sex`,`height`,`password`,`socialclubname`,`chardata`,`eingeloggt`,`charcreated`,`position`,`rotation`,`dim`) USING HASH;

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `shop_items`
--
ALTER TABLE `shop_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
