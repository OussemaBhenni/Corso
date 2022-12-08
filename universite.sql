-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 09:57 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universite`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `Id` int(5) NOT NULL,
  `Nom` varchar(20) DEFAULT NULL,
  `Prenom` varchar(20) DEFAULT NULL,
  `Cin` int(20) DEFAULT NULL,
  `Age` int(20) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Sexe` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`Id`, `Nom`, `Prenom`, `Cin`, `Age`, `Email`, `Sexe`) VALUES
(2, 'Earl', 'Schooling', 2844515, 31, 'eschooling1@g.co', 'Male'),
(3, 'Erskine', 'Dyball', 4970574, 50, 'edyball2@google.com.au', 'Male'),
(4, 'Georgena', 'Oldershaw', 11173632, 54, 'goldershaw3@yale.edu', 'Female'),
(5, 'Phelia', 'Akerman', 10104576, 33, 'pakerman4@cbslocal.com', 'Female'),
(6, 'Archibaldo', 'Bytheway', 1364590, 29, 'abytheway5@baidu.com', 'Male'),
(7, 'Tobe', 'Nail', 9113973, 52, 'tnail6@businesswire.com', 'Female'),
(8, 'Garald', 'Popley', 2540318, 19, 'gpopley7@wikipedia.org', 'Male'),
(9, 'Bellina', 'Pering', 11937540, 50, 'bpering8@phoca.cz', 'Female'),
(10, 'Mikol', 'Hengoed', 4630080, 29, 'mhengoed9@miitbeian.gov.cn', 'Male'),
(11, 'Lamond', 'Hallam', 2043407, 28, 'lhallama@blogger.com', 'Male'),
(12, 'Bailie', 'Grindlay', 6569857, 50, 'bgrindlayb@china.com.cn', 'Male'),
(13, 'Noam', 'Dudson', 2569287, 37, 'ndudsonc@tmall.com', 'Male'),
(14, 'Meryl', 'Parrington', 5495169, 33, 'mparringtond@europa.eu', 'Female'),
(15, 'Marin', 'Batham', 2570932, 43, 'mbathame@spotify.com', 'Female'),
(16, 'Lari', 'Dugmore', 10867478, 40, 'ldugmoref@ask.com', 'Female'),
(17, 'Merl', 'Haddrill', 4376074, 49, 'mhaddrillg@nifty.com', 'Female'),
(18, 'Lilah', 'Boydle', 6598699, 48, 'lboydleh@wikimedia.org', 'Female'),
(19, 'Averell', 'Gerish', 8186589, 32, 'agerishi@ustream.tv', 'Male'),
(20, 'Zena', 'Worsall', 8777047, 30, 'zworsallj@bbc.co.uk', 'Female'),
(21, 'Sacha', 'Brower', 1456755, 45, 'sbrowerk@feedburner.com', 'Female'),
(22, 'Witty', 'Denkin', 11932882, 25, 'wdenkinl@hud.gov', 'Male'),
(23, 'Michaela', 'Jex', 4855167, 38, 'mjexm@wordpress.org', 'Female'),
(24, 'Cloris', 'Esbrook', 4004318, 51, 'cesbrookn@imdb.com', 'Female'),
(25, 'Cully', 'Foard', 6992563, 26, 'cfoardo@wikispaces.com', 'Male'),
(26, 'Ulric', 'Pidgeon', 7734977, 27, 'upidgeonp@theguardian.com', 'Male'),
(27, 'Jordanna', 'Binham', 5549153, 23, 'jbinhamq@163.com', 'Female'),
(28, 'Lynnea', 'Schultes', 6690972, 39, 'lschultesr@vk.com', 'Female'),
(29, 'Gill', 'Dreher', 5521922, 40, 'gdrehers@parallels.com', 'Female'),
(30, 'Kendrick', 'Aston', 9055192, 18, 'kastont@csmonitor.com', 'Male'),
(31, 'Dolli', 'Stonelake', 4015588, 29, 'dstonelakeu@ox.ac.uk', 'Female'),
(32, 'Shir', 'Byrom', 3438501, 52, 'sbyromv@wsj.com', 'Female'),
(33, 'Lark', 'Clayton', 2974960, 58, 'lclaytonw@indiegogo.com', 'Female'),
(34, 'Torrin', 'Cantillon', 1409075, 29, 'tcantillonx@rakuten.co.jp', 'Male'),
(35, 'Melloney', 'Krolak', 2497276, 48, 'mkrolaky@apache.org', 'Female'),
(36, 'Lanita', 'O\'Downe', 10173819, 56, 'lodownez@boston.com', 'Female'),
(37, 'Florella', 'Cartman', 9976895, 45, 'fcartman10@imageshack.us', 'Female'),
(38, 'Cristen', 'Blackwell', 2402546, 42, 'cblackwell11@google.ru', 'Female'),
(39, 'Rhea', 'Putterill', 1196112, 37, 'rputterill12@seesaa.net', 'Female'),
(40, 'Trudey', 'Canepe', 11665143, 45, 'tcanepe13@twitpic.com', 'Female'),
(41, 'Antonio', 'Castille', 6255694, 57, 'acastille14@facebook.com', 'Male'),
(42, 'Laverne', 'Dufaur', 2403898, 59, 'ldufaur15@europa.eu', 'Female'),
(43, 'Morissa', 'Kirckman', 5773049, 21, 'mkirckman16@npr.org', 'Female'),
(44, 'Chrystal', 'Hughlin', 1226939, 60, 'chughlin17@smh.com.au', 'Female'),
(45, 'Normand', 'Bolding', 8280035, 22, 'nbolding18@sourceforge.net', 'Male'),
(46, 'Klarrisa', 'Dollar', 6509762, 38, 'kdollar19@miitbeian.gov.cn', 'Female'),
(47, 'Bee', 'Stuchbery', 11868303, 42, 'bstuchbery1a@studiopress.com', 'Female'),
(48, 'Frederik', 'Perone', 10759997, 47, 'fperone1b@is.gd', 'Male'),
(49, 'Baldwin', 'Huggons', 3663915, 44, 'bhuggons1c@reference.com', 'Male'),
(50, 'Myrtice', 'Edgerly', 5645251, 58, 'medgerly1d@mtv.com', 'Female'),
(51, 'Silvester', 'Payn', 1427550, 45, 'spayn1e@csmonitor.com', 'Male'),
(52, 'Hatty', 'Goldspink', 8965756, 52, 'hgoldspink1f@dot.gov', 'Female'),
(53, 'Larissa', 'Anfonsi', 6060468, 54, 'lanfonsi1g@hostgator.com', 'Female'),
(54, 'Cassie', 'Delle', 9056815, 34, 'cdelle1h@drupal.org', 'Female'),
(55, 'Cristal', 'Courtin', 5691857, 51, 'ccourtin1i@uol.com.br', 'Female'),
(56, 'Kennie', 'Mc Menamin', 8664840, 37, 'kmcmenamin1j@livejournal.com', 'Male'),
(57, 'Evangelina', 'Aldrick', 4709821, 39, 'ealdrick1k@auda.org.au', 'Female'),
(58, 'Dedie', 'Agronski', 11539025, 34, 'dagronski1l@posterous.com', 'Female'),
(59, 'Brantley', 'Gallifont', 1665798, 24, 'bgallifont1m@vistaprint.com', 'Male'),
(60, 'Marysa', 'Baynham', 11869921, 45, 'mbaynham1n@edublogs.org', 'Female'),
(61, 'Sofie', 'Boardman', 11847786, 45, 'sboardman1o@examiner.com', 'Female'),
(62, 'Doralynne', 'Ranyard', 6169084, 48, 'dranyard1p@gravatar.com', 'Female'),
(63, 'Randolph', 'Nuscha', 6951301, 26, 'rnuscha1q@slashdot.org', 'Male'),
(64, 'Angeli', 'Tack', 2853802, 41, 'atack1r@amazon.com', 'Male'),
(65, 'Miguelita', 'Brownscombe', 10835004, 54, 'mbrownscombe1s@infoseek.co.jp', 'Female'),
(66, 'Damiano', 'Eastham', 6531593, 21, 'deastham1t@edublogs.org', 'Male'),
(67, 'Saundra', 'Grahlman', 9873036, 47, 'sgrahlman1u@simplemachines.org', 'Female'),
(68, 'Tamma', 'McCambrois', 9008358, 40, 'tmccambrois1v@ycombinator.com', 'Female'),
(69, 'Agatha', 'Whitehall', 3768581, 56, 'awhitehall1w@slashdot.org', 'Female'),
(70, 'Kerwinn', 'Dilland', 2672414, 38, 'kdilland1x@mozilla.org', 'Male'),
(71, 'Linn', 'Richarz', 10664462, 34, 'lricharz1y@chron.com', 'Male'),
(72, 'Peder', 'Yetman', 6796842, 22, 'pyetman1z@samsung.com', 'Male'),
(73, 'Templeton', 'Birtwisle', 10349796, 40, 'tbirtwisle20@reference.com', 'Male'),
(74, 'Pren', 'Ackermann', 8002645, 48, 'packermann21@booking.com', 'Male'),
(75, 'Siffre', 'Scamerden', 1004455, 42, 'sscamerden22@discuz.net', 'Male'),
(76, 'Morty', 'Crannis', 4175710, 20, 'mcrannis23@newsvine.com', 'Male'),
(77, 'Birgit', 'Gumery', 11256872, 23, 'bgumery24@cisco.com', 'Female'),
(78, 'Skip', 'Jewis', 5436043, 40, 'sjewis25@seattletimes.com', 'Male'),
(79, 'Leticia', 'Stode', 6288846, 56, 'lstode26@xrea.com', 'Female'),
(80, 'Thorsten', 'Tunsley', 5436105, 38, 'ttunsley27@go.com', 'Male'),
(81, 'Emmit', 'Bottrell', 5735630, 47, 'ebottrell28@woothemes.com', 'Male'),
(82, 'Celestina', 'Bowden', 7517437, 46, 'cbowden29@hexun.com', 'Female'),
(83, 'Hamel', 'Womack', 4795733, 40, 'hwomack2a@aboutads.info', 'Male'),
(84, 'Merwyn', 'Bescoby', 3163812, 40, 'mbescoby2b@cdc.gov', 'Male'),
(85, 'Penelope', 'Ricks', 10396275, 45, 'pricks2c@chicagotribune.com', 'Female'),
(86, 'Bobbi', 'Edeler', 3066095, 19, 'bedeler2d@clickbank.net', 'Female'),
(87, 'Wilton', 'Gotliffe', 10501883, 29, 'wgotliffe2e@samsung.com', 'Male'),
(88, 'Jarid', 'Fenwick', 9624764, 23, 'jfenwick2f@springer.com', 'Male'),
(89, 'Ricardo', 'Havoc', 11958723, 21, 'rhavoc2g@mediafire.com', 'Male'),
(90, 'Woodman', 'Beaford', 6734307, 57, 'wbeaford2h@vkontakte.ru', 'Male'),
(91, 'Claudette', 'Barlas', 3519520, 27, 'cbarlas2i@addthis.com', 'Female'),
(92, 'Leonidas', 'Bedells', 3250585, 40, 'lbedells2j@wordpress.org', 'Male'),
(93, 'Florence', 'Ludye', 8145919, 42, 'fludye2k@amazon.co.jp', 'Female'),
(94, 'Emilie', 'Troughton', 1707973, 30, 'etroughton2l@soundcloud.com', 'Female'),
(95, 'Clarette', 'Joron', 11779518, 19, 'cjoron2m@icq.com', 'Female'),
(96, 'Jamil', 'Sacase', 4067327, 60, 'jsacase2n@dropbox.com', 'Male'),
(97, 'Omero', 'Threadkell', 9559084, 25, 'othreadkell2o@amazon.de', 'Male'),
(98, 'Pearl', 'Blore', 10658786, 58, 'pblore2p@weibo.com', 'Female'),
(99, 'Freddie', 'Climo', 1231802, 51, 'fclimo2q@vk.com', 'Female'),
(100, 'Wood', 'Drews', 11267445, 34, 'wdrews2r@edublogs.org', 'Male'),
(101, 'Kristine', 'Ronisch', 8630200, 40, 'kronisch2s@yolasite.com', 'Female'),
(102, 'Ardyce', 'Finby', 6550472, 31, 'afinby2t@squarespace.com', 'Female'),
(103, 'Edd', 'Farmiloe', 10470651, 41, 'efarmiloe2u@sakura.ne.jp', 'Male'),
(104, 'Granger', 'Burdfield', 11644643, 51, 'gburdfield2v@wikispaces.com', 'Male'),
(105, 'Quincy', 'Robic', 7326444, 38, 'qrobic2w@comsenz.com', 'Male'),
(106, 'Malanie', 'Cutress', 10384951, 19, 'mcutress2x@jugem.jp', 'Female'),
(107, 'Thea', 'Esley', 6567787, 24, 'tesley2y@usa.gov', 'Female'),
(108, 'Humfrey', 'Jerred', 6864957, 20, 'hjerred2z@spiegel.de', 'Male'),
(109, 'Winfield', 'Squibe', 2026069, 60, 'wsquibe30@uol.com.br', 'Male'),
(110, 'Charo', 'Simo', 6698331, 55, 'csimo31@digg.com', 'Female'),
(111, 'Vasily', 'Chaudhry', 3649977, 56, 'vchaudhry32@homestead.com', 'Male'),
(112, 'Skye', 'Aslen', 3634689, 46, 'saslen33@ow.ly', 'Male'),
(113, 'Gigi', 'Cristofolo', 1657327, 20, 'gcristofolo34@elegantthemes.com', 'Female'),
(114, 'Nickolaus', 'Domotor', 1688877, 56, 'ndomotor35@angelfire.com', 'Male'),
(115, 'Tailor', 'Nelle', 6226431, 46, 'tnelle36@addthis.com', 'Male'),
(116, 'Moshe', 'Perrinchief', 6387873, 47, 'mperrinchief37@imageshack.us', 'Male'),
(117, 'Goddart', 'Parsand', 4363166, 25, 'gparsand38@cnet.com', 'Male'),
(118, 'Kym', 'Noller', 10496442, 54, 'knoller39@xinhuanet.com', 'Female'),
(119, 'Storm', 'Ilewicz', 4869902, 45, 'silewicz3a@rambler.ru', 'Female'),
(120, 'Drake', 'Melanaphy', 6270798, 41, 'dmelanaphy3b@bizjournals.com', 'Male'),
(121, 'Beverlie', 'Lamberti', 11322440, 50, 'blamberti3c@mapquest.com', 'Female'),
(122, 'Ardelle', 'Woolaghan', 10166677, 49, 'awoolaghan3d@cbc.ca', 'Female'),
(123, 'Mohandis', 'Grahamslaw', 5421792, 39, 'mgrahamslaw3e@desdev.cn', 'Male'),
(124, 'Benedetto', 'Crosbie', 2082128, 37, 'bcrosbie3f@smh.com.au', 'Male'),
(125, 'Rachel', 'Strathearn', 3868782, 57, 'rstrathearn3g@shinystat.com', 'Female'),
(126, 'Vivie', 'Aggas', 9561264, 53, 'vaggas3h@apple.com', 'Female'),
(127, 'Keir', 'Casarino', 4848208, 18, 'kcasarino3i@goo.gl', 'Male'),
(128, 'Wayland', 'Hugueville', 1624292, 29, 'whugueville3j@craigslist.org', 'Male'),
(129, 'Lane', 'Ewestace', 11199262, 39, 'lewestace3k@home.pl', 'Male'),
(130, 'Stephan', 'Tilbrook', 11080826, 45, 'stilbrook3l@nih.gov', 'Male'),
(131, 'Waldon', 'O\'Lyhane', 10057847, 59, 'wolyhane3m@ehow.com', 'Male'),
(132, 'Carolyne', 'Keeler', 5160532, 60, 'ckeeler3n@e-recht24.de', 'Female'),
(133, 'Timi', 'Essberger', 10180033, 19, 'tessberger3o@cafepress.com', 'Female'),
(134, 'Guntar', 'Clearie', 8096547, 47, 'gclearie3p@canalblog.com', 'Male'),
(135, 'Kerry', 'Murrison', 8416132, 53, 'kmurrison3q@google.co.jp', 'Male'),
(136, 'Claudell', 'Messiter', 8162066, 54, 'cmessiter3r@dagondesign.com', 'Male'),
(137, 'Jessamyn', 'Inseal', 6903075, 40, 'jinseal3s@163.com', 'Female'),
(138, 'Felizio', 'Bagley', 11902828, 53, 'fbagley3t@cocolog-nifty.com', 'Male'),
(139, 'Peg', 'Battin', 8045598, 31, 'pbattin3u@hibu.com', 'Female'),
(140, 'Ruttger', 'Fry', 4646283, 42, 'rfry3v@blogger.com', 'Male'),
(141, 'Nicolette', 'Buckhurst', 1920652, 39, 'nbuckhurst3w@angelfire.com', 'Female'),
(142, 'Rolfe', 'Hastler', 1623955, 41, 'rhastler3x@utexas.edu', 'Male'),
(143, 'Aileen', 'Parnall', 10667699, 50, 'aparnall3y@slashdot.org', 'Female'),
(144, 'Sarita', 'Bath', 4389927, 23, 'sbath3z@cnn.com', 'Female'),
(145, 'Shandra', 'Musterd', 9503782, 34, 'smusterd40@macromedia.com', 'Female'),
(146, 'Benedick', 'Death', 11001070, 45, 'bdeath41@newsvine.com', 'Male'),
(147, 'Magdalen', 'Jagson', 9673406, 37, 'mjagson42@patch.com', 'Female'),
(148, 'Linzy', 'Bondesen', 1475199, 29, 'lbondesen43@desdev.cn', 'Female'),
(149, 'Lodovico', 'Curtin', 11217836, 34, 'lcurtin44@edublogs.org', 'Male'),
(150, 'Lavinia', 'Domenicone', 4257967, 41, 'ldomenicone45@mayoclinic.com', 'Female'),
(151, 'Eugenio', 'Jamieson', 6314616, 56, 'ejamieson46@digg.com', 'Male'),
(152, 'Brigham', 'Cleland', 3964183, 35, 'bcleland47@sakura.ne.jp', 'Male'),
(153, 'Sarah', 'Matyja', 10098522, 35, 'smatyja48@house.gov', 'Female'),
(154, 'Gregorio', 'Rawstorn', 10245093, 45, 'grawstorn49@aol.com', 'Male'),
(155, 'Tyne', 'Crosi', 3416175, 25, 'tcrosi4a@abc.net.au', 'Female'),
(156, 'Brendan', 'Drysdale', 3423319, 48, 'bdrysdale4b@nba.com', 'Male'),
(157, 'Selby', 'Botwood', 1863115, 41, 'sbotwood4c@yahoo.com', 'Male'),
(158, 'Holt', 'Brik', 3648121, 51, 'hbrik4d@deliciousdays.com', 'Male'),
(159, 'Forbes', 'Harrad', 9112203, 32, 'fharrad4e@skype.com', 'Male'),
(160, 'Ronica', 'Drewes', 3099512, 47, 'rdrewes4f@time.com', 'Female'),
(161, 'Carny', 'Jurasek', 1379384, 43, 'cjurasek4g@wikipedia.org', 'Male'),
(162, 'Lucretia', 'Wrightam', 8266878, 47, 'lwrightam4h@technorati.com', 'Female'),
(163, 'Doria', 'Evemy', 6389876, 22, 'devemy4i@clickbank.net', 'Female'),
(164, 'Bradly', 'Hambric', 8425256, 46, 'bhambric4j@upenn.edu', 'Male'),
(165, 'Garrick', 'Maggorini', 10680459, 28, 'gmaggorini4k@de.vu', 'Male'),
(166, 'Farica', 'Cavill', 6403369, 45, 'fcavill4l@statcounter.com', 'Female'),
(167, 'Martainn', 'Archdeacon', 1827173, 43, 'marchdeacon4m@chronoengine.com', 'Male'),
(168, 'Ruthy', 'Gelder', 8235080, 53, 'rgelder4n@ibm.com', 'Female'),
(169, 'Honey', 'Eldred', 5505260, 33, 'heldred4o@google.co.uk', 'Female'),
(170, 'Sally', 'Raspel', 10356173, 38, 'sraspel4p@paginegialle.it', 'Female'),
(171, 'Sharona', 'Barraclough', 2460686, 21, 'sbarraclough4q@aboutads.info', 'Female'),
(172, 'Deni', 'Heeron', 6695935, 37, 'dheeron4r@businessweek.com', 'Female'),
(173, 'Kyle', 'Brandone', 5365098, 34, 'kbrandone4s@etsy.com', 'Female'),
(174, 'Zacharias', 'Meni', 6924895, 43, 'zmeni4t@nationalgeographic.com', 'Male'),
(175, 'Ange', 'Swiffan', 1013069, 55, 'aswiffan4u@wikia.com', 'Male'),
(176, 'Billie', 'Josephy', 5031727, 48, 'bjosephy4v@wordpress.org', 'Male'),
(177, 'Haroun', 'Klaes', 4993039, 48, 'hklaes4w@samsung.com', 'Male'),
(178, 'Osbourn', 'Curman', 8039078, 59, 'ocurman4x@answers.com', 'Male'),
(179, 'Georgeta', 'Pierrepoint', 9042513, 28, 'gpierrepoint4y@youku.com', 'Female'),
(180, 'Daisey', 'Korda', 7992698, 49, 'dkorda4z@dailymail.co.uk', 'Female'),
(181, 'Germaine', 'Ciani', 9972010, 38, 'gciani50@weather.com', 'Female'),
(182, 'Galina', 'Gutman', 6717808, 26, 'ggutman51@last.fm', 'Female'),
(183, 'Annabella', 'Hannon', 3750776, 45, 'ahannon52@bloglovin.com', 'Female'),
(184, 'Derrik', 'O\'Grogane', 5391597, 50, 'dogrogane53@ning.com', 'Male'),
(185, 'Monique', 'Hearne', 2091377, 35, 'mhearne54@cyberchimps.com', 'Female'),
(186, 'Doretta', 'Coyne', 5283576, 40, 'dcoyne55@comsenz.com', 'Female'),
(187, 'Arabele', 'Figge', 10459667, 53, 'afigge56@amazon.co.uk', 'Female'),
(188, 'Davin', 'Spalding', 9984956, 33, 'dspalding57@creativecommons.org', 'Male'),
(189, 'Dene', 'Huff', 4970569, 32, 'dhuff58@bing.com', 'Male'),
(190, 'Del', 'Wannell', 9730191, 55, 'dwannell59@booking.com', 'Male'),
(191, 'Amitie', 'Tudbald', 7348126, 22, 'atudbald5a@bluehost.com', 'Female'),
(192, 'Buddie', 'Gascard', 8050595, 22, 'bgascard5b@myspace.com', 'Male'),
(193, 'Buffy', 'Dawidowitsch', 4425249, 20, 'bdawidowitsch5c@google.fr', 'Female'),
(194, 'Welbie', 'Patterson', 3994048, 58, 'wpatterson5d@tiny.cc', 'Male'),
(195, 'Euell', 'Treby', 7811699, 25, 'etreby5e@mayoclinic.com', 'Male'),
(196, 'George', 'Ismay', 6947389, 46, 'gismay5f@tinypic.com', 'Male'),
(197, 'Hillel', 'Amps', 6706320, 51, 'hamps5g@weibo.com', 'Male'),
(198, 'Gustave', 'Gyenes', 3460930, 24, 'ggyenes5h@ted.com', 'Male'),
(199, 'Raynell', 'Bostock', 10082639, 26, 'rbostock5i@blogspot.com', 'Female'),
(200, 'Yurik', 'Killimister', 6422229, 55, 'ykillimister5j@weebly.com', 'Male'),
(212, 'ben henni', 'oussema', 11445294, 20, 'oussemabenhenni@gmail.com', 'male'),
(213, 'lkiyf', 'mlkjhgd', 1234567, 20, 'oussemabenhenni@gmail.com', 'male'),
(214, 'jhgfd', '', 0, 0, '', ''),
(215, 'rania', 'ben ali', 12345, 60, 'oussemabenhenni@gmail.com', 'female'),
(216, '', '', 0, 0, '', ''),
(217, 'islem', 'berriche', 2345, 80, 'oussemabenhenni@gmail.com', 'male'),
(219, '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `cin` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`cin`, `password`) VALUES
('12345678', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
