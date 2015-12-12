-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2015 at 10:18 PM
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
  `pdflink` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `journal_id`, `title`, `volume`, `issue`, `year`, `pages`, `abstracttext`, `pdflink`) VALUES
(95, 34, '4-D Soviet Style: Defence, Development, Diplomacy and Disengagement in Afghanistan During the Soviet Period Part I: State Building', 23, 2, 2010, '306-327', 'The authors’ objective is to inform the current NATO-ISAF mission\nin Afghanistan by examining the Soviet experience from a novel\npoint of view; that is, to challenge the established opinion that the\nSoviet troops were defeated at the hands of the Afghan mujahidin\nand that their regime stabilization efforts were completely ineffective.\nTheir focus extends beyond the military operations to tackle\nthe issues related to Soviet state-building and social and economic\ndevelopment efforts, as well as disengagement strategies. The overall\nstudy the authors have undertaken highlights the fundamental\nstructural factors in Afghanistan that make the Soviet experience\nin state-building relevant to the current reconstruction efforts in\nthat country.', '4d_soviet_style_defence_development_diplomacy_and_disengagement_in_Afghanistan_during_the_soviet_period_part_i_state_building.pdf'),
(96, 35, 'War, Politics, and RMA - The legacy of Clausewitz', 10, 1, 1996, '76-80', 'Clausewitz RMA', '1810.pdf'),
(97, 36, 'Ballistic Missiles and Space Launch Vehicles in Regional Powers', 10, 2, 2012, '126-151', 'International security concerns about ballistic missile proliferation\nhave frequently highlighted the links between ballistic missiles\nand space launch vehicles. This article examines the extent\nof these links through a comprehensive survey of ballistic missile\nand space rocket programs in regional powers. It notes that missiles\nwere derived from existing space launchers in just a small\nfraction of these cases. In a slightly greater fraction, space\nlaunchers were drawn from existing missile programs. This\nanalysis suggests that though security concerns about space\nlaunchers being used as ballistic missiles are valid, the reverse\ntrend, that of ballistic missiles being used as space launch vehicles,\ncannot be ignored. At the same time, as long as regional\npowers are limited to short-range and medium-range systems,\ntheir missile and space projects would only raise limited missile\nproliferation and space security concerns.', 'astropoliticsBallisticmissilespacelaunchvehicles.pdf'),
(98, 36, 'Cosmos in Theological Scriptures', 10, 3, 2012, '268-281', 'Religions have conceptualized the cosmos, its Creator, and its\norigin. The major monotheistic religions of Judaism, Christianity,\nand Islam have philosophized on the creation of the Earth and\nman by a conscious act of God. The religions of the Orient—\nHinduism and Sikhism—have a different visualization of the\nemergence of the universe and living beings on the Earth. This\narticle provides a brief exposition and a comparative analysis of\nthe scriptural differences in relation to the cosmos. In particular,\nthe focus is on a comprehension expounded in Sikh scriptures with\nemphasis on the meaning therein for the Big Bang theory and exact\ntime of creation, expanse of the universe, evolution of life, conservation\nof energy, and the end of the universe with cyclical repetition.', 'astropoliticscosmostheology.pdf'),
(99, 36, 'Forecasting the Political Economy of the Inner Solar System', 10, 3, 2012, '183-233', 'Social structural methods are applied to forecast the political\neconomy of the inner solar system to the 22nd century. One method\nconsiders structural indicators, specifically, population, social\norganization, environment, and technology. Another method\nexamines the Tongan diaspora as an analog of human expansion\ninto space. This future political economy could emerge as a consequence\nof user strain on a global electrical power grid that develops\nby 2050. Alternative energy needs could turn to space-based sources.\nIf on-orbit space-based energy infrastructure provides the rationale,\ncapability, and allure to see humans routinely living and working\nin space, their presence on the Moon and among the near-Earth\nasteroids can lead to a human diaspora to Mars and its moons.\nThese events will build the multi-planet economy, the multi-world\nsystem of societies, and the transnational state. The development\nof Mars will reach a maturity of settlement from 2130 onward. As\nthese potential events become history, capital would be transformed,\nand higher-order space logistics in a multi-world system of societies\nwith its multi-planet economy would lay the foundation for a Solar\nSystem Federation. This federation constitutes transnational states\namong off-world human societies that could fill the vacuum of a\nfading Westphalian nation-state system on Earth.', 'astropoliticsforecastingEconomicspace.pdf'),
(100, 36, 'Space Strategy Considerations for Medium Space Powers', 10, 2, 2012, '110-125', 'When compared to the strategies of superpowers, the strategies of\nmedium powers are often different due to a medium power’s frequent\ndesire to act independently while being comparatively more\nconstrained by available material and fiscal resources. For this\nreason, the space strategy of medium space powers is different from\neither emerging or super space powers. The fundamental purpose\nof any medium space power’s space strategy should be to ensure\naccess to and use of celestial lines of communication to support\nnational objectives, whether during peace or conflict. When deciding\nhow best to protect its interests in space, a medium space power\nwill have a variety of non-military and military options. These\noptions may include diplomacy, economic measures, benign\ndefensive technologies, or the employment of offensive actions in\nspace. Though the debate surrounding the weaponization of space\ncontinues, it is worth noting that the application of the inherent\nright of self-defense provides the authority for states to protect their\nassets or interests when attacked, and this protection may include\nthe use of force in space, if needed.', 'AstropoliticsKleinmediumspacepowers.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
`author_id` int(11) NOT NULL,
  `author_firstname` varchar(100) NOT NULL,
  `author_lastname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_firstname`, `author_lastname`) VALUES
(71, 'Anton', 'Minkov'),
(72, 'Gregory', 'Smolynec'),
(73, 'John', 'Wagner'),
(74, 'Antulio', 'Echevarria'),
(75, 'Andrew', 'Krepinevich'),
(76, 'Barry', 'Watts'),
(77, 'Robert', 'Work'),
(79, 'Dinshaw', 'Mistry'),
(80, 'Bharath', 'Gopalaswamy'),
(81, 'Gurbachan', 'Singh Sachdeva'),
(82, 'Marilyn', 'Dudley-Flores'),
(83, 'Thomas', 'Gangale'),
(84, 'John', 'Klein');

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
(71, 95),
(72, 95),
(74, 96),
(79, 97),
(80, 97),
(81, 98),
(82, 99),
(83, 99),
(84, 100);

-- --------------------------------------------------------

--
-- Table structure for table `authors_books`
--

CREATE TABLE IF NOT EXISTS `authors_books` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `book_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authors_papers`
--

CREATE TABLE IF NOT EXISTS `authors_papers` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `paper_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors_papers`
--

INSERT INTO `authors_papers` (`author_id`, `paper_id`) VALUES
(73, 6),
(75, 7),
(76, 7),
(77, 7),
(75, 8);

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
  `abstracttext` text NOT NULL,
  `pdflink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
`document_id` int(11) NOT NULL,
  `title` varchar(140) NOT NULL,
  `abstractText` text NOT NULL,
  `pdflink` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE IF NOT EXISTS `journals` (
`journal_id` int(11) NOT NULL,
  `journal_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`journal_id`, `journal_name`) VALUES
(34, 'The Journal of Slavic Military Studies'),
(35, 'Joint Forces Quarterly'),
(36, 'Astropolitics');

-- --------------------------------------------------------

--
-- Table structure for table `papers`
--

CREATE TABLE IF NOT EXISTS `papers` (
`paper_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE latin1_bin NOT NULL,
  `institute` varchar(200) COLLATE latin1_bin NOT NULL,
  `year` year(4) NOT NULL,
  `pages` varchar(20) COLLATE latin1_bin NOT NULL,
  `abstractText` text COLLATE latin1_bin NOT NULL,
  `pdflink` varchar(200) COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `papers`
--

INSERT INTO `papers` (`paper_id`, `title`, `institute`, `year`, `pages`, `abstractText`, `pdflink`) VALUES
(6, 'Spacepower Theory: Lessons from the Masters', 'Air University, Maxwell Air Force Base, Alabama', 2005, '51', 'Spacepower, analogous to airpower and sea power, is the ability to use the space\nmedium to project military power. Since the end of the Cold War, the contributions of\nspacepower to national security and military operations have become increasingly visible\nin the open press, leading to an increased stated need for a comprehensive spacepower\ntheory. This research is focused toward that need. It explores the central themes and\nspecific points of the “theoretical masters” of land, sea and air, in order to draw analogies\nto the emerging presence of military spacepower.\nSpace will continue to aid combat in other mediums as it offers persistence, range,\nand near instantaneous speed—enabling a global presence that is unmatched by\ncapabilities in any other medium. However, for spacepower to emerge as a fully\ncompetent component of the future joint force, or simply to mature as a combat arm\nwithin the US Air Force, a body of serious thought must be given to why we need\nspacepower and what we intend it to do.\nThrough this analysis, five lessons emerge for spacepower theory: 1) Spacepower\nmust control space lines of communication; 2) Decisive points are key to space control;\n3) Spacepower requires superior observation capabilities and the ability to take offensive\naction; 4) Robust spacepower could lead to enemy paralysis; and 5) Spacepower requires\nmasters of the space medium.', '05-wagnerspacepowertheory.pdf'),
(7, 'Meeting the Anti-Access and Area-Denial Challenge', 'Center for Strategic And Budgetary Assessments', 2003, '95', 'Cold War, United States, anti-access (A2) area-denial (AD) medium-range artillery, rocket, or missiles A2/AD', '20030520-Anti-Access-Area-Denial-A2-AD.pdf'),
(8, 'Why AirSea Battle?', 'Center for Strategic And Budgetary Assessments', 2010, '40', 'United States Cold War, the Soviet Union limited wars China’s People’s Liberation Army Iran’s military and Islamic Revolutionary Guards Corps Western Pacific and the Persian Gulf US power-projection\ncapabilities AirSea Battle', '20100219-Why-AirSea-Battle.pdf');

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
-- Indexes for table `authors_papers`
--
ALTER TABLE `authors_papers`
 ADD PRIMARY KEY (`author_id`,`paper_id`), ADD KEY `paper_id` (`paper_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
 ADD PRIMARY KEY (`book_id`), ADD KEY `isbn` (`isbn`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
 ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
 ADD PRIMARY KEY (`journal_id`);

--
-- Indexes for table `papers`
--
ALTER TABLE `papers`
 ADD PRIMARY KEY (`paper_id`);

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
MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `papers`
--
ALTER TABLE `papers`
MODIFY `paper_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
