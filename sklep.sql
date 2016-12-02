-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Gru 2016, 23:55
-- Wersja serwera: 10.1.16-MariaDB
-- Wersja PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty`
--

CREATE TABLE `karty` (
  `id_karty` int(10) UNSIGNED NOT NULL,
  `procesor_graficzny` varchar(10) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Typ` varchar(15) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Pamięć` int(11) NOT NULL COMMENT 'MHz',
  `Cena` int(11) NOT NULL COMMENT 'zł',
  `Wydajnosc` int(3) DEFAULT NULL COMMENT 'na 10 mozliwych'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `karty`
--

INSERT INTO `karty` (`id_karty`, `procesor_graficzny`, `Typ`, `Pamięć`, `Cena`, `Wydajnosc`) VALUES
(1, 'GeForce', 'GTX660', 2048, 690, 6),
(2, 'GeForce', 'GTX1050', 2048, 750, 8),
(3, 'GeForce', 'GT760', 2048, 550, 6),
(4, 'GeForce', 'GTX1060', 4096, 1220, 9),
(5, 'Radeon', 'R7', 20048, 650, 5),
(6, 'Radeon', 'R5', 2048, 450, 5),
(7, 'Radeon', 'R7', 2048, 850, 8),
(8, 'Radeon', 'R9', 4096, 2000, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `monitory`
--

CREATE TABLE `monitory` (
  `id` int(4) NOT NULL,
  `marka` varchar(10) NOT NULL,
  `ekran` int(4) NOT NULL,
  `ocena` int(2) NOT NULL,
  `cena` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `monitory`
--

INSERT INTO `monitory` (`id`, `marka`, `ekran`, `ocena`, `cena`) VALUES
(1, 'Samsung', 23, 8, 789),
(2, 'Samsung', 21, 6, 698),
(3, 'Panasonic', 22, 6, 489),
(4, 'Panasonic', 19, 6, 548),
(5, 'Asus', 21, 6, 563),
(6, 'Asus', 23, 7, 902),
(7, 'Asus', 22, 7, 900),
(8, 'Sony', 19, 5, 326),
(9, 'Sony', 25, 8, 789),
(10, 'Sony', 20, 6, 352);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pamiec_ram`
--

CREATE TABLE `pamiec_ram` (
  `id_pamieci` int(10) NOT NULL,
  `producent` varchar(15) NOT NULL,
  `taktowanie` int(10) NOT NULL,
  `pamiec` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `pamiec_ram`
--

INSERT INTO `pamiec_ram` (`id_pamieci`, `producent`, `taktowanie`, `pamiec`) VALUES
(1, 'Kingston', 1600, 2048),
(2, 'Patriot', 1333, 4096),
(3, 'Crucial', 1866, 4096),
(4, 'GoodRam', 1333, 4096),
(5, 'Corsair', 1600, 8192);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `procesory`
--

CREATE TABLE `procesory` (
  `id_procesora` int(10) NOT NULL,
  `Producent` varchar(10) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Linia` varchar(10) NOT NULL,
  `liczba_rdzeni` int(2) NOT NULL,
  `Taktowanie` int(10) NOT NULL COMMENT 'GHz',
  `Cena` int(10) NOT NULL COMMENT 'zł',
  `Wydajność` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `procesory`
--

INSERT INTO `procesory` (`id_procesora`, `Producent`, `Linia`, `liczba_rdzeni`, `Taktowanie`, `Cena`, `Wydajność`) VALUES
(1, 'Intel', 'Core i7', 4, 3300, 855, 7),
(2, 'Intel', 'Core i5', 4, 3100, 726, 6),
(3, 'Intel', 'Core i3', 2, 2800, 770, 6),
(4, 'Intel', 'Pentium 2', 1, 1500, 100, 1),
(5, 'Intel', 'Core 2 Duo', 2, 2200, 250, 4),
(6, 'Intel', 'Core i7', 4, 3500, 820, 8),
(7, 'Intel', 'Core i5', 4, 3100, 550, 7),
(8, 'AMD', 'FX-series', 8, 4700, 990, 8),
(9, 'AMD', 'A10-Series', 4, 3400, 399, 4),
(10, 'AMD', ' Phenom II', 2, 3300, 120, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zasilacze`
--

CREATE TABLE `zasilacze` (
  `id` int(3) NOT NULL,
  `Nazwa` varchar(10) NOT NULL,
  `moc` int(10) NOT NULL,
  `standard` text NOT NULL,
  `cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `zasilacze`
--

INSERT INTO `zasilacze` (`id`, `Nazwa`, `moc`, `standard`, `cena`) VALUES
(1, 'Corsair', 600, 'ATX', 423),
(2, 'MADECOM', 500, 'ATX', 350),
(3, 'Corsair', 550, 'ATX', 369),
(4, 'MADECOM', 450, 'ATX', 200),
(5, 'MADECOM', 500, 'ATX', 230),
(6, 'Corsair', 550, 'ATX', 255),
(7, 'Corsair', 600, 'ATX', 500),
(8, 'Corsair', 700, 'ATX', 523),
(9, 'Corsair', 750, 'ATX', 654),
(10, 'Corsair', 600, 'ATX', 583);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `karty`
--
ALTER TABLE `karty`
  ADD PRIMARY KEY (`id_karty`);

--
-- Indexes for table `monitory`
--
ALTER TABLE `monitory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pamiec_ram`
--
ALTER TABLE `pamiec_ram`
  ADD PRIMARY KEY (`id_pamieci`);

--
-- Indexes for table `procesory`
--
ALTER TABLE `procesory`
  ADD PRIMARY KEY (`id_procesora`);

--
-- Indexes for table `zasilacze`
--
ALTER TABLE `zasilacze`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `karty`
--
ALTER TABLE `karty`
  MODIFY `id_karty` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `monitory`
--
ALTER TABLE `monitory`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `pamiec_ram`
--
ALTER TABLE `pamiec_ram`
  MODIFY `id_pamieci` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `procesory`
--
ALTER TABLE `procesory`
  MODIFY `id_procesora` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `zasilacze`
--
ALTER TABLE `zasilacze`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
