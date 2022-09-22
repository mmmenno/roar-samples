-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 22 sep 2022 om 09:23
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
  `geboorteplaatslabel` varchar(255) NOT NULL DEFAULT '',
  `geboorteplaatslatlong` varchar(255) NOT NULL,
  `sterfdatum` varchar(255) NOT NULL,
  `sterfplaats` varchar(255) NOT NULL,
  `sterfplaatsuri` varchar(255) NOT NULL,
  `sterfplaatslabel` varchar(255) NOT NULL DEFAULT '',
  `sterfplaatslatlong` varchar(255) NOT NULL,
  `beroep` varchar(255) NOT NULL DEFAULT '',
  `religie` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `persoonsobservaties`
--

INSERT INTO `persoonsobservaties` (`id`, `document`, `documentlabel`, `voornaam`, `tussenvoegsel`, `achternaam`, `reconstructieid`, `geboortedatum`, `geboorteplaats`, `geboorteplaatsuri`, `geboorteplaatslabel`, `geboorteplaatslatlong`, `sterfdatum`, `sterfplaats`, `sterfplaatsuri`, `sterfplaatslabel`, `sterfplaatslatlong`, `beroep`, `religie`) VALUES
(1, 'https://archief.amsterdam/indexen/deeds/9853344e-fb80-56a3-e053-b784100ade19', 'gezinskaart Katharina Samonig', 'Katharina', '', 'Samonig', 1, '1914-02-23', 'Mallestig (bij Villach)', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333', '', '', '', '', '', 'db', 'RK'),
(2, 'https://archief.amsterdam/indexen/deeds/9853344e-fb80-56a3-e053-b784100ade19', 'gezinskaart Katharina Samonig', '', '', 'Driessen', NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(3, 'https://archief.amsterdam/indexen/deeds/9853344e-fb80-56a3-e053-b784100ade19', 'gezinskaart Katharina Samonig', '', '', 'Lob', 2, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(4, 'https://archief.amsterdam/indexen/deeds/d3b48731-8c83-4bae-8190-1a6b484ef57a', 'woningkaart Stadionkade 17', 'Katharina', '', 'Samonig', 1, '1914-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'https://archief.amsterdam/indexen/deeds/d3b48731-8c83-4bae-8190-1a6b484ef57a', 'woningkaart Stadionkade 17', 'Izaäk', '', 'Lob', 2, '1861-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'https://archief.amsterdam/indexen/deeds/fa136b9f-1c9f-495a-a6e9-c1d599c0d7a2', 'woningkaart Parnassusweg 15', 'Maurits J.', '', 'Vles', NULL, '1906-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'https://archief.amsterdam/indexen/deeds/fa136b9f-1c9f-495a-a6e9-c1d599c0d7a2', 'woningkaart Parnassusweg 15', 'Katharina', '', 'Samonig', 1, '1914-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(8, 'https://archief.amsterdam/indexen/deeds/bd800645-5604-4dbc-a8eb-4a8c3279d7cc', 'woningkaart Minervalaan 78-I', 'Katharina', '', 'Samonig', 1, '1914-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'https://archief.amsterdam/indexen/deeds/bd800645-5604-4dbc-a8eb-4a8c3279d7cc', 'woningkaart Minervalaan 78-I', 'Hellmut', '', 'Herrndorf', NULL, '1903-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'https://archief.amsterdam/indexen/deeds/98533411-c65e-56a3-e053-b784100ade19', 'Archiefkaart Izaäk Lob', 'Izaäk', '', 'Lob', 2, '1861-01-20', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '1943-05-28', 'Sobibor', 'http://www.wikidata.org/entity/Q152658', 'Sobibor', '51.446992, 23.594136', 'zonder', ''),
(11, 'https://archief.amsterdam/indexen/deeds/98533411-c65e-56a3-e053-b784100ade19', 'Archiefkaart Izaäk Lob', 'Carolina Hester', '', 'Sanders', NULL, '1866-03-20', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '1936-02-08', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '', ''),
(12, 'https://archief.amsterdam/indexen/deeds/98533412-52fb-56a3-e053-b784100ade19', 'Archiefkaart Katharina Samonig', 'Katharina', '', 'Samonig', 1, '1914-02-23', 'Mallestig', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333', '', '', '', '', '', 'dienstbode', ''),
(13, 'https://archief.amsterdam/indexen/deeds/98533412-52fb-56a3-e053-b784100ade19', 'Archiefkaart Katharina Samonig', 'Wilhelmus Geurdinus', '', 'Kiewiet', 3, '1907-05-18', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '', '', '', '', '', '', ''),
(14, 'https://hdl.handle.net/21.12124/DF66AF3FDED14226B560D1FA252ABA94', 'Overlijdensakte Wilhelmus Geurdinus Kiewiet', 'Wilhelmus Geurdinus', '', 'Kiewiet', 3, '', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '1953-06-19', '\'s Gravenhage', 'http://www.wikidata.org/entity/Q36600', 'Den Haag', '52.080000,4.310000', 'kantoorbediende', ''),
(15, 'https://archief.amsterdam/indexen/deeds/985333f1-e5aa-56a3-e053-b784100ade19', 'Archiefkaart Wilhemus Geurdinus Kiewiet', 'Wilhelmus Geurdinus', '', 'Kiewiet', 3, '1907-05-18', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '', '', '', '', '', 'kant bed bank', ''),
(16, 'https://archief.amsterdam/indexen/deeds/92b1fb8c-0b46-4cdf-84a6-3830d4d437a5', 'Woningkaart Spaarndammerstraat 46-huis', 'Berend M.', '', 'Kiewiet', 4, '1873-00-00', '', '', '', '', '', '', '', '', '', 'Melkslijterij', ''),
(17, 'https://archief.amsterdam/indexen/deeds/2212bc58-db2d-43c1-b5bb-e64a2a409171', 'Pensioenkaart Berend Martinus Kiewiet', 'Berend Martinus', '', 'Kiewiet', 4, '1873-01-07', '', '', '', '', '', '', '', '', '', 'politie agent 2e klasse', ''),
(18, 'https://archief.amsterdam/indexen/deeds/985333f1-e5aa-56a3-e053-b784100ade19', 'Archiefkaart Wilhemus Geurdinus Kiewiet', 'Berend Martinus', '', 'Kiewiet', 4, '1873-01-07', 'Bellingwolde', 'http://www.wikidata.org/entity/Q2181173', 'Bellingwolde', '53.120000,7.171944', '', '', '', '', '', '', ''),
(19, 'https://archief.amsterdam/indexen/deeds/985333f1-e5aa-56a3-e053-b784100ade19', 'Archiefkaart Wilhemus Geurdinus Kiewiet', 'Wilhelmina Geurdina', '', 'Gerritsen', 5, '1872-11-04', 'Renkum', 'http://www.wikidata.org/entity/Q15881216', 'Renkum', '51.972222, 5.730833', '', '', '', '', '', '', ''),
(20, 'https://archief.amsterdam/indexen/deeds/5bcbae5d-8f86-4b88-9407-b9f0e1a03e7c', 'Politierapport 4/5 november 1940', 'Berend Martinus', '', 'Kiewiet', 4, '1873-01-07', 'Bellingwolde', 'http://www.wikidata.org/entity/Q2181173', 'Bellingwolde', '53.120000,7.171944', '', '', '', '', '', '', ''),
(21, 'https://www.drentsarchief.nl/onderzoeken/genealogie/zoeken/deeds/c341a1bc-0bc8-43a5-a4f2-c6c3671914eb', 'Bevolkingsregister Coevorden', 'Berend Martinus', '', 'Kiewiet', 4, '1873-01-07', 'Bellingwolde', 'http://www.wikidata.org/entity/Q2181173', 'Bellingwolde', '53.120000,7.171944', '', '', '', '', '', '', ''),
(22, 'https://www.drentsarchief.nl/onderzoeken/genealogie/zoeken/deeds/9ca22e53-c62a-4a9c-8192-d81efc73b896', 'Bevolkingsregister Dalen', 'Berend Martinus', '', 'Kiewiet', 4, '1873-01-07', 'Bellingwolde', 'http://www.wikidata.org/entity/Q2181173', 'Bellingwolde', '53.120000,7.171944', '', '', '', '', '', '', ''),
(23, 'https://www.drentsarchief.nl/onderzoeken/genealogie/zoeken/deeds/0327c1e7-0ff1-4246-9cfc-bddb8ce681e9', 'Bevolkingsregister Dalen', 'Berend Martinus', '', 'Kiewiet', 4, '1873-01-07', 'Bellingwolde', 'http://www.wikidata.org/entity/Q2181173', 'Bellingwolde', '53.120000,7.171944', '', '', '', '', '', '', ''),
(24, 'https://www.allegroningers.nl/zoeken-op-naam/deeds/b7b0f867-2bb4-41db-9e1f-b1ac66af4e35', 'Geboorteakte Berend Martinus Kiewiet', 'Berend Martinus', '', 'Kiewiet', 4, '1873-01-07', 'Oudeschans', 'http://www.wikidata.org/entity/Q2479947', 'Oudeschans', '53.138056, 7.140000', '', '', '', '', '', '', ''),
(25, 'https://archief.amsterdam/indexen/deeds/64e1ebed-aff2-489d-a3d2-32a793f5fc3f', 'Woningkaart Van Oldenbarneveldtstraat 72 huis', 'Berend M.', '', 'Kiewiet', 4, '1873-00-00', '', '', '', '', '1944-07-17', '', '', '', '', '', ''),
(26, 'https://archief.amsterdam/indexen/deeds/64e1ebed-aff2-489d-a3d2-32a793f5fc3f', 'Woningkaart Van Oldenbarneveldtstraat 72 huis', 'Wilhelmina G.', '', 'Kiewiet, geb. Gerritsen', 5, '', '', '', '', '', '1947-03-30', '', '', '', '', '', ''),
(27, 'https://archief.amsterdam/indexen/deeds/8ac5e5bd-b469-4d92-a2c9-6fe037356771', 'Woningkaart Ferdinand Bolstraat 106 i hoog', 'Menno', 'den ', 'Engelse', 6, '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 'https://archief.amsterdam/indexen/deeds/b8617547-03a8-410a-8812-ab094efcd9e9', 'Woningkaart Oude Zijds Achterburgwal 75 huis', 'Menno', 'den', 'Engelse', 6, '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 'https://archief.amsterdam/indexen/deeds/3509a206-aa35-4101-8fe5-78b82b317bf0', 'Woningkaart Delistraat 48 II hoog', 'Menno', 'den', 'Engelse', 6, '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 'https://archief.amsterdam/indexen/deeds/eb68e1c6-bc47-408d-8a74-9875d30530ee', 'Woningkaart Albert Luthulistraat 33 D', 'Menno', 'den', 'Engelse', 6, '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 'https://hdl.handle.net/21.12113/D8DCBB8C309E4C5194B5DA4E95BD02BF', 'Geboorteakte Janna Maria Goedegebuure', 'Janna Maria', '', 'Goedegebuure', 7, '1905-11-17', 'Bruinisse, Wijk B, 221 a', 'http://www.wikidata.org/entity/Q992371', 'Bruinisse', '51.660000, 4.093056', '', '', '', '', '', '', ''),
(32, 'https://hdl.handle.net/21.12124/BDD6F2CBCF5F49E7A718491558B9D40C', 'Bevolkingsregister Den Haag', 'Janna Maria', '', 'Goedegebuure', 7, '1905-11-17', 'Bruinisse', 'http://www.wikidata.org/entity/Q992371', 'Bruinisse', '51.660000, 4.093056', '', '', '', '', '', '', ''),
(33, 'https://hdl.handle.net/21.12124/BDD6F2CBCF5F49E7A718491558B9D40C', 'Bevolkingsregister Den Haag', 'Cornelis', '', 'Hoogteyling', 8, '1907-11-01', 'Den Haag', 'http://www.wikidata.org/entity/Q36600', 'Den Haag', '52.080000, 4.310000', '', '', '', '', '', 'kantoorbediende', ''),
(34, 'https://resolver.kb.nl/resolve?urn=MMKB19:000832064:mpeg21:a00090', 'Rouwadvertentie Janna Maria Hoogteyling', 'Janna Maria', '', 'Hoogteyling', 7, '', '', '', '', '', '1953-07-15', '\'s Gravenhage', 'http://www.wikidata.org/entity/Q36600', 'Den Haag', '52.080000, 4.310000', '', ''),
(35, 'https://www.wiewaswie.nl/nl/detail/106888334', 'Gezinskaart L. Goedegebuure', 'Janna Maria', '', 'Goedegebuure', 7, '1905-11-17', 'Bruinisse', 'http://www.wikidata.org/entity/Q992371', 'Bruinisse', '51.660000, 4.093056', '', '', '', '', '', '', ''),
(36, 'https://hdl.handle.net/21.12124/AAD6EE0B5D8F4FBA8FE93FECE03FBC47', 'Gezinskaart Jacob Hoogteijling', 'Cornelis', '', 'Hoogteijling', 8, '1907-11-01', 'Den Haag', 'http://www.wikidata.org/entity/Q36600', 'Den Haag', '52.080000, 4.310000', '', '', '', '', '', '', ''),
(37, 'https://archief.amsterdam/indexen/deeds/763aef2e-478e-488c-8a44-160420b8f352', 'Overgenomen delen 115 blad 67', 'Antonia Cornelia', '', 'Schalk', 10, '1890-05-12', 'Gorinchem', 'http://www.wikidata.org/entity/Q33439227', 'Gorinchem', '51.836519, 4.972431', '', '', '', '', '', 'dienstbode', ''),
(38, 'https://www.openarch.nl/wba:ffb57474-3514-4424-8fc4-dfd32148c9ad', 'Bevolkingsregister Willemstad', 'Hendrik', 'den', 'Engelse', 9, '1911-07-04', 'Fijnaart', 'http://www.wikidata.org/entity/Q2483396', 'Fijnaart', '51.6375, 4.47', '', '', '', '', '', 'onderwijzer', ''),
(39, 'https://westbrabantsarchief.nl/collectie/voorouders/deeds/9dfb3285-2019-684e-6a69-a379e718568f', 'Geboorteakte Hendrik den Engelse', 'Hendrik', 'den', 'Engelse', 9, '1911-07-04', 'Fijnaart', 'http://www.wikidata.org/entity/Q2483396', 'Fijnaart', '51.6375, 4.47', '', '', '', '', '', '', ''),
(40, 'https://hdl.handle.net/21.12124/1422EABFB75340AA863E29ADB2EAFD7F', 'Gezinskaart Hendrik den Engelse', 'Hendrik', 'den', 'Engelse', 9, '1911-07-04', 'Fijnaart', 'http://www.wikidata.org/entity/Q2483396', 'Fijnaart', '51.6375, 4.47', '', '', '', '', '', '', ''),
(41, 'https://hdl.handle.net/21.12124/80011712D551414EA6A64CE9550D199E', 'Gezinskaart Hendrik den Engelse', 'Hendrik', 'den', 'Engelse', 9, '1911-07-04', 'Fijnaart', 'http://www.wikidata.org/entity/Q2483396', 'Fijnaart', '51.6375, 4.47', '', '', '', '', '', 'onderwijzer', ''),
(42, 'https://proxy.archieven.nl/0/735D32082F0B484EBC294DFA807D7AC4', 'Geboorteakte Neeltje Dorleijn', 'Neeltje', '', 'Dorleijn', 11, '1909-11-07', 'Koudekerke', 'http://www.wikidata.org/entity/Q1785561', 'Koudekerke', '51.4808, 3.5528', '', '', '', '', '', '', ''),
(43, 'https://archief.amsterdam/indexen/deeds/fda1e74b-a2e0-483c-9bd5-403d813f4965', 'Woningkaart Tintorettostraat 37 1 hoog', 'Izaäk', '', 'Lob', 2, '1861-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(44, 'https://archief.amsterdam/indexen/deeds/18a98f9e-ce0f-48c1-8173-b3db15c56226', 'Bevolkingsregister 1853-1863', 'Izaak', '', 'Lob', 2, '1861-01-20', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '', '', '', '', '', '', ''),
(45, 'https://archief.amsterdam/indexen/deeds/3b1d7857-2b08-40f1-9bc1-8ab9e794a3ab', 'Bevolkingsregister 1853-1863', 'Izaak', '', 'Lob', 2, '1861-01-20', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '', '', '', '', '', '', ''),
(46, 'https://archief.amsterdam/indexen/deeds/c9bcbfa9-7473-4ad2-9475-db986d8d3707', 'Bevolkingsregister 1874-1893', 'Izaak', '', 'Lob', 2, '1861-00-00', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '', '', '', '', '', '', ''),
(47, 'https://archief.amsterdam/indexen/deeds/0798cd40-7552-4bd1-885f-47b63f9a5590', 'Bevolkingsregister 1874-1893', 'Izaak', '', 'Lob', 2, '1861-00-00', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '', '', '', '', '', '', ''),
(48, 'https://archief.amsterdam/indexen/deeds/2ebd6bf1-42ba-4d65-a763-6e3fbac62bb4', 'Bevolkingsregister 1874-1893', 'Isaac', '', 'Lob', 2, '1861-00-00', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', '', '', '', '', '', '', ''),
(49, 'https://archief.amsterdam/indexen/deeds/bace9751-abda-4f08-b504-1b2227017211', 'woningkaart Reynier Vinkeleskade 66 huis i', 'Izaak', '', 'Lob', 2, '1861-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(50, 'https://archief.amsterdam/indexen/deeds/9853343e-3e0e-56a3-e053-b784100ade19', 'gezinskaart Maria Samonig', 'Maria', '', 'Samonig', 12, '1903-11-16', 'Mallestig', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333', '', '', '', '', '', 'db', ''),
(51, 'https://archief.amsterdam/indexen/deeds/9853341a-3a55-56a3-e053-b784100ade19', 'archiefkaart Maria Samonig', 'Maria', '', 'Samonig', 12, '1903-11-16', 'Mallestig', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333', '', '', '', '', '', 'dienstbode', ''),
(52, 'https://archief.amsterdam/indexen/deeds/354de3a2-c908-4c5e-876b-8537e0326edd', 'Woningkaart Albrecht Dürerstraat 43 huis', 'Maria', '', 'Samonig', 12, '1903-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(53, 'https://archief.amsterdam/indexen/deeds/e450cda3-c8ec-4b0a-8815-715cc82ea61a', 'Woningkaart Schubertstraat 70 huis', 'Maria', '', 'Samonig', 12, '1903-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'https://archief.amsterdam/indexen/deeds/68fb7053-edf7-40d2-9bb1-746a19cf36eb', 'Woningkaart Minervalaan 80', 'Maria', '', 'Samonig', 12, '1903-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(55, 'https://archief.amsterdam/indexen/deeds/42ef57a0-7d3c-46e1-97f5-fd35d8095803', 'Woningkaart Murillostraat 8 bovenhuis', 'Maria', '', 'Samonig', 12, '1903-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(56, 'https://archief.amsterdam/indexen/deeds/9853344d-1f52-56a3-e053-b784100ade19', 'Gezinskaart J. Samonig', 'Josefine', '', 'Samonig', 13, '1919-10-19', 'Goritschach Kanzianiberg Kärnten', 'http://sws.geonames.org/2774786/', 'Kanzianiberg', '46.550000, 13.866667', '', '', '', '', '', 'db', 'RK'),
(57, 'https://archief.amsterdam/indexen/deeds/2a631083-6c64-4c9d-93c5-125bc02be56a', 'Woningkaart Rubensstraat 36', 'Josefine', '', 'Samonig', 13, '1919-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(58, 'https://archief.amsterdam/indexen/deeds/d5cd2ca8-57cb-4a16-b0ad-c5d00d80d2fa', 'Woningkaart Scheldestraat 17', 'Josefine', '', 'Samonig', 13, '1919-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(59, 'https://archief.amsterdam/indexen/deeds/ec730cdf-abcb-4174-8525-c7f2a261b043', 'Woningkaart Scheldestraat 17 1 hoog', 'Josefine', '', 'Samonig', 13, '1919-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(60, 'https://archief.amsterdam/indexen/deeds/6fecf056-0354-4b9d-9992-7e1563e44a84', 'Woningkaart Churchill-laan 220 huis', 'Josefine', '', 'Samonig', 13, '1919-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(61, 'https://archief.amsterdam/indexen/deeds/98533440-1a30-56a3-e053-b784100ade19', 'Gezinskaart Ursula Samonig', 'Ursula', '', 'Samonig', 14, '1902-10-21', 'Mallestig (Kärnten)', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333', '', '', '', '', '', '', ''),
(62, 'https://archief.amsterdam/indexen/deeds/7585d55c-1352-438f-8435-2b6c7067c922', 'Woningkaart Parnassusweg 24', 'Ursula', '', 'Samonig', 14, '1902-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(63, 'https://archief.amsterdam/indexen/deeds/1b88d5db-3c4e-431f-ad8c-cdb04ff0eaf1', 'Woningkaart Tesselschadestraat 22 huis', 'Ursula', '', 'Samonig', 14, '1902-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(64, 'https://archief.amsterdam/indexen/deeds/5f007e7f-e946-4a16-baef-d2a40aaabcfe', 'Woningkaart Willem van Weldammelaan 14 gelegen op 2e woonlaag', '', '', '', 6, '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 'https://archief.amsterdam/indexen/deeds/9853344d-36a4-56a3-e053-b784100ade19', 'Gezinskaart H. Simonitsch', 'Hilda', '', 'Simonitsch', 15, '1916-10-08', 'Oberaichwald', 'https://sws.geonames.org/2770375/', 'Oberaichwald', '46.56,13.92583', '', '', '', '', '', 'db', 'RK'),
(66, 'https://archief.amsterdam/indexen/deeds/9853344e-8fdc-56a3-e053-b784100ade19', 'Gezinskaart A. Latzko', 'Andor', '', 'Latzko', 16, '1876-09-01', 'Budapest', 'http://www.wikidata.org/entity/Q1781', 'Boedapest', '47.498333, 19.040833', '', '', '', '', '', 'schrijver', 'RK'),
(67, 'https://archief.amsterdam/indexen/deeds/75153b97-ae27-406a-a284-6d9f849a7948', 'Woningkaart Cliostraat 20', 'Hilda', '', 'Simonitsch', 15, '1916-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(68, 'https://archief.amsterdam/indexen/deeds/75153b97-ae27-406a-a284-6d9f849a7948', 'Woningkaart Cliostraat 20', 'Andor', '', 'Latzko', 16, '1876-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(69, 'https://archief.amsterdam/indexen/deeds/98533411-b5d1-56a3-e053-b784100ade19', 'Archiefkaart Andor Latzko', 'Andor', '', 'Latzko', 16, '1876-09-01', 'Budapest', 'http://www.wikidata.org/entity/Q1781', 'Boedapest', '47.498333, 19.040833', '1943-09-11', 'Amsterdam', 'http://www.wikidata.org/entity/Q727', 'Amsterdam', '52.383333, 4.900000', 'schrijver', ''),
(70, 'https://archief.amsterdam/indexen/deeds/6e04820a-4168-4fd1-8efc-edf2532e6cab', 'Woningkaart Waalstraat 37 2 hoog', 'Andor', '', 'Latzko', 16, '1876-00-00', '', '', '', '', '', '', '', '', '', '', ''),
(71, 'https://archief.amsterdam/indexen/deeds/98533421-6eca-56a3-e053-b784100ade19', 'Archiefkaart Ettel Krämer', 'Ettel', '', 'Krämer', 17, '1910-03-24', 'Dobromil', 'https://sws.geonames.org/3100329/', 'Dobromil', '51.58052, 15.99016', '', '', '', '', '', 'zonder', ''),
(72, 'https://collections.arolsen-archives.org/de/document/130285421', 'Kaart Joodsche Raad Ettel Felder-Krämer', 'Ettel', '', 'Felder-Krämer', 17, '1910-03-24', 'Dobromil', 'https://sws.geonames.org/3100329/', 'Dobromil', '51.58052, 15.99016', '', '', '', '', '', 'werkster Middelb. J. Kunstn. school', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `persoonsreconstructies`
--

CREATE TABLE `persoonsreconstructies` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL DEFAULT '',
  `sameas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `persoonsreconstructies`
--

INSERT INTO `persoonsreconstructies` (`id`, `label`, `sameas`) VALUES
(1, 'Katharina Samonig', ''),
(2, 'Izaäk Lob', ''),
(3, 'Wilhelmus Geurdinus Kiewiet', ''),
(4, 'Berend Martinus Kiewiet', ''),
(5, 'Wilhelmina Geurdina Gerritsen', ''),
(6, 'Menno den Engelse', ''),
(7, 'Janna Maria Goedegebuure', ''),
(8, 'Cornelis Hoogteyling', ''),
(9, 'Hendrik den Engelse', ''),
(10, 'Antonia Cornelia Schalk', ''),
(11, 'Neeltje Dorleijn', ''),
(12, 'Maria Samonig', ''),
(13, 'Josefine Samonig', ''),
(14, 'Ursula Samonig', ''),
(15, 'Hilda Simonitsch', ''),
(16, 'Andreas Latzko', 'http://www.wikidata.org/entity/Q88339'),
(17, 'Ettel Krämer', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `woonadresobservaties`
--

CREATE TABLE `woonadresobservaties` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL DEFAULT '',
  `persoonsobservatieid` int(11) DEFAULT NULL,
  `van` varchar(20) DEFAULT NULL,
  `tot` varchar(20) DEFAULT NULL,
  `nearesturi` varchar(255) NOT NULL DEFAULT '',
  `nearesturilabel` varchar(255) NOT NULL DEFAULT '',
  `latlong` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `woonadresobservaties`
--

INSERT INTO `woonadresobservaties` (`id`, `label`, `persoonsobservatieid`, `van`, `tot`, `nearesturi`, `nearesturilabel`, `latlong`) VALUES
(1, 'Beethovenstraat 36-boven', 1, '1933-12-07', '1935-05-06', 'https://adamlink.nl/geo/address/A172897', 'Beethovenstraat 36', '52.34935,4.877193'),
(2, 'Beethovenstraat 36-boven', 2, '1933-12-07', '1935-05-06', 'https://adamlink.nl/geo/address/A172897', 'Beethovenstraat 36', '52.34935,4.877193'),
(3, 'Stadionkade 17-III', 1, '1935-05-06', NULL, 'https://adamlink.nl/geo/address/A173947', 'Stadionkade 17', '52.344916,4.873185'),
(4, 'Stadionkade 17-III', 3, '1935-05-06', NULL, 'https://adamlink.nl/geo/address/A173947', 'Stadionkade 17', '52.344916,4.873185'),
(5, 'Göritschach (bij Villach)', 1, NULL, '1933-12-07', 'https://www.geonames.org/2778326/', 'Goritschach', '46.55355,13.86153'),
(6, 'Stadionkade 17-III', 4, '1935-05-06', '1938-01-13', 'https://adamlink.nl/geo/address/A173947', 'Stadionkade 17', '52.344916,4.873185'),
(7, 'Stadionkade 17-III', 5, '1933-11-04', '1937-10-30', 'https://adamlink.nl/geo/address/A173947', 'Stadionkade 17', '52.344916,4.873185'),
(8, 'Reinier Vinkeleskade 66', 5, NULL, '1933-11-04', 'https://adamlink.nl/geo/address/A221755', 'Reinier Vinkeleskade 66', '52.352224,4.875723 '),
(9, 'Nicolaas Maesstraat 122-hs', 5, '1937-10-30', NULL, 'https://adamlink.nl/geo/address/A221704', 'Nicolaas Maesstraat 122', '52.353757,4.876062'),
(10, 'Beethovenstraat 36-boven', 4, NULL, '1935-05-06', 'https://adamlink.nl/geo/address/A172897', 'Beethovenstraat 36', '52.34935,4.877193'),
(11, 'Parnassusweg 15-II', 4, '1938-01-13', NULL, 'https://adamlink.nl/geo/address/A174219', 'Parnassusweg 15', '52.345714,4.867643'),
(12, 'Parnassusweg 15-II', 6, '1937-01-08', '1939-05-10', 'https://adamlink.nl/geo/address/A174219', 'Parnassusweg 15', '52.345714,4.867643'),
(13, 'Stadionkade 41-hs', 6, NULL, '1937-01-08', 'https://adamlink.nl/geo/address/A173971', 'Stadionkade 41', '52.344529,4.869302'),
(14, 'Okeghemstraat 43-hs', 6, '1939-05-10', NULL, 'https://adamlink.nl/geo/address/A221348', 'Okeghemstraat 43', '52.350779,4.863478'),
(15, 'Parnassusweg 15-II', 7, '1938-01-13', '1938-03-08', 'https://adamlink.nl/geo/address/A174219', 'Parnassusweg 15', '52.345714,4.867643'),
(16, 'Stadionkade 17-III', 7, NULL, '1938-01-13', 'https://adamlink.nl/geo/address/A173947', 'Stadionkade 17', '52.344916,4.873185'),
(17, 'Minervalaan 78-I', 7, '1938-03-08', NULL, 'https://adamlink.nl/geo/address/A173989', 'Minervalaan 78', '52.345505,4.87218'),
(18, 'Minervalaan 78-I', 9, NULL, '1948-05-07', 'https://adamlink.nl/geo/address/A173989', 'Minervalaan 78', '52.345505,4.87218'),
(19, 'U.S.A.', 9, '1948-05-07', NULL, 'http://www.wikidata.org/entity/Q30', 'Verenigde Staten van Amerika', '39.828175, -98.579500'),
(20, 'Emmaplein 7', 12, '1939-06-12', '1941-03-06', 'https://adamlink.nl/geo/address/A134813', 'Emmaplein 7', '52.353921,4.863424'),
(21, 'GV Beukstraat 137', 12, '1941-03-06', NULL, 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0518100000228459', 'Beukstraat 137', '52.078460,4.270480'),
(22, 'GV Beukstraat 137', 13, '1941-03-06', NULL, 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0518100000228459', 'Beukstraat 137', '52.078460,4.270480'),
(23, 'Spaarndammerstraat 46-hs', 15, NULL, '1940-09-23', 'https://adamlink.nl/geo/address/A196364', 'Spaarndammerstraat 46', '52.387542,4.881168'),
(24, 'GV JEvertsenstraat 21', 15, '1940-09-23', NULL, 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0518100000235648', 'Stadstuinen 21 \'s-Gravenhage', '52.05816253794724,4.248108006971549'),
(25, 'Spaarndammerstraat 46-huis', 16, NULL, '1941-03-03', 'https://adamlink.nl/geo/address/A196364', 'Spaarndammerstraat 46', '52.387542,4.881168'),
(26, 'Van Oldenbarneveldstraat 72-hs', 16, '1941-03-03', NULL, 'https://adamlink.nl/geo/address/A164430', 'Van Oldenbarneveldstraat 72', '52.374743,4.874045'),
(27, 'Spaarnd:str: 46 huis', 20, NULL, NULL, 'https://adamlink.nl/geo/address/A196364', 'Spaarndammerstraat 46', '52.387542,4.881168'),
(28, 'Molenstraat N40', 21, '1874-05-29', '1875-10-06', 'http://www.wikidata.org/entity/Q19348546', 'Molenstraat Coevorden', '52.662600, 6.738900'),
(29, 'Schoonebeek No 51 KO', 22, '1875-10-08', NULL, 'http://www.wikidata.org/entity/Q2006601', 'Schoonebeek', '52.661944, 6.883056'),
(30, 'Schoonebeek No 65', 23, NULL, '1882-05-08', 'http://www.wikidata.org/entity/Q2006601', 'Schoonebeek', '52.661944, 6.883056'),
(31, 'Zuidbroek Groningen', 23, '1882-05-08', NULL, 'http://www.wikidata.org/entity/Q3025870', 'Zuidbroek', '53.163056, 6.861111'),
(32, 'Van Oldenbarneveldtstraat 72 huis', 25, '1941-03-30', '1944-07-17', 'https://adamlink.nl/geo/address/A164430', 'Van Oldenbarneveldstraat 72', '52.374743,4.874045'),
(33, 'Van Oldenbarneveldtstraat 72 huis', 26, '1941-03-30', '1947-03-30', 'https://adamlink.nl/geo/address/A164430', 'Van Oldenbarneveldstraat 72', '52.374743,4.874045'),
(34, 'Oude Zijds Achterburgwal 75 hs', 27, '1986-04-02', NULL, 'https://adamlink.nl/geo/address/A18440', 'Oudezijds Achterburgwal 75', '52.372907,4.898622'),
(35, 'Ferdinand Bolstraat 106 i hoog', 27, '1984-09-20', '1986-04-02', 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0363100012153320', 'Ferdinand Bolstraat 106', '52.35377,4.89053'),
(36, 'Delistraat 48 II', 28, '1988-01-05', NULL, 'https://adamlink.nl/geo/address/A152712', 'Delistraat 48', '52.365255,4.933804'),
(37, 'Oude Zijds Achterburgwal 75 hs', 28, '1986-04-02', '1988-01-05', 'https://adamlink.nl/geo/address/A18440', 'Oudezijds Achterburgwal 75', '52.372907,4.898622'),
(38, 'Albert Luthulistraat 33 D', 29, '1989-02-13', NULL, 'https://adamlink.nl/geo/address/A211626', 'Louis Bothastraat 33', '52.352556,4.919183'),
(39, 'Delistraat 48 II hoog', 29, '1988-01-05', '1989-02-13', 'https://adamlink.nl/geo/address/A152712', 'Delistraat 48', '52.365255,4.933804'),
(40, 'Albert Luthulistraat 33 D', 30, '1989-02-13', NULL, 'https://adamlink.nl/geo/address/A211626', 'Louis Bothastraat 33', '52.352556,4.919183'),
(41, 'Hulshorststr 80', 33, '1934-06-20', NULL, 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0518100000322199', 'Hulshorststraat 80', '52.065230, 4.287370'),
(42, 'Hulshorststr 80', 32, '1934-06-20', NULL, 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0518100000322199', 'Hulshorststraat 80', '52.065230, 4.287370'),
(43, 'Hulshorststraat 80', 34, NULL, '1953-07-15', 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0518100000322199', 'Hulshorststraat 80', '52.065230, 4.287370'),
(44, 'Bruinisse', 35, NULL, '1906-03-30', 'http://www.wikidata.org/entity/Q992371', 'Bruinisse', '51.660000, 4.093056'),
(45, 'Van der Duynstraat 57', 35, '1906-03-30', '1915-02-15', 'http://www.wikidata.org/entity/Q19619596', 'Van der Duynstraat', '52.072900, 4.317200'),
(46, 'Gortmolen 17-8, 17-48, 17-i', 35, '1915-02-15', '1930-01-31', 'http://www.wikidata.org/entity/Q19201260', 'Gortmolen', '52.071800, 4.313400'),
(47, 'Hulshorststraat 80', 35, '1934-06-20', NULL, 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0518100000322199', 'Hulshorststraat 80', '52.065230, 4.287370'),
(48, 'Rembrandtstraat 308', 35, '1930-01-31', '1934-06-20', 'http://www.wikidata.org/entity/Q19464738', 'Rembrandtstraat', '52.071000, 4.304300'),
(49, 'Koningstraat 110/112', 36, '1907-11-01', '1934-06-20', 'http://www.wikidata.org/entity/Q19307487', 'Koningstraat', '52.070800, 4.312400'),
(50, 'ona v. Eeghenstr. 25', 37, '1907-07-10', '1909-12-30', 'https://adamlink.nl/geo/address/A132107', 'Van Eeghenstraat 25', '52.358009,4.876104'),
(51, 'Gorinchem', 37, NULL, '1907-07-10', 'http://www.wikidata.org/entity/Q33439227', 'Gorinchem', '51.836519, 4.972431'),
(52, 'Blauwe Haansteeg B324', 37, '1909-12-30', NULL, 'http://www.wikidata.org/entity/Q18956600', 'Blauwe Haansteeg', '51.828600, 4.977400'),
(53, 'Willemstad, Wijk B nr. 79', 38, '1931-05-08', '1933-03-31', 'http://www.wikidata.org/entity/Q76937', 'Willemstad', '51.6919, 4.4378'),
(54, '\'s-Gravenhage', 38, '1933-03-31', NULL, 'http://www.wikidata.org/entity/Q36600', 'Den Haag', '52.080000, 4.310000'),
(55, 'Heemskerckstraat 63', 40, '1933-09-27', '1934-12-10', 'http://www.wikidata.org/entity/Q19202521', 'Heemskerckstraat', '52.0824, 4.2971'),
(56, 'Notenplein 15', 40, '1934-12-10', NULL, 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0518100000314701', 'Notenplein 15', '52.063320, 4.255470'),
(57, 'Emmastraat 90 c', 41, '1936-12-09', NULL, 'http://www.wikidata.org/entity/Q19117628', 'Emmastraat', '52.0836, 4.3322'),
(58, 'Notenplein 15', 41, '1934-12-10', '1936-12-09', 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0518100000314701', 'Notenplein 15', '52.063320, 4.255470'),
(59, 'Willemstad', 41, NULL, '1933-09-27', 'http://www.wikidata.org/entity/Q76937', 'Willemstad', '51.6919, 4.4378'),
(60, 'Tintoretttostraat 37 I', 10, '1940-04-04', '1941-08-28', 'https://adamlink.nl/geo/address/A173631', 'Tintorettostraat 37', '52.347096,4.868917'),
(61, 'Tintoretttostraat 37 I', 43, '1940-04-04', '1943-08-07', 'https://adamlink.nl/geo/address/A173631', 'Tintorettostraat 37', '52.347096,4.868917'),
(62, 'Dl', 43, '1943-08-07', NULL, 'http://www.wikidata.org/entity/Q183', 'Duitsland', '51, 10'),
(63, 'DL', 10, '1943-08-07', NULL, 'http://www.wikidata.org/entity/Q183', 'Duitsland', '51, 10'),
(64, 'C 350', 44, '1861-01-20', '1861-04-29', 'https://adamlink.nl/geo/address/A89095', 'buurt C 350', '52.367879,4.89763'),
(65, 'P 23', 44, '1861-04-29', NULL, 'https://adamlink.nl/geo/address/A103140', 'buurt P 23', '52.36641,4.903274'),
(66, 'C 350', 45, NULL, '1861-05-00', 'https://adamlink.nl/geo/address/A89095', 'buurt C 350', '52.367879,4.89763'),
(67, 'P 23', 45, '1861-05-00', NULL, 'https://adamlink.nl/geo/address/A103140', 'buurt P 23', '52.36641,4.903274'),
(68, 'Nieuwe Heerengracht 35', 46, NULL, '1877-05-00', 'https://adamlink.nl/geo/address/A103139', 'Nieuwe Heerengracht 35', '52.36641,4.903274'),
(69, 'Nieuwe Heerengracht 145', 47, NULL, '1891-05-00', 'https://adamlink.nl/geo/address/A116711', 'Nieuwe Heerengracht 145', '52.368908,4.908914'),
(70, 'Nieuwe Heerengracht 145', 48, NULL, '1891-05-00', 'https://adamlink.nl/geo/address/A116711', 'Nieuwe Heerengracht 145', '52.368908,4.908914'),
(71, 'Amstel (binnen) 15', 48, '1891-05-00', NULL, 'https://adamlink.nl/geo/address/A89705', 'Binnen Amstel 15', '52.367821,4.896974'),
(72, 'Johs Verhulststr 169 bov', 49, NULL, '1925-06-08', 'https://adamlink.nl/geo/address/A221388', 'Johannes Verhulststraat 169', '52.353113,4.86751'),
(73, 'Reynier Vinkeleskade 66 huis', 49, '1925-06-08', '1933-11-04', 'https://adamlink.nl/geo/address/A221755', 'Reijnier Vinkeleskade 66', '52.352224,4.875723'),
(74, 'Zirl', 50, NULL, '1934-05-24', 'http://www.wikidata.org/entity/Q206000', 'Zirl', '47.273333, 11.241389'),
(75, 'Albr. Dürerstr. 43', 50, '1934-05-24', '1935-05-28', 'https://adamlink.nl/geo/address/A173060', 'Albrecht Dürerstraat 43', '52.347718,4.87618'),
(76, 'Schubertstr. 70', 50, '1935-05-28', NULL, 'https://adamlink.nl/geo/address/A173908', 'Schubertstraat 70', '52.345667,4.877532'),
(77, 'Kirchstrasse 95, Zirl', 50, '1937-03-30', NULL, 'http://www.wikidata.org/entity/Q206000', 'Zirl', '47.273333, 11.241389'),
(78, 'Mallestig', 50, NULL, '1937-12-17', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333'),
(79, 'Murillostr 8 bv', 51, '1938-03-08', '1939-12-04', 'https://adamlink.nl/geo/address/A173272', 'Murillostraat 8', '52.346305,4.874581'),
(80, 'Minervalaan 80 I', 51, '1937-12-17', '1938-03-08', 'https://adamlink.nl/geo/address/A173990', 'Minervalaan 80', '52.345412,4.872198'),
(81, 'Maleestig DL', 51, NULL, '1937-12-17', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333'),
(82, 'Zirl DL Kirchstr. 95', 51, '1937-03-30', NULL, 'http://www.wikidata.org/entity/Q206000', 'Zirl', '47.273333, 11.241389'),
(83, 'vBaerlestr 16', 51, NULL, '1937-03-30', 'https://adamlink.nl/geo/address/A131846', 'Van Baerlestraat 16', '52.359554,4.877327'),
(84, 'Zirl DL', 51, NULL, '1934-05-24', 'http://www.wikidata.org/entity/Q206000', 'Zirl', '47.273333, 11.241389'),
(85, 'Albrecht Dürerstraat 43 huis', 52, '1934-05-24', '1935-05-28', 'https://adamlink.nl/geo/address/A173060', 'Albrecht Dürerstraat 43', '52.347718,4.87618'),
(86, 'Zirl bij Innsbruck', 52, NULL, '1934-05-24', 'http://www.wikidata.org/entity/Q206000', 'Zirl', '47.273333, 11.241389'),
(87, 'Schubertstraat 70 hs', 52, '1935-05-28', NULL, 'https://adamlink.nl/geo/address/A173908', 'Schubertstraat 70', '52.345667,4.877532'),
(88, 'v. Baerlestr. 16 II', 53, '1937-02-15', NULL, 'https://adamlink.nl/geo/address/A131846', 'Van Baerlestraat 16', '52.359554,4.877327'),
(89, 'A. Dürerstr. 43 hs', 53, NULL, '1935-05-28', 'https://adamlink.nl/geo/address/A173060', 'Albrecht Dürerstraat 43', '52.347718,4.87618'),
(90, 'Schubertstraat 70 huis', 53, '1935-05-28', '1937-02-15', 'https://adamlink.nl/geo/address/A173908', 'Schubertstraat 70', '52.345667,4.877532'),
(91, 'Murillostr 8 bv', 54, '1938-03-08', NULL, 'https://adamlink.nl/geo/address/A173272', 'Murillostraat 8', '52.346305,4.874581'),
(92, 'Mallestig (Oost.)', 54, NULL, '1937-12-17', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333'),
(93, 'Minervalaan 80', 54, '1937-12-17', '1938-03-08', 'https://adamlink.nl/geo/address/A173990', 'Minervalaan 80', '52.345412,4.872198'),
(94, 'Murillostraat 8 bovenhuis', 55, '1938-03-08', '1939-12-04', 'https://adamlink.nl/geo/address/A173272', 'Murillostraat 8', '52.346305,4.874581'),
(95, 'Minervalaan 80 I', 55, NULL, '1938-03-08', 'https://adamlink.nl/geo/address/A173990', 'Minervalaan 80', '52.345412,4.872198'),
(96, 'Goritschach', 56, '1939-02-02', NULL, 'https://www.geonames.org/2778326/', 'Goritschach', '46.55355,13.86153'),
(97, 'Scheldestraat 17 I', 56, '1936-09-16', NULL, 'https://adamlink.nl/geo/address/A176904', 'Scheldestraat 17', '52.347558,4.891489'),
(98, 'Rubensstraat 36 hs', 56, '1936-06-05', NULL, 'https://adamlink.nl/geo/address/A173178', 'Rubensstraat 36', '52.348473,4.873385'),
(99, 'Goritschach', 56, NULL, '1936-06-05', 'https://www.geonames.org/2778326/', 'Goritschach', '46.55355,13.86153'),
(100, 'Scheldestr. 17 I', 57, '1936-09-16', NULL, 'https://adamlink.nl/geo/address/A176904', 'Scheldestraat 17', '52.347558,4.891489'),
(101, 'Rubensstraat 36', 57, '1936-06-05', '1936-09-16', 'https://adamlink.nl/geo/address/A173178', 'Rubensstraat 36', '52.348473,4.873385'),
(102, 'Goritschach', 57, NULL, '1936-06-05', 'https://www.geonames.org/2778326/', 'Goritschach', '46.55355,13.86153'),
(103, 'Scheldestraat 17', 58, '1936-09-16', NULL, 'https://adamlink.nl/geo/address/A176904', 'Scheldestraat 17', '52.347558,4.891489'),
(104, 'Rubensstr. 36 hs', 58, NULL, '1936-09-16', 'https://adamlink.nl/geo/address/A173178', 'Rubensstraat 36', '52.348473,4.873385'),
(105, 'Nr. Amstell. 220 bov', 59, '1937-10-26', NULL, 'https://adamlink.nl/geo/address/A176892', 'Noorder Amstellaan 220', '52.34743,4.891821'),
(106, 'Scheldestraat 17 1 hoog', 59, NULL, '1937-10-26', 'https://adamlink.nl/geo/address/A176904', 'Scheldestraat 17', '52.347558,4.891489'),
(107, 'Goritschach', 60, '1939-02-02', NULL, 'https://www.geonames.org/2778326/', 'Goritschach', '46.55355,13.86153'),
(108, 'Scheldestr. 17 I', 60, NULL, '1937-10-26', 'https://adamlink.nl/geo/address/A176904', 'Scheldestraat 17', '52.347558,4.891489'),
(109, 'Churchill-laan 220 huis', 60, '1937-10-26', '1939-02-02', 'https://adamlink.nl/geo/address/A176892', 'Noorder Amstellaan 220', '52.34743,4.891821'),
(110, 'Mallestig', 61, NULL, '1934-03-06', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333'),
(111, 'Parnassusweg 24 II', 61, '1934-03-06', '1934-06-29', 'https://adamlink.nl/geo/address/A174239', 'Parnassusweg 24', '52.345306,4.867168'),
(112, 'Tesselschadestr 22', 61, '1934-06-29', NULL, 'https://adamlink.nl/geo/address/A137072', 'Tesselschadestraat 22', '52.362329,4.878488'),
(113, 'Mallestig', 61, '1938-04-15', NULL, 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333'),
(114, 'Tesselschadestr 22 hs', 62, '1934-06-29', NULL, 'https://adamlink.nl/geo/address/A137072', 'Tesselschadestraat 22', '52.362329,4.878488'),
(115, 'Parnassusweg 24 III', 62, '1934-03-06', '1934-06-29', 'https://adamlink.nl/geo/address/A174239', 'Parnassusweg 24', '52.345306,4.867168'),
(116, 'Mallestig (Kärnten)', 62, NULL, '1934-03-06', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333'),
(117, 'Malestig', 63, '1938-04-15', NULL, 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333'),
(118, 'Tesselschadestraat 22 huis', 63, '1934-06-29', '1938-04-15', 'https://adamlink.nl/geo/address/A137072', 'Tesselschadestraat 22', '52.362329,4.878488'),
(119, 'Parnassusweg 24 III', 63, NULL, '1934-06-29', 'https://adamlink.nl/geo/address/A174239', 'Parnassusweg 24', '52.345306,4.867168'),
(120, 'Graft de Rijp', 64, '1971-12-31', NULL, 'http://www.wikidata.org/entity/Q9919', 'Graft-De Rijp', '52.5589, 4.8417'),
(121, 'Willem van Weldammelaan 14 gelegen op 2e woonlaag', 64, NULL, '1971-12-31', 'http://bag.basisregistraties.overheid.nl/bag/id/pand/0363100012081771', 'Willem van Weldammelaan 14', '52.33054,4.87525'),
(122, 'Oostenrijk', 65, '1936-10-08', NULL, 'http://www.wikidata.org/entity/Q40', 'Oostenrijk', '47.556111, 13.781000'),
(123, 'Ciostraat 20 II', 65, '1933-09-02', NULL, 'https://adamlink.nl/geo/address/A173105', 'Cliostraat 20', '52.347561,4.875543'),
(124, 'Mallestig', 65, NULL, '1933-09-02', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333'),
(125, 'Cliostraat 20 bhs', 66, '1931-10-12', NULL, 'https://adamlink.nl/geo/address/A173105', 'Cliostraat 20', '52.347561,4.875543'),
(126, 'Salzburg', 66, NULL, '1931-10-12', 'http://www.wikidata.org/entity/Q34713', 'Salzburg', '47.7972, 13.04768'),
(127, 'Oostenrijk', 67, '1936-10-08', NULL, 'http://www.wikidata.org/entity/Q40', 'Oostenrijk', '47.556111, 13.781000'),
(128, 'Cliostraat 20  II', 67, '1933-09-02', '1936-10-08', 'https://adamlink.nl/geo/address/A173105', 'Cliostraat 20', '52.347561,4.875543'),
(129, 'Mallestig', 67, NULL, '1933-09-02', 'http://sws.geonames.org/2772043/', 'Mallestig', '46.55,13.88333'),
(130, 'Waalstr. 37 II', 68, '1939-10-31', NULL, 'https://adamlink.nl/geo/address/A178387', 'Waalstraat 37', '52.346052,4.90012'),
(131, 'Cliostraat 20 II', 68, '1931-10-12', '1939-10-31', 'https://adamlink.nl/geo/address/A173105', 'Cliostraat 20', '52.347561,4.875543'),
(132, 'Salzburg', 68, NULL, '1931-10-12', 'http://www.wikidata.org/entity/Q34713', 'Salzburg', '47.7972, 13.04768'),
(133, 'Waalstraat 37 II', 70, '1939-10-31', NULL, 'https://adamlink.nl/geo/address/A178387', 'Waalstraat 37', '52.346052,4.90012'),
(134, 'Cliostraat 20 II', 70, NULL, '1939-10-31', 'https://adamlink.nl/geo/address/A173105', 'Cliostraat 20', '52.347561,4.875543'),
(135, 'Westerbork Lager', 71, '1943-11-01', NULL, 'http://www.wikidata.org/entity/Q323420', 'Kamp Westerbork', '52.916667, 6.606944'),
(136, 'Scheldestr. 17 I', 71, NULL, '1943-11-01', 'https://adamlink.nl/geo/address/A176904', 'Scheldestraat 17', '52.347558,4.891489'),
(138, 'B.B.', 72, NULL, '1945-01-20', 'http://www.wikidata.org/entity/Q7332', 'Bergen-Belsen', '52.758899, 9.907099');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT voor een tabel `persoonsreconstructies`
--
ALTER TABLE `persoonsreconstructies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `woonadresobservaties`
--
ALTER TABLE `woonadresobservaties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
