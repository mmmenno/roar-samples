-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 19 jul 2022 om 16:34
-- Serverversie: 5.7.34
-- PHP-versie: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fam`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `persoonsobservaties`
--

CREATE TABLE `persoonsobservaties` (
  `id` int(11) NOT NULL,
  `document` varchar(255) DEFAULT NULL,
  `documentlabel` varchar(255) NOT NULL DEFAULT '',
  `voornaam` varchar(255) NOT NULL DEFAULT '',
  `tussenvoegsel` varchar(255) NOT NULL DEFAULT '',
  `achternaam` varchar(255) NOT NULL DEFAULT '',
  `reconstructieid` int(11) DEFAULT NULL,
  `geboortedatum` varchar(255) DEFAULT '',
  `geboorteplaats` varchar(255) DEFAULT '',
  `geboorteplaatsuri` varchar(255) NOT NULL DEFAULT '',
  `geboorteplaatslatlong` varchar(255) NOT NULL,
  `beroep` varchar(255) NOT NULL DEFAULT '',
  `religie` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `persoonsobservaties`
--

INSERT INTO `persoonsobservaties` (`id`, `document`, `documentlabel`, `voornaam`, `tussenvoegsel`, `achternaam`, `reconstructieid`, `geboortedatum`, `geboorteplaats`, `geboorteplaatsuri`, `geboorteplaatslatlong`, `beroep`, `religie`) VALUES
(1, 'https://archief.amsterdam/indexen/deeds/9853344e-fb80-56a3-e053-b784100ade19', 'gezinskaart Katharina Samonig', 'Katharina', '', 'Samonig', 1, '1914-02-23', 'Mallestig (bij Villach)', 'http://sws.geonames.org/2772043/', '46.55,13.88333', 'db', 'RK'),
(2, 'https://archief.amsterdam/indexen/deeds/9853344e-fb80-56a3-e053-b784100ade19', 'gezinskaart Katharina Samonig', '', '', 'Driessen', NULL, NULL, '', '', '', '', ''),
(3, 'https://archief.amsterdam/indexen/deeds/9853344e-fb80-56a3-e053-b784100ade19', 'gezinskaart Katharina Samonig', '', '', 'Lob', 2, NULL, '', '', '', '', ''),
(4, 'https://archief.amsterdam/indexen/deeds/d3b48731-8c83-4bae-8190-1a6b484ef57a', 'woningkaart Stadionkade 17', 'Katharina', '', 'Samonig', 1, '1914-00-00', '', '', '', '', ''),
(5, 'https://archief.amsterdam/indexen/deeds/d3b48731-8c83-4bae-8190-1a6b484ef57a', 'woningkaart Stadionkade 17', 'Izaäk', '', 'Lob', 2, '1861-00-00', '', '', '', '', ''),
(6, 'https://archief.amsterdam/indexen/deeds/fa136b9f-1c9f-495a-a6e9-c1d599c0d7a2', 'woningkaart Parnassusweg 15', 'Maurits J.', '', 'Vles', NULL, '1906-00-00', '', '', '', '', ''),
(7, 'https://archief.amsterdam/indexen/deeds/fa136b9f-1c9f-495a-a6e9-c1d599c0d7a2', 'woningkaart Parnassusweg 15', 'Katharina', '', 'Samonig', 1, '1914-00-00', '', '', '', '', ''),
(8, 'https://archief.amsterdam/indexen/deeds/bd800645-5604-4dbc-a8eb-4a8c3279d7cc', 'woningkaart Minervalaan 78-I', 'Katharina', '', 'Samonig', 1, '1914-00-00', '', '', '', '', ''),
(9, 'https://archief.amsterdam/indexen/deeds/bd800645-5604-4dbc-a8eb-4a8c3279d7cc', 'woningkaart Minervalaan 78-I', 'Hellmut', '', 'Herrndorf', NULL, '1903-00-00', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `persoonsreconstructies`
--

CREATE TABLE `persoonsreconstructies` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `persoonsreconstructies`
--

INSERT INTO `persoonsreconstructies` (`id`, `label`) VALUES
(1, 'Katharina Samonig'),
(2, 'Izaäk Lob');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `woonadresobservaties`
--

CREATE TABLE `woonadresobservaties` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL DEFAULT '',
  `persoonsobservatieid` int(11) DEFAULT NULL,
  `van` date DEFAULT NULL,
  `tot` date DEFAULT NULL,
  `nearesturi` varchar(255) NOT NULL DEFAULT '',
  `latlong` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `woonadresobservaties`
--

INSERT INTO `woonadresobservaties` (`id`, `label`, `persoonsobservatieid`, `van`, `tot`, `nearesturi`, `latlong`) VALUES
(1, 'Beethovenstraat 36-boven', 1, '1933-12-07', '1935-05-06', 'https://adamlink.nl/geo/address/A172897', '52.34935,4.877193'),
(2, 'Beethovenstraat 36-boven', 2, '1933-12-07', '1935-05-06', 'https://adamlink.nl/geo/address/A172897', '52.34935,4.877193'),
(3, 'Stadionkade 17-III', 1, '1935-05-06', NULL, 'https://adamlink.nl/geo/address/A173947', '52.344916,4.873185'),
(4, 'Stadionkade 17-III', 3, '1935-05-06', NULL, 'https://adamlink.nl/geo/address/A173947', '52.344916,4.873185'),
(5, 'Göritschach (bij Villach)', 1, NULL, '1933-12-07', 'https://www.geonames.org/2778326/', '46.55355,13.86153'),
(6, 'Stadionkade 17-III', 4, '1935-05-06', '1938-01-13', 'https://adamlink.nl/geo/address/A173947', '52.344916,4.873185'),
(7, 'Stadionkade 17-III', 5, '1933-11-04', '1937-10-30', 'https://adamlink.nl/geo/address/A173947', '52.344916,4.873185'),
(8, 'Reinier Vinkeleskade 66', 5, NULL, '1933-11-04', 'https://adamlink.nl/geo/address/A221755', '52.352224,4.875723 '),
(9, 'Nicolaas Maesstraat 122-hs', 5, '1937-10-30', NULL, 'https://adamlink.nl/geo/address/A221704', '52.353757,4.876062'),
(10, 'Beethovenstraat 36-boven', 4, NULL, '1935-05-06', 'https://adamlink.nl/geo/address/A172897', '52.34935,4.877193'),
(11, 'Parnassusweg 15-II', 4, '1938-01-13', NULL, 'https://adamlink.nl/geo/address/A174219', '52.345714,4.867643'),
(12, 'Parnassusweg 15-II', 6, '1937-01-08', '1939-05-10', 'https://adamlink.nl/geo/address/A174219', '52.345714,4.867643'),
(13, 'Stadionkade 41-hs', 6, NULL, '1937-01-08', 'https://adamlink.nl/geo/address/A173971', '52.344529,4.869302'),
(14, 'Okeghemstraat 43-hs', 6, '1939-05-10', NULL, 'https://adamlink.nl/geo/address/A221348', '52.350779,4.863478'),
(15, 'Parnassusweg 15-II', 7, '1938-01-13', '1938-03-08', 'https://adamlink.nl/geo/address/A174219', '52.345714,4.867643'),
(16, 'Stadionkade 17-III', 7, NULL, '1938-01-13', 'https://adamlink.nl/geo/address/A173947', '52.344916,4.873185'),
(17, 'Minervalaan 78-I', 7, '1938-03-08', NULL, 'https://adamlink.nl/geo/address/A173989', '52.345505,4.87218');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `persoonsobservaties`
--
ALTER TABLE `persoonsobservaties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `persoonsreconstructies`
--
ALTER TABLE `persoonsreconstructies`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `woonadresobservaties`
--
ALTER TABLE `woonadresobservaties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `persoonsobservaties`
--
ALTER TABLE `persoonsobservaties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `persoonsreconstructies`
--
ALTER TABLE `persoonsreconstructies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `woonadresobservaties`
--
ALTER TABLE `woonadresobservaties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
