-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2015 at 09:47 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `panzerlibdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`article_id` int(11) NOT NULL,
  `journal_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `volume` int(11) NOT NULL,
  `issue` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `pages` varchar(20) NOT NULL,
  `abstracttext` text NOT NULL,
  `pdflink` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `journal_id`, `title`, `volume`, `issue`, `year`, `pages`, `abstracttext`, `pdflink`) VALUES
(3, 3, 'Tjeerd is de Beste van Allemaal', 12, 1, 1999, '277-299', '', ''),
(4, 4, '4-D Soviet Style: Defence, Development, Diplomacy and Disengagement in Afghanistan During the Soviet Period Part I:State Building', 23, 2, 2010, '306-327', 'Soviet Union Afghanistan Cold War ', '4d_soviet_style_defence_development_diplomacy_and_disengagement_in_Afghanistan_during_the_soviet_period_part_i_state_building'),
(8, 5, 'Java programming', 22, 3, 2004, '22-55', '', ''),
(16, 6, 'On Nuclear Warfare', 13, 3, 1956, '20-60', 'Nukes nuclear warfare strategy deterrence Soviet-Union United States Reagan', ''),
(22, 7, 'On Clean Coding', 33, 4, 2009, '60-100', '', ''),
(25, 3, 'Panzer The Beast', 33, 1, 2011, '40-80', '', ''),
(26, 10, 'De opkomst en ondergang van Panzer The Beast', 2, 1, 2014, '33-66', '', ''),
(27, 11, 'Between Cats and People: a real story about friendship', 4, 3, 2015, '66', '', ''),
(28, 17, 'Deterrence', 33, 2, 1955, '33', 'Nuclear war deterrence Soviet Union Stalin Eisenhower mutual destruction', ''),
(29, 18, 'Complexity', 44, 3, 2014, '33-99', '', ''),
(30, 10, 'Dogs must Die!', 34, 2, 2015, '10-40', '', ''),
(31, 9, 'Tjeerdisme Sucks!', 4, 3, 2010, '60', '', ''),
(33, 6, 'Nukes are fun', 45, 2, 2015, '22-99', '', ''),
(44, 12, 'Tjeerd is nieuw in town', 3, 2, 2011, '22-33', '', ''),
(45, 13, 'Goverdomme', 3, 2, 2011, '22-33', '', ''),
(46, 14, 'Nieuwe Oorlog', 33, 4, 2001, '300-340', '', ''),
(49, 16, 'Het Nieuwe Denken', 33, 2, 2001, '22', '', ''),
(55, 23, 'Laibach for Tjeerd, Tjeerd for Laibach', 2, 1, 1999, '33-99', 'tjeerd', 'tjeerd'),
(58, 24, 'Tegenlicht', 4, 1, 1999, '33-99', 'tjeerd', 'tegenlicht'),
(59, 24, 'Clausewitz causa sui', 4, 2, 1999, '33-99', '', ''),
(60, 25, 'War, Politics, and RMA: The Legacy of Clausewitz', 10, 1, 1996, '76-80', '', ''),
(61, 22, 'Rtbb the new thinking', 6, 3, 2000, '33-99', 'thinking', 'rtbb'),
(64, 26, 'poesjes', 34, 2, 1999, '33-99', '', ''),
(65, 26, 'Pittenzak', 4, 3, 2000, '33-99', '', ''),
(67, 26, 'nuclear', 3, 2, 1999, '33-99', 'nuclear war', ''),
(68, 30, '"Hannibal ante portas": The Soviet Military Threat and the Build-up of the Dutch Armed Forces, 1948-1958', 66, 1, 2002, '163-191', 'Soviet Union Military Dutch Armed Forces Cold War', '2677348'),
(69, 31, 'Nuclear Deterrence and the Military Uses of Space', 114, 2, 1985, '17-32', 'Nuclear Deterrence Military Uses of Space Reagan Star Wars SDI strategy RAND Soviet Union', 'DeterrenceAndSpace'),
(71, 26, 'Black Ships', 5, 2, 1996, '33-99', 'gfdgdgf', 'black'),
(72, 26, 'Black Ships and Pirates', 34, 2, 1982, '33-99', 'fdsfd', 'ship'),
(75, 26, 'Sleeping Karma', 3, 1, 1996, '33-99', 'tjeerd', 'tjeerd'),
(76, 26, 'Sleeping Karma', 3, 1, 1985, '33-99', 'tjeerd', 'tjeerd'),
(77, 26, 'Sleeping Karma', 2, 1, 1985, '33-99', 'tjeerd', 'tjeerd'),
(78, 22, 'Tegenlichten', 3, 1, 2002, '33-99', 'tjeerd', 'tegenlicht');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
`author_id` int(11) NOT NULL,
  `author_firstname` varchar(100) NOT NULL,
  `author_lastname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_firstname`, `author_lastname`) VALUES
(1, 'Tjeerdjan', 'Nieuwenhuis'),
(2, 'Pieter', 'Microsoft'),
(5, 'Piet', 'Pietersen'),
(6, 'Hans', 'Hansen'),
(8, 'Anton', 'Minkov'),
(9, 'Gregory', 'Smolynec'),
(10, 'Pieter', 'Talsmania'),
(11, 'Piet', 'Gjaltema'),
(12, 'Herman', 'Kahn'),
(16, 'Adam', 'Biener'),
(17, 'Colin (S)', 'Gray'),
(18, 'Lawrence', 'Freedman'),
(19, 'B.H.', 'Liddell Hart'),
(20, 'Beatrice', 'Heuser'),
(21, 'Hew', 'Strachan'),
(22, 'Martin', 'van Creveld'),
(24, 'Piet', 'Banbergen'),
(25, 'Paul', 'Kennedy'),
(26, 'Niall', 'Ferguson'),
(27, 'John', 'Mearsheimer'),
(32, 'Pieter', 'Talsma'),
(33, 'Susan', 'Cain'),
(35, 'Robert', 'Jervis'),
(36, 'Gerard', 'Cohen'),
(37, 'Ian', 'Morris'),
(38, 'Pieter', 'Banbergen'),
(42, 'Jan', 'Oorschot'),
(44, 'Karel', 'Groot'),
(45, 'Henk', 'Overdink'),
(46, 'Piet', 'Mondriaan'),
(47, 'Henkie', 'Dickson'),
(48, 'Hans', 'Jolala'),
(49, 'Pietje', 'Puk'),
(50, 'Antulio', 'Echevarria'),
(51, 'Pietje', 'Pukkel'),
(52, 'Pietje', 'Pukkels'),
(53, 'Pietje', 'Pukkelss'),
(54, 'pietje', 'pukkelsss'),
(55, 'pietje', 'pukkelssss'),
(56, 'pietertje', 'pukkelgeschischt'),
(57, 'Pietje', 'Pietersen'),
(59, 'fdgfdg', 'fgdgfdg'),
(60, 'Gerrit', 'Puk'),
(62, 'Jan', 'Hoffenaar'),
(63, 'Gerrit', 'Pukkelman'),
(64, 'Gerrit', 'Pukkelmans'),
(65, 'Herbert F.', 'York'),
(66, 'Henk', 'Pietersen'),
(68, 'John', 'Gray');

-- --------------------------------------------------------

--
-- Table structure for table `authors_articles`
--

CREATE TABLE IF NOT EXISTS `authors_articles` (
  `author_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors_articles`
--

INSERT INTO `authors_articles` (`author_id`, `article_id`) VALUES
(1, 3),
(2, 3),
(8, 4),
(9, 4),
(2, 8),
(12, 16),
(16, 22),
(1, 25),
(1, 26),
(1, 27),
(35, 28),
(35, 29),
(36, 30),
(24, 31),
(1, 33),
(1, 44),
(1, 45),
(1, 46),
(42, 46),
(1, 49),
(1, 55),
(1, 58),
(1, 59),
(50, 60),
(1, 61),
(1, 64),
(1, 65),
(1, 67),
(62, 68),
(65, 69),
(1, 71),
(35, 72),
(1, 75),
(1, 76),
(1, 77),
(1, 78);

-- --------------------------------------------------------

--
-- Table structure for table `authors_books`
--

CREATE TABLE IF NOT EXISTS `authors_books` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `book_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors_books`
--

INSERT INTO `authors_books` (`author_id`, `book_id`) VALUES
(1, 7),
(17, 20),
(18, 21),
(19, 22),
(20, 23),
(21, 24),
(22, 27),
(25, 28),
(37, 29),
(1, 36),
(1, 39),
(1, 40),
(9, 40),
(38, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 46),
(46, 48),
(47, 48),
(46, 52),
(47, 52),
(1, 53),
(1, 54),
(5, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(35, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
`book_id` int(11) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `abstracttext` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `isbn`, `title`, `publisher`, `year`, `abstracttext`) VALUES
(7, '9783456778456', 'Teddybeer', 'Nieuwenhuis', 1955, ''),
(20, '9780198782513', 'Modern Strategy', 'OUP Oxford (14 Oct. 1999)', 2003, ''),
(21, '9780199325153', 'Stratey: A History', 'OUP USA (31 Oct. 2013)', 0000, ''),
(22, '9780452010710', 'Strategy', 'Penguin; 2nd Ed edition (April 1991)', 0000, ''),
(23, '9780521155243', 'The Evolution of Strategy: Thinking War from Antiquity to the Present', 'Cambridge University Press (14 Oct. 2010)', 0000, ''),
(24, '9789814350815', 'The Direction of War: Contemporary Strategy in Historical Perspective', 'Cambridge University Press (5 Dec. 2013)', 0000, ''),
(27, '9780521546577', 'Supplying War: Logistics from Wallenstein to Patton', 'Cambridge University Press', 0000, ''),
(28, '9780006860525', 'The Rise and Fall of the Great Powers: Economic Change and Military Conflict from 1500-2000', 'Fontana Press', 0000, ''),
(29, '9781846684180', 'War: What is it good for?: The role of conflict in civilisation, from primates to robots', 'Profile Books', 0000, ''),
(36, '9780141978529', 'De Geschiedenis van Alles', 'Nieuwenhuis', 0000, ''),
(39, '9782345074839', 'De Nieuwe Orde', 'Nieuwenhuis', 0000, ''),
(40, '9785643948520', 'A Real Story about People', 'Nieuwenhuis', 0000, ''),
(41, '9781234857321', 'JDBC', 'Nieuwenhuis', 0000, ''),
(42, '9781234759302', 'Hallo Wereld', 'Nieuwenhuis', 0000, ''),
(43, '9783454652932', 'JDBC(2)', 'Nieuwenhuis', 0000, ''),
(44, '9781239548302', 'Hallo Oorlog', 'Nieuwenhuis', 0000, ''),
(46, '9782340485301', 'Dikke shit', 'Nieuwenhuis', 0000, ''),
(48, '9784324958438', 'New World Art', 'Nieuwenhuis', 0000, ''),
(52, '9784435963666', 'The beginning and the end of the World is Art', 'Nieuwenhuis', 2011, ''),
(53, '9781294832904', 'Causa Sui', 'Nieuwenhuis', 2013, ''),
(54, '9781294832555', 'Destroying the World in 15 seconds', 'Nieuwenhuis', 1999, ''),
(55, '9781294832557', 'Pitten', 'Nieuwenhuis', 2000, ''),
(56, '9781294832557', 'Typetjes', 'Nieuwenhuis', 2000, ''),
(57, '9781294832557', 'Dingen', 'Nieuwenhuis', 2000, ''),
(58, '9781294832904', 'Nog meer dingen', 'Nieuwenhuis', 2000, ''),
(59, '9781294832557', 'Vogels', 'Nieuwenhuis', 2000, ''),
(60, '9781294832904', 'Strand', 'Nieuwenhuis', 1997, ''),
(61, '9781294832904', 'Clausewitz under Fire', 'Nieuwenhuis', 2013, ''),
(62, '2349853452922', 'Black Swords', 'Nieuwenhuis', 2013, ''),
(63, '9781294832933', 'Needle Gun', 'Nieuwenhuis', 1970, ''),
(64, '9781294832938', 'Panzer', 'Nieuwenhuis', 1982, ''),
(65, '9781294832944', 'Poes', 'Nieuwenhuis', 1988, ''),
(66, '9781294832904', 'Typetjes 6', 'Nieuwenhuis', 2000, ''),
(67, '9781294832938', 'poesjes', 'Nieuwenhuis', 1988, ''),
(68, '9781294832933', 'gdfgfg', 'Nieuwenhuis', 2004, ''),
(69, '9781294832933', 'gdfgfg', 'Nieuwenhuis', 2005, ''),
(70, '9781294832933', 'gdfgfg', 'Nieuwenhuis', 2005, ''),
(71, '9781294832557', 'gfhfgh', 'Nieuwenhuis', 1999, ''),
(72, '9781294832557', 'fghfgh', 'Nieuwenhuis', 2013, ''),
(73, '9781294832904', 'poesjes', 'Nieuwenhuis', 1970, ''),
(74, '765436897', 'Nieuw book', 'Nieuwenhuis', 2000, ''),
(76, '9875543678654', 'gdsdfgfdg', 'Nieuwenhuis', 2000, ''),
(77, '9781294832557', 'Typetjes 666', 'Nieuwenhuis', 1970, 'gfdgfdg'),
(78, '9781294832557', 'Pittenfff', 'Nieuwenhuis', 2000, 'deterrence'),
(79, '2349853452966', 'rt', 'Nieuwenhuis', 2000, 'deterrence'),
(80, '9781294832904', 'lol2', 'Nieuwenhuis', 2000, 'deterrence'),
(81, '9781294832904', 'lol', 'Nieuwenhuis', 2000, 'deterrence'),
(82, '9781294832904', 'lol1', 'Nieuwenhuis', 2000, 'lol1'),
(83, '9781294832999', 'lol', 'Pieterman', 1996, 'lol deterrence nuclearwar war strategy'),
(84, '2349853452999', 'lol3', 'Nieuwenhuis', 1982, 'deterrence'),
(85, '2349853452922', 'lol4', 'Nieuwenhuis', 1996, 'deterrence'),
(86, '9781294832904', 'lol5', 'Nieuwenhuis', 1996, 'deterrence strategy'),
(87, '9781294832933', 'lol6 war', 'Nieuwenhuis', 1988, 'deterrence nuclear war strategy'),
(88, '2349853452922', 'lol7 deterrence', 'Nieuwenhuis', 1970, 'lol deterrence war nuclear'),
(89, '9781294832904', 'Teddyberen', 'Nieuwenhuis', 1996, 'lol deterrence teddyberen');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE IF NOT EXISTS `journals` (
`journal_id` int(11) NOT NULL,
  `journal_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`journal_id`, `journal_name`) VALUES
(3, 'Journal for Extraordinary People'),
(4, 'The Journal of Slavic Military Studies 	'),
(5, 'Journal for advanced Programming'),
(6, 'Journal for Nuclear Warfare'),
(7, 'Journal for Advanced Coding'),
(8, 'Journal of people'),
(9, 'Journal for Ideology'),
(10, 'Cat Magazine'),
(11, 'People Magazine'),
(12, 'Journal for Fun'),
(13, 'Journal for God'),
(14, 'Journal for War'),
(15, 'Journal for Warfare'),
(16, 'Journal voor echte Mensen'),
(17, 'Deterrence magazine'),
(18, 'Chaos Magazine'),
(19, 'Journal for Everything'),
(22, 'Journal of Journals'),
(23, 'Journal of Laibach'),
(24, 'Journal of Tjeerdjan'),
(25, 'Joint Forte Quarterly'),
(26, 'Journal for Tjeerdism'),
(27, 'Journal for Tjeerdism and more'),
(30, 'The Journal of Military History'),
(31, 'Daedalus');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` bigint(20) NOT NULL,
  `sso_id` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `sso_id`, `password`, `firstname`, `lastname`, `state`) VALUES
(1, 'tjeerdjan', '$2a$10$oElI347DLJuFh4357XxFo.Akb37tJ6hrWsWj0QRRsXMorhegMyn.a', 'Tjeerdjan', 'Nieuwenhuis', 'Active'),
(5, 'panzer', '$2a$10$oElI347DLJuFh4357XxFo.Akb37tJ6hrWsWj0QRRsXMorhegMyn.a', 'Panzer', 'the Beast', 'Active'),
(6, 'piet', '$2a$10$qbrLQ6LyCN2bDmVb.5ZAwO7FbIYEWqsvXWAeTOcI4ZJ3GtylBuiwq', 'piet', 'petje', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users_user_profile`
--

CREATE TABLE IF NOT EXISTS `users_user_profile` (
  `user_id` bigint(20) NOT NULL,
  `user_profile_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_user_profile`
--

INSERT INTO `users_user_profile` (`user_id`, `user_profile_id`) VALUES
(1, 1),
(5, 1),
(6, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
`id` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `type`) VALUES
(2, 'ADMIN'),
(1, 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
 ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `authors_articles`
--
ALTER TABLE `authors_articles`
 ADD PRIMARY KEY (`author_id`,`article_id`), ADD KEY `ARTICLES` (`article_id`);

--
-- Indexes for table `authors_books`
--
ALTER TABLE `authors_books`
 ADD PRIMARY KEY (`author_id`,`book_id`), ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
 ADD PRIMARY KEY (`book_id`), ADD KEY `isbn` (`isbn`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
 ADD PRIMARY KEY (`journal_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `sso_id` (`sso_id`);

--
-- Indexes for table `users_user_profile`
--
ALTER TABLE `users_user_profile`
 ADD PRIMARY KEY (`user_id`,`user_profile_id`), ADD KEY `FK_USER_PROFILE` (`user_profile_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authors_articles`
--
ALTER TABLE `authors_articles`
ADD CONSTRAINT `ARTICLES` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`),
ADD CONSTRAINT `AUTHORS` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

--
-- Constraints for table `authors_books`
--
ALTER TABLE `authors_books`
ADD CONSTRAINT `authors_books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`),
ADD CONSTRAINT `authors_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `users_user_profile`
--
ALTER TABLE `users_user_profile`
ADD CONSTRAINT `FK_USERS` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
ADD CONSTRAINT `FK_USER_PROFILE` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
