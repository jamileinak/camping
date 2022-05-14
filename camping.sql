-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 11:51 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camping_curio`
--

-- --------------------------------------------------------

--
-- Table structure for table `gasten`
--

CREATE TABLE `gasten` (
  `id` bigint(20) NOT NULL,
  `voornaam` varchar(255) NOT NULL,
  `achternaam` varchar(255) NOT NULL,
  `adres` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `plaats` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gasten`
--

INSERT INTO `gasten` (`id`, `voornaam`, `achternaam`, `adres`, `postcode`, `plaats`, `email`) VALUES
(1, 'Ronald', 'Schouw, van der', 'De Vierkant 12', '4456ZC', 'Zierikzee', 'r.vdschouw@gmail2.com'),
(2, 'Dallas', 'Yearn', '9 Summerview Point', '96745-000', 'Charqueadas', 'dyearn1@nature.com'),
(3, 'Bobbette', 'Bountiff', '16 Lotheville Place', '79309 CEDEX', 'Bressuire', 'bbountiff2@omniture.com'),
(4, 'Red', 'Corrin', '4 Cody Way', '346018', 'Krasnoyarka', 'rcorrin3@flickr.com'),
(5, 'Kimberli', 'Bulmer', '82 Dawn Road', '3070-106', 'Corujeira', 'kbulmer4@miibeian.gov.cn'),
(6, 'Felipe', 'Fray', '42 Eastwood Point', '194089', 'Almaguer', 'ffray6@omniture.com'),
(7, 'Ellissa', 'Caudray', '95 Loeprich Junction', '77095', 'Houston', 'ecaudrayb@paginegialle.it'),
(8, 'Feodora', 'Bennoe', '39089 Carioca Hill', '84019', 'Žagar?', 'fbennoed@ow.ly'),
(9, 'Agace', 'Lory', '87 Eliot Alley', '94685 CEDEX', 'Vincennes', 'aloryg@techcrunch.com'),
(10, 'Eba', 'Chatelot', '4 Vermont Street', '646620', 'Nizhnyaya Omka', 'echatelotk@comsenz.com'),
(11, 'Alanson', 'Blaine', '24 Del Sol Alley', '694230', 'Leonidovo', 'ablainel@wikimedia.org'),
(12, 'Vivyanne', 'Ousley', '1590 Maple Wood Court', '37942 CEDEX 9', 'Tours', 'vousleym@businesswire.com'),
(13, 'Sande', 'Brundale', '1 Sundown Junction', '15286', 'Pittsburgh', 'sbrundalen@vkontakte.ru'),
(14, 'Demetri', 'Blanch', '5753 Nova Lane', '4770-565', 'Vale de São Cosme', 'dblancho@scribd.com'),
(15, 'Freemon', 'Barltrop', '99 Bunting Terrace', '8040', 'Pampierstad', 'fbarltropp@tripadvisor.com'),
(16, 'Sherrie', 'Dietzler', '3 Waubesa Street', '182460', 'Vybor', 'sdietzlers@studiopress.com'),
(17, 'Des', 'Loxdale', '952 Beilfuss Place', '3742', 'Ngaruawahia', 'dloxdaleu@goo.gl'),
(18, 'Chuck', 'Simoncini', '2 Hoffman Terrace', '191023', 'Vostok', 'csimonciniw@europa.eu'),
(19, 'Devondra', 'Erbe', '90 Melby Drive', '27000-000', 'Barra do Piraí', 'derbex@google.de'),
(20, 'Janaye', 'Orry', '9 Acker Place', '03104 CEDEX', 'Montluçon', 'jorryy@twitter.com'),
(21, 'Dalton', 'Lindsell', '00 Prentice Pass', 'J3H', 'Mont-Saint-Hilaire', 'dlindsell11@narod.ru'),
(22, 'Wye', 'Medmore', '92451 Buell Way', '76320-000', 'Santa Isabel', 'wmedmore13@examiner.com'),
(23, 'Enrique', 'Stygall', '7419 Hollow Ridge Terrace', '9715', 'Cantapoy', 'estygall16@sphinn.com'),
(24, 'Delcine', 'Leupold', '654 Harper Pass', '981 80', 'Kiruna', 'dleupold17@whitehouse.gov'),
(25, 'Baudoin', 'Kiely', '38018 Thompson Terrace', '515-2605', 'Hisai', 'bkiely19@nationalgeographic.com'),
(26, 'Luise', 'Brownscombe', '887 Hooker Crossing', '46295', 'Indianapolis', 'lbrownscombe1b@ow.ly'),
(27, 'Joell', 'Benedit', '751 Carioca Place', '055038', 'Abejorral', 'jbenedit1d@yandex.ru'),
(28, 'Richie', 'Lower', '821 Muir Lane', '601120', 'Pokrov', 'rlower1@apple.com'),
(29, 'Robbyn', 'Grealey', '4078 Coleman Lane', '07700-000', 'Caieiras', 'rgrealey4@ca.gov'),
(30, 'Wade', 'Barosch', '43 Cardinal Center', '2426', 'La Francia', 'wbarosch7@goo.ne.jp'),
(31, 'Aldon', 'Coffee', '9352 Oriole Court', '28390-000', 'Porciúncula', 'acoffee8@yandex.ru'),
(32, 'Sybyl', 'Tidswell', '16 Commercial Terrace', '2380-638', 'Vila Moreira', 'stidswell9@princeton.edu'),
(33, 'Wash', 'Flasby', '656 Pond Center', '931 77', 'Skellefteå', 'wflasbya@shop-pro.jp'),
(34, 'Loutitia', 'Blue', '9717 Randy Terrace', '3470', 'Mercedes', 'lblueb@tamu.edu'),
(35, 'Arvy', 'Keenleyside', '3857 Rigney Terrace', '2415-177', 'Ponte da Pedra', 'akeenleysidec@cpanel.net'),
(36, 'Kristyn', 'Howgate', '54 Lighthouse Bay Circle', '4142', 'Monteros', 'khowgated@miibeian.gov.cn'),
(37, 'Effie', 'Roddell', '56863 Mandrake Avenue', '872 24', 'Kramfors', 'eroddelle@ning.com'),
(38, 'Paola', 'Bosma', '83 Porter Street', '50124', 'Firenze', 'pbosmag@blog.com'),
(39, 'Birch', 'Brantzen', '3 Eliot Hill', '353866', 'Primorsko-Akhtarsk', 'bbrantzenh@amazon.com'),
(40, 'Leslie', 'Zylbermann', '0 West Point', '294 01', 'Bakov nad Jizerou', 'lzylbermannk@dion.ne.jp'),
(41, 'Blithe', 'Kimmince', '352 Arizona Parkway', '15103', 'Ait Ali', 'bkimmincel@cnbc.com'),
(42, 'Sophey', 'Bayston', '32 Calypso Road', '36740-000', 'Recreio', 'sbaystonn@bluehost.com'),
(43, 'Maddie', 'Moorey', '95589 Clemons Terrace', '3970', 'Empangeni', 'mmooreyo@cbc.ca'),
(44, 'Glenn', 'Carmody', '016 Manufacturers Alley', '26-301', 'Opoczno', 'gcarmodyq@slideshare.net'),
(45, 'Marcellus', 'Romera', '6054 Buhler Road', '59468 CEDEX', 'Lomme', 'mromeras@elegantthemes.com'),
(46, 'Iorgos', 'Drewet', '4020 Garrison Court', '33050 CEDEX', 'Bordeaux', 'idrewetu@wunderground.com'),
(47, 'Tyne', 'Dunne', '2291 Killdeer Way', '63700-000', 'Crateús', 'tdunnev@ox.ac.uk'),
(48, 'Earlie', 'Jost', '13 Bashford Point', '3560', 'Utrecht (stad)', 'ejostx@paginegialle.it'),
(49, 'Desiri', 'Chatelet', '284 Walton Center', '30240', 'Ban Huai Thalaeng', 'dchatelety@google.com.au'),
(50, 'Alaine', 'Freeberne', '1330 Little Fleur Terrace', 'N8M', 'Pilot Butte', 'afreeberne11@cdc.gov'),
(51, 'Nickie', 'Birrel', '4 Milwaukee Park', '68180-000', 'Itaituba', 'nbirrel12@huffingtonpost.com'),
(52, 'Carina', 'McPeice', '53 4th Drive', '747 44', 'B?ezová', 'cmcpeice13@paypal.com'),
(53, 'Demetris', 'Dunnett', '1 Arrowood Alley', '31600', 'Francisco Villa', 'ddunnett14@hc360.com'),
(54, 'Kalie', 'Conyard', '85 Transport Hill', '3307', 'Dapitan', 'kconyard15@ucsd.edu'),
(55, 'Cassi', 'Reglar', '7 Farmco Street', '3740', 'Quimilí', 'creglar18@cnn.com'),
(56, 'Breena', 'Cobain', '155 Jenna Hill', '422343', 'Sokol’niki', 'bcobain19@phpbb.com'),
(57, 'Berna', 'Glaum', '36380 Anzinger Junction', '9504', 'Matagbak', 'bglaum1d@tinypic.com');

-- --------------------------------------------------------

--
-- Table structure for table `plaatsen`
--

CREATE TABLE `plaatsen` (
  `id` bigint(20) NOT NULL,
  `code` varchar(5) NOT NULL,
  `plaats_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plaatsen`
--

INSERT INTO `plaatsen` (`id`, `code`, `plaats_type_id`) VALUES
(1, 'S34', 4),
(2, 'S35', 4),
(3, 'S36', 4),
(4, 'S38', 1),
(5, 'S39', 1),
(6, 'S40', 1),
(7, 'S45', 2),
(8, 'S47', 2),
(9, 'S49', 3),
(10, 'S51', 3),
(11, 'S52', 4),
(12, 'S53', 4),
(13, 'S54', 2),
(14, 'S55', 1),
(15, 'S74', 3),
(16, 'S75', 3);

-- --------------------------------------------------------

--
-- Table structure for table `plaatstypen`
--

CREATE TABLE `plaatstypen` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `prijs` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plaatstypen`
--

INSERT INTO `plaatstypen` (`id`, `type`, `prijs`) VALUES
(1, 'Tent', '5.00'),
(2, 'Caravan', '7.00'),
(3, 'Camper', '7.00'),
(4, 'Stacaravan', '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `reserveringen`
--

CREATE TABLE `reserveringen` (
  `id` bigint(20) NOT NULL,
  `gast_id` bigint(20) NOT NULL,
  `plaats_id` bigint(20) NOT NULL,
  `datum_van` date NOT NULL,
  `datum_tot` date NOT NULL,
  `auto` tinyint(2) NOT NULL,
  `personen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserveringen`
--

INSERT INTO `reserveringen` (`id`, `gast_id`, `plaats_id`, `datum_van`, `datum_tot`, `auto`, `personen`) VALUES
(1, 1, 1, '2022-03-15', '2022-03-23', 1, 4),
(2, 56, 4, '2022-04-03', '2022-04-08', 0, 2),
(3, 53, 11, '2022-04-17', '2022-04-22', 2, 6),
(4, 43, 15, '2022-06-13', '2022-06-22', 1, 2),
(5, 15, 8, '2022-05-24', '2022-05-30', 1, 4),
(6, 56, 3, '2022-02-08', '2022-02-17', 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gasten`
--
ALTER TABLE `gasten`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `plaatsen`
--
ALTER TABLE `plaatsen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plaatsen_plaatstypen` (`plaats_type_id`);

--
-- Indexes for table `plaatstypen`
--
ALTER TABLE `plaatstypen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserveringen`
--
ALTER TABLE `reserveringen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservering_gast` (`gast_id`),
  ADD KEY `reserveringen_plaats` (`plaats_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gasten`
--
ALTER TABLE `gasten`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `plaatsen`
--
ALTER TABLE `plaatsen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `plaatstypen`
--
ALTER TABLE `plaatstypen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reserveringen`
--
ALTER TABLE `reserveringen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `plaatsen`
--
ALTER TABLE `plaatsen`
  ADD CONSTRAINT `plaatsen_plaatstypen` FOREIGN KEY (`plaats_type_id`) REFERENCES `plaatstypen` (`id`);

--
-- Constraints for table `reserveringen`
--
ALTER TABLE `reserveringen`
  ADD CONSTRAINT `reservering_gast` FOREIGN KEY (`gast_id`) REFERENCES `gasten` (`id`),
  ADD CONSTRAINT `reserveringen_plaats` FOREIGN KEY (`plaats_id`) REFERENCES `plaatsen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
