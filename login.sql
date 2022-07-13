-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mai 15, 2022 la 05:07 AM
-- Versiune server: 10.4.22-MariaDB
-- Versiune PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `login`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `login`
--

INSERT INTO `login` (`username`, `pass`) VALUES
('ani', 'MD5(ina)'),
('', 'MD5()'),
('ana', 'MD5(ana)'),
('maria', 'MD5(ina)'),
('mariaba', 'MD5(adda)'),
('adadf', 'MD5(adsfqf)'),
('nvhv', 'MD5(bjbj)'),
('fasdf', 'MD5(DFDV)'),
('sgdn', 'MD5(sFbdf)'),
('sfgbdfsd', 'MD5(dfhbf)'),
('dfvsas', 'MD5(adbdfc)'),
('vsDV', 'MD5(AFVF)'),
('wsvf', 'MD5(sfvvs)'),
('slknv', 'MD5(sfgad)');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `link` varchar(200) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `imagine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `product`
--

INSERT INTO `product` (`id`, `link`, `title`, `description`, `imagine`) VALUES
(1, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd', 'Plafoniera LED integrat,36W Diam 230mm, aplica led', 'Cumpara Plafoniera LED integrat,36W Diam 230mm, ap', ''),
(3, 'https://www.emag.ro/plafoniera-led-integrat-50w-aplica-led-baie-mat-dreptunghiulara-lumina-alb-rece-baie-dreptunghiulara-50w/pd/DYT3T3MBM/?ref=graph_profiled_similar_1_4&provider=rec&recid=rec_49_613b', 'Plafoniera LED integrat,50W, aplica led baie mat d', 'Cumpara Plafoniera LED integrat,50W, aplica led ba', 'https://s13emagst.akamaized.net/products/28602/286'),
(5, 'https://www.emag.ro/plafoniera-led-integrat-48w-aplica-led-baie-mat-round-lumina-alb-rece-diametru-30cm-aplica-baie-round-48w-30cm/pd/DMT3T3MBM/?ref=graph_profiled_similar_1_4&provider=rec&recid=rec_4', 'Plafoniera LED integrat,48W, aplica led baie mat r', 'Cumpara Plafoniera LED integrat,48W, aplica led ba', 'https://s13emagst.akamaized.net/products/31612/316');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wishlist`
--

CREATE TABLE `wishlist` (
  `username` varchar(20) NOT NULL,
  `id` int(20) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `wishlist`
--

INSERT INTO `wishlist` (`username`, `id`, `link`) VALUES
('ana', 10, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 11, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 12, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 13, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 14, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 15, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 16, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 17, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 18, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 19, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 20, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 21, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 22, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 23, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 24, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 25, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 26, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 27, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 28, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 29, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 30, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 31, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 32, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 33, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 34, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 35, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 36, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 37, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 38, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 39, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 40, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 41, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 42, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 43, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 44, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 45, 'https://www.emag.ro/plafoniera-led-integrat-50w-aplica-led-baie-mat-dreptunghiulara-lumina-alb-rece-baie-dreptunghiulara-50w/pd/DYT3T3MBM/?ref=graph_profiled_similar_1_4&provider=rec&recid=rec_49_613b'),
('ana', 46, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 47, 'https://www.emag.ro/plafoniera-led-integrat-36w-diam-230mm-aplica-led-mat-round-lumina-alb-rece-baie-36w-round/pd/DVMYNFMBM/?ref=keep_shopping_for_1_2&provider=rec&recid=rec_65_3ce5607d7680355229df0dd'),
('ana', 48, 'https://www.emag.ro/plafoniera-led-integrat-50w-aplica-led-baie-mat-dreptunghiulara-lumina-alb-rece-baie-dreptunghiulara-50w/pd/DYT3T3MBM/?ref=graph_profiled_similar_1_4&provider=rec&recid=rec_49_613b'),
('ana', 49, 'https://www.emag.ro/plafoniera-led-integrat-50w-aplica-led-baie-mat-dreptunghiulara-lumina-alb-rece-baie-dreptunghiulara-50w/pd/DYT3T3MBM/?ref=graph_profiled_similar_1_4&provider=rec&recid=rec_49_613b'),
('ana', 50, 'https://www.emag.ro/plafoniera-led-integrat-48w-aplica-led-baie-mat-round-lumina-alb-rece-diametru-30cm-aplica-baie-round-48w-30cm/pd/DMT3T3MBM/?ref=graph_profiled_similar_1_4&provider=rec&recid=rec_4'),
('ana', 51, 'https://www.emag.ro/plafoniera-led-integrat-48w-aplica-led-baie-mat-round-lumina-alb-rece-diametru-30cm-aplica-baie-round-48w-30cm/pd/DMT3T3MBM/?ref=graph_profiled_similar_1_4&provider=rec&recid=rec_4'),
('ana', 52, 'https://www.emag.ro/plafoniera-led-integrat-48w-aplica-led-baie-mat-round-lumina-alb-rece-diametru-30cm-aplica-baie-round-48w-30cm/pd/DMT3T3MBM/?ref=graph_profiled_similar_1_4&provider=rec&recid=rec_4'),
('ana', 53, 'https://www.emag.ro/plafoniera-led-integrat-48w-aplica-led-baie-mat-round-lumina-alb-rece-diametru-30cm-aplica-baie-round-48w-30cm/pd/DMT3T3MBM/?ref=graph_profiled_similar_1_4&provider=rec&recid=rec_4');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `login`
--
ALTER TABLE `login`
  ADD KEY `index_name` (`username`);

--
-- Indexuri pentru tabele `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`);

--
-- Indexuri pentru tabele `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_name` (`username`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pentru tabele `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`username`) REFERENCES `login` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
