-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Ápr 03. 08:46
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kozvetito2025`
--
CREATE DATABASE IF NOT EXISTS `kozvetito2025` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `kozvetito2025`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ajanlat`
--

CREATE TABLE `ajanlat` (
  `ajanlat_id` int(11) NOT NULL,
  `ajanlat_ingatlanid` int(11) NOT NULL,
  `ajanlat_osszeg` float NOT NULL,
  `ajanlat_nev` varchar(255) NOT NULL,
  `ajanlat_telefon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ajanlat`
--

INSERT INTO `ajanlat` (`ajanlat_id`, `ajanlat_ingatlanid`, `ajanlat_osszeg`, `ajanlat_nev`, `ajanlat_telefon`) VALUES
(1, 1, 42.5, 'Holló Hedvig', '06-20-345-66-66');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hirdetes`
--

CREATE TABLE `hirdetes` (
  `hirdetes_id` int(11) NOT NULL,
  `ingatlanid` int(11) NOT NULL,
  `ar` float NOT NULL,
  `allapot` varchar(255) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `hirdetes`
--

INSERT INTO `hirdetes` (`hirdetes_id`, `ingatlanid`, `ar`, `allapot`, `datum`) VALUES
(57, 1, 75.1, 'módosítva', '2021-05-16'),
(58, 1, 77.4, 'meghirdetve', '2020-10-20'),
(59, 1, 75.1, 'eladva', '2021-06-24'),
(60, 2, 8.12, 'meghirdetve', '2021-09-29'),
(61, 2, 7.56, 'eladva', '2022-06-12'),
(62, 2, 7.88, 'módosítva', '2022-04-04'),
(63, 3, 8.07, 'meghirdetve', '2021-01-02'),
(64, 3, 7.69, 'eladva', '2021-04-10'),
(65, 4, 38.4, 'meghirdetve', '2021-05-19'),
(66, 4, 38.4, 'eladva', '2021-06-17'),
(67, 5, 13.5, 'meghirdetve', '2022-01-20'),
(68, 5, 12, 'eladva', '2022-11-05'),
(69, 5, 12.6, 'módosítva', '2022-08-07'),
(70, 6, 69.5, 'meghirdetve', '2022-04-04'),
(71, 6, 64.7, 'eladva', '2022-05-12'),
(72, 7, 62.3, 'módosítva', '2023-07-16'),
(73, 7, 66.7, 'meghirdetve', '2023-01-04'),
(74, 8, 47.4, 'meghirdetve', '2020-03-27'),
(75, 8, 46.2, 'eladva', '2020-11-06'),
(76, 8, 46.2, 'módosítva', '2020-10-23'),
(77, 9, 19.8, 'módosítva', '2022-03-29'),
(78, 9, 21, 'meghirdetve', '2021-10-13'),
(79, 9, 19.4, 'eladva', '2022-11-27'),
(80, 9, 19.4, 'módosítva', '2022-09-21'),
(81, 10, 82.5, 'meghirdetve', '2021-10-12'),
(82, 10, 82.5, 'eladva', '2021-11-07'),
(83, 11, 9.29, 'eladva', '2021-05-18'),
(84, 11, 10.3, 'módosítva', '2020-11-16'),
(85, 11, 9.66, 'módosítva', '2021-04-17'),
(86, 11, 11, 'meghirdetve', '2020-04-25'),
(87, 12, 84.7, 'meghirdetve', '2022-04-19'),
(88, 12, 79.3, 'módosítva', '2022-10-17'),
(89, 13, 96, 'meghirdetve', '2021-03-10'),
(90, 13, 83.8, 'módosítva', '2022-03-25'),
(91, 13, 88.9, 'módosítva', '2021-09-04'),
(92, 14, 45.5, 'meghirdetve', '2021-12-20'),
(93, 14, 45.5, 'eladva', '2022-03-13'),
(94, 15, 74.6, 'meghirdetve', '2021-06-21'),
(95, 16, 38, 'meghirdetve', '2021-07-11'),
(96, 16, 35.7, 'eladva', '2021-09-06'),
(97, 17, 65.9, 'meghirdetve', '2020-07-08'),
(98, 17, 63.3, 'módosítva', '2020-12-15'),
(99, 18, 24.6, 'meghirdetve', '2020-10-11'),
(100, 18, 24.1, 'módosítva', '2021-04-16'),
(101, 18, 22.6, 'eladva', '2021-07-24'),
(102, 19, 51.1, 'meghirdetve', '2022-01-12'),
(103, 19, 51.1, 'eladva', '2022-03-17'),
(104, 20, 102.1, 'eladva', '2022-10-03'),
(105, 20, 102.1, 'meghirdetve', '2022-09-02'),
(106, 21, 52.1, 'módosítva', '2022-05-05'),
(107, 21, 55, 'meghirdetve', '2021-11-17'),
(108, 21, 48.9, 'módosítva', '2022-10-26'),
(109, 22, 30.9, 'meghirdetve', '2022-10-19'),
(110, 23, 23.4, 'meghirdetve', '2020-08-17'),
(111, 23, 22.9, 'módosítva', '2021-02-23'),
(112, 24, 6.22, 'meghirdetve', '2022-06-04'),
(113, 24, 5.94, 'módosítva', '2022-11-16'),
(114, 25, 74.5, 'eladva', '2020-09-08'),
(115, 25, 77.3, 'meghirdetve', '2020-02-27'),
(116, 25, 74.5, 'módosítva', '2020-08-25'),
(117, 26, 20.8, 'módosítva', '2021-10-30'),
(118, 26, 21.6, 'meghirdetve', '2021-05-11'),
(119, 27, 8.18, 'meghirdetve', '2023-03-03'),
(120, 28, 48.1, 'eladva', '2020-10-19'),
(121, 28, 48.1, 'meghirdetve', '2020-07-01'),
(122, 29, 59.3, 'meghirdetve', '2023-01-31'),
(123, 29, 59.3, 'eladva', '2023-03-23'),
(124, 30, 109.5, 'eladva', '2022-04-03'),
(125, 30, 109.5, 'módosítva', '2022-03-13'),
(126, 30, 112.5, 'meghirdetve', '2021-08-18'),
(127, 31, 11.9, 'módosítva', '2023-07-03'),
(128, 31, 12.4, 'meghirdetve', '2022-12-31'),
(129, 32, 9.84, 'meghirdetve', '2020-05-25'),
(130, 32, 9.46, 'eladva', '2020-09-12'),
(131, 33, 7.44, 'meghirdetve', '2021-05-15'),
(132, 33, 7.21, 'eladva', '2021-08-04'),
(133, 34, 8.05, 'meghirdetve', '2021-07-09'),
(134, 34, 8.05, 'eladva', '2021-10-13'),
(135, 35, 4.56, 'meghirdetve', '2022-03-17'),
(136, 35, 4.56, 'eladva', '2022-06-12');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ingatlan`
--

CREATE TABLE `ingatlan` (
  `ingatlan_id` int(11) NOT NULL,
  `kozterulet` varchar(255) NOT NULL,
  `hazszam` varchar(10) NOT NULL,
  `lakas` tinyint(4) NOT NULL,
  `falazat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ingatlan`
--

INSERT INTO `ingatlan` (`ingatlan_id`, `kozterulet`, `hazszam`, `lakas`, `falazat`) VALUES
(1, 'Petőfi utca', '12', 0, 'Tégla'),
(2, 'Kossuth tér', '5', 1, 'Panel'),
(3, 'Rákóczi út', '8', 0, 'Tégla'),
(4, 'Szabadság utca', '22', 0, 'Fa'),
(5, 'Dózsa György út', '10', 1, 'Panel'),
(6, 'Arany János utca', '3', 0, 'Tégla'),
(7, 'Bartók Béla út', '7', 0, 'Habbeton'),
(8, 'Jókai tér', '15', 1, 'Panel'),
(9, 'Ady Endre utca', '4', 0, 'Tégla'),
(10, 'Deák Ferenc tér', '9', 0, 'Kő'),
(11, 'Hunyadi utca', '14', 0, 'Tégla'),
(12, 'Szent István út', '30', 0, 'Fa'),
(13, 'Bajcsy-Zsilinszky utca', '11', 1, 'Panel'),
(14, 'Batthyány tér', '6', 0, 'Vasbeton'),
(15, 'Széchenyi út', '18', 0, 'Vályog'),
(16, 'Táncsics Mihály utca', '20', 1, 'Panel'),
(17, 'Kazinczy utca', '25', 0, 'Tégla'),
(18, 'Munkácsy Mihály tér', '2', 0, 'Kő'),
(19, 'Vörösmarty utca', '19', 0, 'Poroton'),
(20, 'Radnóti Miklós utca', '16', 0, 'Fa'),
(21, 'Móra Ferenc tér', '8', 1, 'Panel'),
(22, 'Aranykéz utca', '5', 0, 'Tégla'),
(23, 'Károly körút', '27', 0, 'Vályog'),
(24, 'Erzsébet körút', '13', 1, 'Panel'),
(25, 'József Attila utca', '21', 0, 'Tégla'),
(26, 'Bem József utca', '17', 0, 'Üvegbeton'),
(27, 'Csokonai utca', '22', 0, 'Fa'),
(28, 'Kölcsey Ferenc tér', '6', 1, 'Panel'),
(29, 'Toldi Miklós utca', '9', 0, 'Vályog'),
(30, 'Wesselényi utca', '24', 0, 'Kő'),
(31, 'Hősök tere', '5', 0, 'Ytong'),
(32, 'Margit körút', '12', 0, 'Ytong'),
(33, 'Andrássy út', '8', 0, 'Ytong'),
(34, 'Ferenciek tere', '10', 0, 'Kerámia'),
(35, 'Váci utca', '3', 0, 'Ytong');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ajanlat`
--
ALTER TABLE `ajanlat`
  ADD PRIMARY KEY (`ajanlat_id`),
  ADD KEY `ajanlat_ingatlanid` (`ajanlat_ingatlanid`);

--
-- A tábla indexei `hirdetes`
--
ALTER TABLE `hirdetes`
  ADD PRIMARY KEY (`hirdetes_id`),
  ADD KEY `ingatlanid` (`ingatlanid`);

--
-- A tábla indexei `ingatlan`
--
ALTER TABLE `ingatlan`
  ADD PRIMARY KEY (`ingatlan_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ajanlat`
--
ALTER TABLE `ajanlat`
  MODIFY `ajanlat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `hirdetes`
--
ALTER TABLE `hirdetes`
  MODIFY `hirdetes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT a táblához `ingatlan`
--
ALTER TABLE `ingatlan`
  MODIFY `ingatlan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `ajanlat`
--
ALTER TABLE `ajanlat`
  ADD CONSTRAINT `ajanlat_ibfk_1` FOREIGN KEY (`ajanlat_ingatlanid`) REFERENCES `ingatlan` (`ingatlan_id`);

--
-- Megkötések a táblához `hirdetes`
--
ALTER TABLE `hirdetes`
  ADD CONSTRAINT `hirdetes_ibfk_1` FOREIGN KEY (`ingatlanid`) REFERENCES `ingatlan` (`ingatlan_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
