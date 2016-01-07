-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2016 at 09:37 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `journal_id`, `title`, `volume`, `issue`, `year`, `pages`, `abstracttext`, `pdflink`) VALUES
(95, 34, '4-D Soviet Style: Defence, Development, Diplomacy and Disengagement in Afghanistan During the Soviet Period Part I: State Building', 23, 2, 2010, '306-327', 'The authors’ objective is to inform the current NATO-ISAF mission\nin Afghanistan by examining the Soviet experience from a novel\npoint of view; that is, to challenge the established opinion that the\nSoviet troops were defeated at the hands of the Afghan mujahidin\nand that their regime stabilization efforts were completely ineffective.\nTheir focus extends beyond the military operations to tackle\nthe issues related to Soviet state-building and social and economic\ndevelopment efforts, as well as disengagement strategies. The overall\nstudy the authors have undertaken highlights the fundamental\nstructural factors in Afghanistan that make the Soviet experience\nin state-building relevant to the current reconstruction efforts in\nthat country.', '4d_soviet_style_defence_development_diplomacy_and_disengagement_in_Afghanistan_during_the_soviet_period_part_i_state_building.pdf'),
(96, 35, 'War, Politics, and RMA - The legacy of Clausewitz', 10, 1, 1996, '76-80', 'Clausewitz RMA', '1810.pdf'),
(97, 36, 'Ballistic Missiles and Space Launch Vehicles in Regional Powers', 10, 2, 2012, '126-151', 'International security concerns about ballistic missile proliferation\nhave frequently highlighted the links between ballistic missiles\nand space launch vehicles. This article examines the extent\nof these links through a comprehensive survey of ballistic missile\nand space rocket programs in regional powers. It notes that missiles\nwere derived from existing space launchers in just a small\nfraction of these cases. In a slightly greater fraction, space\nlaunchers were drawn from existing missile programs. This\nanalysis suggests that though security concerns about space\nlaunchers being used as ballistic missiles are valid, the reverse\ntrend, that of ballistic missiles being used as space launch vehicles,\ncannot be ignored. At the same time, as long as regional\npowers are limited to short-range and medium-range systems,\ntheir missile and space projects would only raise limited missile\nproliferation and space security concerns.', 'astropoliticsBallisticmissilespacelaunchvehicles.pdf'),
(98, 36, 'Cosmos in Theological Scriptures', 10, 3, 2012, '268-281', 'Religions have conceptualized the cosmos, its Creator, and its\norigin. The major monotheistic religions of Judaism, Christianity,\nand Islam have philosophized on the creation of the Earth and\nman by a conscious act of God. The religions of the Orient—\nHinduism and Sikhism—have a different visualization of the\nemergence of the universe and living beings on the Earth. This\narticle provides a brief exposition and a comparative analysis of\nthe scriptural differences in relation to the cosmos. In particular,\nthe focus is on a comprehension expounded in Sikh scriptures with\nemphasis on the meaning therein for the Big Bang theory and exact\ntime of creation, expanse of the universe, evolution of life, conservation\nof energy, and the end of the universe with cyclical repetition.', 'astropoliticscosmostheology.pdf'),
(99, 36, 'Forecasting the Political Economy of the Inner Solar System', 10, 3, 2012, '183-233', 'Social structural methods are applied to forecast the political\neconomy of the inner solar system to the 22nd century. One method\nconsiders structural indicators, specifically, population, social\norganization, environment, and technology. Another method\nexamines the Tongan diaspora as an analog of human expansion\ninto space. This future political economy could emerge as a consequence\nof user strain on a global electrical power grid that develops\nby 2050. Alternative energy needs could turn to space-based sources.\nIf on-orbit space-based energy infrastructure provides the rationale,\ncapability, and allure to see humans routinely living and working\nin space, their presence on the Moon and among the near-Earth\nasteroids can lead to a human diaspora to Mars and its moons.\nThese events will build the multi-planet economy, the multi-world\nsystem of societies, and the transnational state. The development\nof Mars will reach a maturity of settlement from 2130 onward. As\nthese potential events become history, capital would be transformed,\nand higher-order space logistics in a multi-world system of societies\nwith its multi-planet economy would lay the foundation for a Solar\nSystem Federation. This federation constitutes transnational states\namong off-world human societies that could fill the vacuum of a\nfading Westphalian nation-state system on Earth.', 'astropoliticsforecastingEconomicspace.pdf'),
(100, 36, 'Space Strategy Considerations for Medium Space Powers', 10, 2, 2012, '110-125', 'When compared to the strategies of superpowers, the strategies of\nmedium powers are often different due to a medium power’s frequent\ndesire to act independently while being comparatively more\nconstrained by available material and fiscal resources. For this\nreason, the space strategy of medium space powers is different from\neither emerging or super space powers. The fundamental purpose\nof any medium space power’s space strategy should be to ensure\naccess to and use of celestial lines of communication to support\nnational objectives, whether during peace or conflict. When deciding\nhow best to protect its interests in space, a medium space power\nwill have a variety of non-military and military options. These\noptions may include diplomacy, economic measures, benign\ndefensive technologies, or the employment of offensive actions in\nspace. Though the debate surrounding the weaponization of space\ncontinues, it is worth noting that the application of the inherent\nright of self-defense provides the authority for states to protect their\nassets or interests when attacked, and this protection may include\nthe use of force in space, if needed.', 'AstropoliticsKleinmediumspacepowers.pdf'),
(101, 37, 'fghfghfgh', 34, 2, 2012, '33-99', 'gfghfgh', ''),
(102, 37, 'hfghfgh', 3, 2, 2000, '33-99', 'dfgdfg', ''),
(103, 37, 'jkkjl', 4, 3, 2012, '306-327', 'rgfgh', ''),
(104, 37, 'mmm', 3, 2, 2000, '33-99', 'rdfhfgh', ''),
(105, 37, 'gjfj', 23, 2, 1999, '268-281', 'gffgfdg', ''),
(106, 37, 'hgjghj', 3, 2, 2012, '51', 'hfgh', ''),
(107, 37, 'hgjghj', 3, 2, 2000, '33-99', 'ghfhgfh', ''),
(108, 37, 'mnmnm', 23, 2, 1985, '33-99', 'fdgfg', ''),
(109, 37, 'nnn', 23, 2, 2012, '33-99', 'gfg', ''),
(110, 37, 'nnnnnnnn', 23, 2, 2010, '33-99', 'rdfdf', ''),
(111, 37, 'hhh', 23, 2, 2002, '33-99', 'sss', ''),
(112, 37, 'bbb', 34, 2, 2005, '33-99', 'dv', ''),
(113, 37, 'bvb', 23, 2, 2012, '33-99', 'dfdf', ''),
(114, 37, 'cc', 2, 2, 2005, '33-99', 'ggf', ''),
(115, 37, 'vvvv', 23, 2, 2000, '33-99', 'wss', ''),
(118, 37, 'aaaaaa', 23, 2, 2005, '33-99', 'www', ''),
(119, 37, 'aaaaaaaa', 2, 2, 2012, '33-99', 'cxvxcv', ''),
(120, 37, 'vvvvvv', 23, 2, 2000, '33-99', 'cxcxc', ''),
(121, 37, 'fff', 23, 2, 2012, '33-99', 'dvxcv', ''),
(122, 38, '"Hannibal ante portas": The Soviet Military Threat and the Build-up of the Dutch Armed Forces, 1948-1958', 66, 1, 2002, '163-191', 'Soviet Union Netherlands Cold War Dutch Armed Forces military threat', '2677348.pdf'),
(124, 40, 'Anarchy and Identity', 49, 2, 1995, '229-252', 'Anarchy international politics identity self-help critical theory nearealist Hobbes', 'anarchyandidentity.pdf'),
(125, 40, 'Anarchy is what States Make of it: The Social Construction of Power Politics', 46, 2, 1992, '391-425', 'anarchy international politics neorealist critical theory social construction', 'anarchy_is_what_states_make_of_it_the_social_construction_of_power_politics.pdf'),
(126, 41, 'Anti-Astropolitik - outer space and the orbit of geography', 31, 5, 2007, '592-615', 'This paper aims to establish outer space as a mainstream concern of critical geography.\nMore than half a century after humans fi rst cast their instruments into orbit, contemporary human\ngeography has been slow to explore the myriad connections that tie social life on Earth to the celestial\nrealm. My starting point is a return to an early-modern geographical imagination that acknowledges\nthe reciprocity between heaven and earth. Although other disciplinary engagements are discussed,\nthis project represents the fi rst systematic attempt to explore how outer space both challenges and\nreanimates the ‘geo’ of geography. The example of Global Satellite Navigation Systems is used to\nillustrate what is currently at stake in the military contest for geopolitical control of Earth’s orbit.\nNigel Thrift’s work on the technological refashioning of precognitive sociality is contextualized\nwithin those systems of state geopower that sustain the everyday uplinking and downlinking to and\nfrom space hardware. Lastly, the paper offers a critique of the application of classical geopolitics to\nouter space in the form of ‘astropolitics’ and its will-to-power variant of Astropolitik.', 'anti-astropolitik.pdf'),
(127, 42, 'Anti-Satellite Weapons: Weighing The Risks', 114, 2, 1985, '147-170', 'anti-satellite weapons asat', 'ASAT.pdf'),
(128, 36, 'Reducing the Vulnerability of Space Assets: a Multitiered Microsatellite Constellation Architecture', 6, 2, 2008, '154-199', 'The United States military is very dependent on satellites. The existing satellite\narchitecture used has single point failures to existing recognized threats. A concept\nthat could provide a significant part of the solution of how the United States, as\nwell as other states, can overcome such vulnerabilities is discussed. The prescription\ncenters on a new type of satellite architecture—the Multitiered Microsatellite\nConstellation Architecture—which reduces risks to space assets by increasing\nsystem redundancy, modularity, and dispersion through the use of microsatellite\nconstellations in several orbital tiers. An example constellation design is given\nfor each of the five major contemporary military space uses—early warning,\nreconnaissance, signals intelligence, military communications, and navigation.\nThe scheme is placed in the context of other complimentary elements that are\nlikely to be necessary to enable security of space assets, in particular: protection\nof space systems; responsive space access; terrestrial alternatives; space surveillance;\ntreaties; and verification means thereof. Since the Chinese anti-satellite\ntest, the response of the United States military in part has been to develop Operationally\nResponsive Space. While this is a key ingredient, it must be complemented\nby more secure satellite architectures as exemplified by microsatellite\nconstellations.\nSpace', 'astropoliticsreducingthevulnerabilityofspaceassets.pdf'),
(129, 36, 'Space and the Sea: Strategic Considerations for the Commons', 10, 3, 2012, '234-247', 'The mediums of space and the sea have many common characteristics.\nThey are both common zones upon which armed forces\ncannot subsist. Due to their nature, these environments cannot\nbe rendered into national possession. The inherent value of both\nmediums is to transmit communications. In particular, communications\nenabled by space-based assets are vital for digital societies.\nAs such, these assets must be protected. However, using weapons to\nprotect them is fraught with political peril. In this regard, it would\nbe wise for spacepower strategists to consult the strategies of classical\nsea power theory to find important insights. There is a wealth of\nstrategic knowledge to be considered here that would shed light on\nhow to deal with threats in space, including the issue of orbital\ndebris.', 'astropoliticsseaandspace.pdf'),
(130, 36, 'Weapons in Space: The Need to Protect Space Assets', 10, 3, 2012, '248-267', 'Space assets represent the most critical undefended resource of the\nUnited States. Though the government has clearly been aware of\nthis weakness for over a generation, little appears to have been\ndone about it. Every day these assets become more critical, and\nthe threats against them are growing in kind. The United States\nmust address these threats in order to prevent potential future\nissues in regard to military command and control, as well as the\nAmerican way of life. This article not only outlines threats to space\nassets but proposes means by which U.S. space assets could be\nprotected. Such protection comes not only from technology, which\nhas been capable for years of doing the job, but from policy choice\nas well. In regard to policy, increasing research and development\nfor space-based weapons, reevaluating existing treaties, and\nincreasing interagency cooperation are all needed to better protect\nU.S. space assets.', 'astropoliticsspaceweaponization.pdf'),
(131, 36, 'The Next Great White Fleet: Extending the Benefits of the International System into Space', 6, 1, 2006, '50-70', 'This article argues that what naval power was to the 17th century—knitting\ntogether separate trading systems and bridging new resources, wealth, mobility,\nand establishing an international system of trade that pulled various powers into\nthe dominant power’s orbit—space power can be for the 21st century. To this\nend, airmen must take a wider view of what strategic value the United States\nAir Force (USAF) can provide for the United States (U.S.) beyond support\nfor warfighting.', 'astropoliticsthenextgreatwhitefleet.pdf'),
(132, 36, 'Problems of Interplanetary and Interstellar Trade', 6, 1, 2008, '95-104', 'If and when interplanetary and interstellar trade develop, it will be novel in two\nrespects. First, the distances and time spans involved will reduce all or nearly all trade\nto the exchange of intangible goods. That threatens the possibility of conducting\nbusiness in a genuinely common currency and of enforcing debt agreements incurred\nby governments. Second, interstellar trade suggests trade between humans and aliens.\nCultural distance is a probable obstacle to initiating and sustaining such trade.\nSuch exchange also threatens the release of new and dangerous memes.', 'astropoliticstheproblemsofinterplanetarytrade.pdf'),
(133, 43, 'Back to the Future: space power theory and A.T. Mahan', 16, 4, 2000, '237-241', 'No de"nitive work on space power theory is currently recognized by military theorists. Considering the similarities between space\nand the seas as arenas for commerce, transport, observation, and con#ict, one would do well to consider the earlier work of sea power\ntheorist A.T. Mahan when attempting to develop a theory of space power and to develop strategies for space control. Comparisons\nare drawn in this paper between Mahan''s elements of sea power and those that characterize nations exercising some form of space\npower today, and current interpretations of space control are contrasted with that of sea control.', 'Backtothefuturespacepowertheory.pdf'),
(134, 36, 'How Plausible is Chinese Annexation of Territory on the Moon?', 10, 1, 2012, '84-92', 'This article argues that a hypothetical decision by the People’s\nRepublic of China to assert territorial sovereignty over the area surrounding\nits planned manned Moon base is plausible. Enhanced\ninternational prestige in the near term and access to natural\nresources and strategic military positions in the long term may\nbe sufficient temptations for China’s leaders to challenge the United\nStates to a twenty-first century space race. Strategic surprise could\nbe successfully employed, given the opacity of Chinese decisionmaking;\nthe conceptual blindness of external observers, including\ndecision-makers, analysts, and academics; and China’s repeatedly\ndemonstrated capacity for executing military or diplomatic surprises\nof comparable magnitude. The ability of signatory states to\nwithdraw from the 1967 Outer Space Treaty with one-year’s notice\nmeans that international law only poses a temporary obstacle to\nsuch a decision. A manned Moon base would fulfill the condition\nof effective occupation necessary for territorial sovereignty under\ninternational law. An international relations constructivist approach\ndiscourages consideration of the advantages to states of\nterritorial aggrandizement or the weakness of international law\nin restraining the behavior of states.', 'BerryChinaMoonannexation.pdf'),
(135, 44, 'Clausewitz, Nonlinearity, and the Unpredictability of War', 17, 3, 1993, '59-90', 'Clausewitz nonlinearity', 'Beyerchen-ClausewitzNon-LinearityandtheUnpredictabilityofWar.pdf'),
(136, 40, 'Beyond the enemy Image and Spiral Model: Cognitive-Strategic Research after the Cold War', 49, 3, 1995, '415-450', 'enemy image international politics', 'Beyondtheenemyimage.pdf'),
(137, 45, 'The Age of Vulnerability: Eisenhower and the National Insecurity State', 94, 4, 1989, '963-989', 'Eisenhower Cold War Soviet Union NSC', 'Brandstheageofvulnerability.pdf'),
(138, 44, 'The Development of Nuclear Strategy', 2, 4, 1978, '65-83', 'nuclear strategy', 'Brodiedevelopmentnuclearstrategy.pdf'),
(139, 46, 'More about Limited War', 10, 1, 1957, '112-122', 'Limited War Cold War nuclear strategy', 'BrodieLimitedWar.pdf'),
(140, 46, 'Massive Retaliation and Graduated Deterrence', 8, 2, 1956, '228-237', 'nuclear deterrence strategy cold war', 'BuzzardMassiveretaliationandgraduateddeterrence.pdf'),
(141, 47, 'Deterrence Revisited: Outer Space', 3, 1, 2007, '2-11', 'Article about space deterrence', 'Chinaandspacedeterrence.pdf'),
(142, 48, 'China''s Anti-Access Strategy in Historical and Theoretical Perspective', 34, 3, 2011, '299-323', 'This article views China’s development of anti-access capabilities\nagainst the backdrop of the theory and history of military innovation. It begins\nwith a discussion of the process of military innovation, as well as the indicators\nthat may appear at different stages of that process. It then discusses the barriers\nto recognizing new ways of war and applies that framework to China’s\ndevelopment of advanced ballistic missiles, to include precision-guided conventional\nballistic missiles and anti-ship ballistic missiles (ASBMs). It concludes with\nseveral suggestions for how to improve the ability to recognize and understand\nforeign military innovation.', 'Chinaanti-accessstrategy.pdf'),
(143, 48, 'Upward and Onward: Technological Innovation and Organizational Change in China''s Space Industry', 34, 3, 2011, '405-423', 'China’s space industry has made remarkable technological advances\nin the variety and sophistication of its satellites, human space flight program, and\nlunar exploration program. China appears to be taking an integrative innovation\napproach in which foreign technologies are built upon and improved rather than\nadopted wholesale. China’s space industry is also undergoing major organizational\nchange in which it plans to enter the commercial space sector and leverage\nits expertise in space technology to manufacture civilian products. This twopronged\nstrategy is designed to make China into a strong space power on par\nwith the United States, Russia, and Europe. However, the space industry risks\noverreach and losing focus as it takes on multiple large projects.', 'Chinaspaceindustry.pdf'),
(144, 49, 'The Clash of Civilizations?', 72, 3, 1993, '22-49', 'World Politics', 'ClashofCivilization.pdf'),
(145, 48, 'Clausewitz''s Concept of Strategy - Balancing Purpose, Aims and Means', 37, 6, 2014, '903-925', 'The task of coming to a proper appreciation of Clausewitz’s\nthoughts on war is to combine a hierarchical structure with that of a floating\nbalance. This article examines the relation of purpose, aims and means in\nClausewitz’s theory and highlights that this relation is methodologically comparable\nto the floating balance of Clausewitz’s trinity. Modern strategic thinking is\ncharacterised by the ‘ends, ways, means relationship’ and the concept of the ‘way’\nas shortest possible direct connection between ends and means. If strategy is\nnothing else than the direct way of linking the political purpose with the\nmeans, understood as combat, this understandings results in ‘battle-centric’ warfare.\nMy thesis is that the aim (goal, way) in warfare is not a direct link between\npurpose and means, but rather an indirect, intermediary dimension, a mediation\n(in Hegelian terms) between purpose and aims with its own grammar. This article\ndistinguishes (sometimes going beyond Clausewitz) between the rationality of the\nwhole process of war, the rationality of the separate aspects of purpose, aims and\nmeans in warfare and finally their conflicting tendencies. This article highlights\nClausewitz’s different concepts of purpose and aims and tries to shed at least\nsome light of the strategic implications of this difference. This interpretation of\nClausewitz leads to the definition of strategy as maintaining a floating balance of\npurpose, aims and means in warfare.', 'clausewitzs_concept_of_strategy.pdf'),
(146, 44, 'Command of the Commons: The Military Foundation of U.S. Hegemony', 28, 1, 2003, '5-46', 'Commons United States world hegemony', 'commandofthecommonsPosen.pdf'),
(147, 46, 'Cooperation Under the Security Dilemma', 30, 2, 1978, '167-214', 'Anarchy and the security dilemma', 'cooperation_under_the_security_dilemma.pdf'),
(148, 44, 'Correspondence: Do Small Arsenals Deter?', 32, 3, 2007, '202-214', 'Nuclear deterrence', 'correspondence_do_small_arsenals_deter.pdf'),
(149, 48, 'Cyberwar: A New ''Absolute Weapon''? The Proliferation of Cyberwar Capabilities and Interstate War', 35, 3, 2012, '401-428', 'This article examines the implications of the proliferation of\ncyberwarfare capabilities for the character and frequency of war. Consideration\nof strategic logic, perceptions, and bargaining dynamics finds that the size of the\neffect of the proliferation of cyberwarfare capabilities on the frequency of war\nwill probably be relatively small. This effect will not be constant across all\nsituations; in some cases the advent of cyberwarfare capabilities may decrease the\nlikelihood of war. On the other hand, the use of computer network attack as a\nbrute force weapon will probably become increasingly frequent.', 'cyberwar_a_new_absolute_weapon_the_proliferation_of_cyberwarfare_capabilities_and_interstate_war.pdf'),
(150, 49, 'The Defense of Europe', 30, 1, 1952, '265-276', 'Dutch General H.J. Kruls on the defense of Western Europe against the soviet Threat', 'defenceofeuropeKruls.pdf'),
(151, 46, 'Deterrence and Foreign Policy', 41, 2, 1989, '170-182', 'Nuclear deterrence world politics policy', 'deterrenceandforeignpolicy.pdf'),
(152, 42, 'Nuclear Deterrence and the Military Uses of Space', 114, 2, 1985, '17-32', 'Article on the relationship between nuclear deterrence and the military uses of space', 'DeterrenceAndSpace.pdf'),
(153, 50, 'A Debate About Weapons in Space: for US Military Transformation and Weapons in Space', 26, 1, 2006, '163-174', 'No state relies on space for its military and economic security more than the United States,\na reliance that grows daily more precarious. The United States Air Force has been charged\nwith protecting American and allied space assets in peace and in war, and, at the direction\nof civilian authority, denying access to space to adversaries in times of crisis and conflict.\nIt is a stark reality of international politics that great power shapes the arena in which\nstate interaction takes place, and yet the exercise of power should be neither capricious nor\narbitrary. The United States should endeavor at once to establish military supremacy in\nspace, as it has already done at sea and in the air, for the purpose of stabilizing peace and\nextending into the foreseeable future its ongoing period of liberal hegemony.', 'DolmanSpaceweaponization.pdf'),
(154, 49, 'Policy for Security and Peace', 32, 3, 1954, '353-364', 'Article from US secretary of State, John Foster Dulles, on the defense of the free world (United States and Western Europe) at the beginning of the Cold War', 'Dullespolicyforsecurityandpeace.pdf'),
(155, 51, 'Economic Interdependence and International Interactions: the Impact of Country Size on Political Conflict and Cooperation', 39, 3, 2004, '605-623', 'The trade-conflict model claims that one state, designated as the ''actor'', is\ndeterred from initiating conflict against a trading partner, designated as the\n''target", for fear of losing the welfare gains a.ssociated with trade. This article\nextends the trade-conflict model to examine the effect of country size on the\ntrade gains among countries. We derive three propositions with regard to\nintemational interactions that pertain to the links between trade, conflict and\ncountry size. These hypotheses all imply that a country with an improvement in\nits terms of trade with a large country will decrease conflict inore than it would\nwith an improvement in its terms of trade with a small country. A 30-country\nsample from the Conflict and Peace Data Bank (COPDAB) is used for empirical\ntests. The empirical analyses support the derived hypotheses. The mcKlel\npredicts that a country''s ahility to influence domestic consumption in a trading\npartner is an important determinant of intemational interactions.', 'economic_interdependence_and_international_interactions.pdf'),
(156, 52, 'Enemy Images and the Journalistic Proces', 32, 1, 1995, '97-112', 'This article discusses changes in enemy image in the three Norwegian daily newspapers through a\ncomparative analysis of the coverage of four international conflicts: the Iraqi invasion of Iran in 1980,\nthe Iraqi invasion of Kuwait in 1990, martial law in Poland in 1981 and martial law in Romania in 1989.\nContent analysis of a sample of 915 articles shows how Norway''s traditional ''enemy'', the Soviet Union,\nceases to be an enemy during this ten-year period. The study compares newspaper coverage of the social\nunrest in Poland, when the threat of Soviet intervention was manifest, with coverage of the rebellion\nagainst Ceausescu in Romania. The author discusses what has happened since the Soviet Union ceased\nto be the ''main threat'' to Norwegian security. Has a ''new'' enemy linked to Islam emerged? This is\ndiscussed while comparing news coverage of the Iraqi invasion of Iran with that of the Iraqi invasion of\nKuwait. This sample found several articles revealing prejudice against Muslims in general, but enemy\nimages were mainly linked with the Ayatollah Khomeini in the first invasion and with Saddam Hussein\nin the second. The dominant use of enemy images of these two leaders is in itself an interesting part of\nthe coverage. The author concludes that enemy images are obstacles to analytical journalism, making it\nmore difficult for journalists to see the obvious parallels between the two invasions. Enemy images are\nprojected mainly in editorials and commentary columns and less so in straight news articles. However,\nthe angling of articles through headlines, illustrations and cartoons may reveal the attitudes of news\ndesks as to who the ''enemy'' is, even when the text itself is written in ''neutral'' prose.', 'enemyimagesandthejournalisticprocess.pdf'),
(157, 37, 'dgfdgdfg', 26, 2, 2012, '33-99', 'dsdf', ''),
(158, 37, 'vvvvvvv', 32, 3, 1989, '33', 'dfdf', ''),
(159, 37, 'bbbb', 23, 2, 1989, '229-252', 'dff', ''),
(160, 37, 'ghhgh', 32, 3, 2012, '229-252', 'www', ''),
(161, 37, 'fgdfg', 32, 2, 2012, '33-99', 'dffgfg', ''),
(162, 37, 'iii', 32, 2, 1995, '33-99', 'gfg', ''),
(163, 37, 'fdfdg', 23, 2, 2006, '229-252', 'ddd', ''),
(164, 52, 'Escaping the Symbolic Politics Trap: Reconciliation Initiatives and Conflict Resolution in Ethnic Wars', 43, 2, 2006, '201-218', 'Existing approaches to resolving civil wars are based primarily on the assumption that these wars result\nfrom conflicts of interest among rational individuals. However, peacebuilding efforts based on this\napproach usually fail in cases of ethnic civil war, leading sooner or later to renewed fighting. Symbolic\npolitics theory suggests the problem with these peace efforts is that they pay insufficient attention to\nameliorating the emotional and symbolic roots of extremist ethnic politics. The theory suggests that\nresolving ethnic war requires reconciliation – changing hostile attitudes to more moderate ones, assuaging\nethnic fears, and replacing the intragroup symbolic politics of ethnic chauvinism with a politics that\nrewards moderation. The only policy tools for promoting such attitudinal and social changes are\nreconciliation initiatives such as leaders’ acknowledgement of their sides’ misdeeds, public education\nefforts such as media campaigns, and problem-solving workshops. Integrating such reconciliation\ninitiatives into a comprehensive conflict resolution strategy, it is argued, is necessary for conflict\nresolution efforts to be more effective in ending ethnic civil wars.', 'escapingthesymbolicpoliticstrap.pdf'),
(165, 53, 'Evaluating Theories', 91, 4, 1997, '913-917', 'John Vasquez claims to follow Imre Lakatos but distorts his criteria for judging theories and evaluating research programs. Vasquez claims that facts observed can falsify a theory by showing that its predictions are wrong. He fails to consider the puzzles posed by the interdependence of theory and fact. He places all realists in a single paradigm despite the divergent assumptions of traditional and structural realists. In contrast to Vasquez, I argue that explanation, not prediction, is the ultimate criterion of good theory, that a theory can be validated only by working back and forth between its implications and an uncertain state of affairs that we take to be the reality against which theory is tested, and that the results of tests are always problematic.', 'evaluatingtheories.pdf'),
(166, 42, 'The Case for Ballistic Missile Defense', 114, 3, 1985, '219-237', 'Article on SDI and ballistic missile defense, a pro-argument', 'ForSDI.pdf'),
(167, 54, 'The Human Motivational Complex: Evolutionary Theory and the Causes of Hunter-Gatherer Fighting', 73, 1, 2000, '20-34', 'At the centre of this study is the age-old philosophical and psychological inquiry into the nature of the basic human system of motivation.', 'Gatmotivationcomplex.pdf'),
(168, 44, 'Getting Regilion?: The Puzzling Case of Islam and Civil War', 31, 4, 2007, '97-131', 'In this article I argue that overlapping historical, geographical, and, in particular,\nstructural factors account for Islam’s higher representation in religious\ncivil wars. Together, the historical absence of an internecine religious war similar\nto the Thirty Years’ War in Europe (1618–48), the geographic proximity of\nIslam’s holiest sites to Israel and large petroleum reserves, and jihad—a structural\nfeature of Islam—explain why so many civil wars include Islamic participants.', 'gettingreligiousToft.pdf'),
(169, 49, 'Give War a Change', 78, 4, 1999, '36-44', 'Pro war argument', 'Givewarachance.pdf'),
(170, 55, 'The Influence of Space Power upon History', 15, 3, 1996, '293-308', 'The future of air power was clearly discernible in 1918; the future of space power is similarly discernible today, following the experience of Desert Storm. Space power, in common with sensible approaches lo sea power and air power, can and should aspire to make the critical strategic difference in war. Despite its growing importance, no comprehensive theory of space power has been formulated.', 'Grayinfluenceofspacepoweronhistory.pdf'),
(171, 55, 'The Reformation of Deterrence: Moving On', 22, 5, 2003, '429-461', 'The purpose of this study is to advance the deterrence reformation that has as its principal manifesto Keith Payne’s book, The Fallacies of Cold War Deterrence and a New Direction (2001). The argument complements and augments that of Payne. It reflects the view that in order to succeed, this reformation requires many studies, much persuasion, considerable time, and an official commitment to a new approach to the problem of deterrence. The study is not critical of the concept of deterrence, only of the particular theory which has guided U.S. policy. Far from being an attack upon deterrence, the intention here is to help enable deterrence policy to be all that it can be. The reform literature seeks to increase the prospects for policy success with deterrence, while also scaling back expectations of such success.', 'Graythereformationofdeterrence.pdf'),
(172, 44, 'The Perils of Profiling: Civil War spoilers and the Collapse of Intrastate Peace Accords', 31, 3, 2007, '7-40', 'In an influential 1997 International Security article, “Spoiler Problems in Peace Processes,” Stephen Stedman introduced a typology of “civil war spoilers,” defined as “leaders and parties who believe that peace emerging from negotiations threatens their power, worldview, and interests, and use violence to undermine attempts to achieve it.” A key contribution of Stedman’s article was to focus attention on the relatively underappreciated role of elites in the negotiation and implementation of peace processes. In so doing, Stedman sought to develop a more nuanced and descriptively comprehensive theory of intrastate conflict that moved beyond the primarily structural and abstract focus that had theretofore dominated the study of internal wars and ethnic conflict. By reintroducing the role of individual decision makers into the analysis of the stability of peace accords, Stedman added significantly to the understanding of the dynamics of intrastate wars, as well as enriched and expanded the debate on the causes of ethnic conflict. We recognize the significant contribution made by Stedman and those who have adopted his “spoilers” framework.', 'Greenhilltheperilsofprofiling.pdf'),
(173, 44, 'A Geriatric Peace? The Future of US Power in a World of Aging Populations', 32, 1, 2007, '112-147', 'Article about US power in an aging world', 'HaasonfutureofAmericanpower.pdf'),
(174, 44, 'Historical Reality vs Neo-Realist Theory', 19, 1, 1994, '108-148', 'Critical reflection of neorealist theory in light of historic reality', 'historicalrealityvsneorealisttheory.pdf'),
(175, 44, 'Environmental Scarcities and Violent Conflic: Evidense from Cases', 19, 1, 1994, '5-40', 'Environmental scarcity and violent conflict', 'Homer-DixonEnvironmentalscarcities.pdf'),
(176, 44, 'Environment and Security', 20, 3, 1996, '189-198', 'Debate between Homer-Dixon and Levy on relationship between environmental scarcity and violent conflict', 'Homer-DixonLevycorrespondenceenvironmentandsecurity.pdf'),
(177, 56, 'Politics and Identity in the Argentine Army: Cleavages and the Generational Factor', 26, 2, 1991, '157-170', 'Politics and identity', 'identityArgentinanarmy.pdf'),
(178, 57, 'Ignoring reality: Problems of theory and evidence in security studies', 7, 2, 1997, '115-171', 'Review of Robert Pape''s Bombing to Win: Air power and Coercion in war', 'IgnoringrealityWatts.pdf'),
(179, 58, 'Intergroup Relations', 40, 1, 1989, '45-81', 'Intergroup Relations', 'IntergroupRelations.pdf'),
(180, 59, 'International Relations and the Methodological Turn', 34, 3, 1991, '463-478', 'On methodology of international relations', 'IRandmethodologicalturn.pdf'),
(181, 48, 'Saddam''s Perceptions and MisperceptionsL The Case of Desert Storm', 33, 1, 2010, '5-41', 'A large collection of captured documents from the very highest levels of the Iraqi government offers a chance to gain insight into why\nSaddam Hussein was unwilling and unable to alter his strategy on the eve of the 2003 war that toppled his regime. This paper explores some of the perceptions and misperceptions that Saddam Hussein took away from the 1991 Gulf War and shows how they affected his decisionmaking on the eve of the war in 2003. It concludes with some thoughts on the policy implications of these findings.', 'IRaqWarSaddamperception.pdf'),
(182, 60, 'Complexity and the Analysis of Political and Social Life', 112, 4, 1997, '569-593', 'Complexity theory and international politics', 'JervisComplexity.pdf'),
(183, 49, 'Military Policy and Defense of the "Grey Areas"', 33, 1, 1955, '416-428', 'Deterrence massive retaliation and limited war', 'kissingermilitarypolicy.pdf'),
(184, 61, 'Corbett in Orbit: a Maritime Model for Strategic Space Theory', 57, 1, 2004, '59-74', 'Space Power theory', 'KleinCorbettinSpaceart5-w04.pdf'),
(185, 36, 'The Influence of Technology on Space Strategy', 10, 1, 2012, '8-26', 'The influence of technology on the conduct of warfare and the\ndevelopment of strategy is still largely misunderstood. This confusion\nalso holds true regarding technology’s influence on space\nwarfare and the development of space strategy. Judging from history,\nwe can expect that advances in space-related technology will\nbe used in ways commensurate with the current paradigm,\nespecially with respect to military operations. Therefore, space\noperations will probably play supporting roles to operations on\nland, at sea, and in the air, at least in the near term. It will likely\nbe some time until the strategic advantages of space-based or\nspace-enabled operations are fully appreciated and effectively\nemployed. Additionally, the historical theory and principles of general\nwarfare remain valid, even when considering military operations\nin space. While advances in space-related technology or\nspace-based weaponry will not change the fundamental nature\nof warfare, they are expected to change warfare’s conduct and\ncharacter. Through a better understanding of technology’s influence\non military operations, it is possible to develop a more complete\ntheory and more fully developed strategic principles of space\nwarfare.', 'KleinTechnologyandSpaceStrategy.pdf'),
(186, 36, 'On War in Space', 5, 1, 2007, '1-27', 'Earth orbital space is a militarily and economically critical arena to the U.S.\nWhile space has never been forcibly contested to date, this initial period of coincidental\nquiescence is coming to an end. A growing number of states are developing\nthe means with which not merely to access and exploit space, but to conduct space\nwarfare as well. The time has thus arrived to address the issue of war in space,\ndriving the need for a conceptual framework with which to approach the defense\nof U.S. space assets and related military and economic security.\nThis paper focuses on developing a theory of space warfare, as distinct from\nmost other treatises in this field, which focus on space power theory. It accomplishes\nthis via a deductive process, exploring some of the current thinking on\nmilitary theories in general, and examining their applications to space warfare\nspecifically. The result of this analysis is a set of theoretical principles summarizing\nand describing the nature and needs of war in space. It is hoped that these\nprinciples will prove useful in future to the processes of designing weapon systems\nas well as planning, deploying, training, and conducting space combat strategies\nand operations.', 'Kleinberg_On_War_in_Space.pdf'),
(187, 50, 'The Battle for Celestial Property Rights', 26, 1, 2006, '189-191', 'Space', 'Klimentdebatespace.pdf'),
(188, 62, 'Peace, Security and Development in Post-Conflict Environments', 36, 4, 2005, '447-462', 'This article presents a critical overview of the contemporary practice\nof post-conflict peacebuilding (PCPB), arguing that contemporary\npost-conflict operations rest upon the assumption that a sophisticated\nsocial engineering approach could replace, or accelerate, a process of\nstate formation that occurs rather more organically. Yet, PCPB is\nsubject to the same tensions and dilemmas as the process of state formation.\nMany recent post-conflict reconstruction and rehabilitation\nprogrammes have been conducted with little critical self-reflection on\nthe underlying assumptions or structural biases of PCPB efforts. One\nmajor reason for this is the missing connection, in the minds of\npolicymakers and practitioners, between security and development\nconcerns. The concept of human security can help bridge this gap and\nis also compatible with a form of Popperian ‘piecemeal’ social engineering\nthat is more consistent with a critical approach to PCPB.', 'Krausepeacesecurityanddevelopment.pdf'),
(189, 44, 'Escape from the State of Nature Authority and Hierarcht in World Politics', 32, 1, 2007, '47-79', 'International Relations', 'Lakeonhierarchyinpolitics.pdf'),
(190, 55, 'Missile Defense in 2027', 27, 1, 2008, '57-64', 'While there is some uncertainty about the direction of the U.S. missile defense program,\nthere can be little question that the threats posed by ballistic missiles and the\navailability of nuclear weapons to potential adversaries will continue to grow well into\nthis century. We will need new capabilities, because, over the long term, the currently\nconfigured and planned terrestrial-based missile defense system will be unable to deal\nwith increasingly sophisticated countermeasures and shifting threats. Maximizing protection\nof the United States and its allies against new threats in the decades ahead can\nbe achieved by supplementing fixed ground-based defenses with mobile defenses, using\nplatforms on land, at sea, or in space. Space seems to have the most to offer if we are\nstriving for global and timely protection. It will be critical to future security strategy\nto continue efforts to integrate offensive and defensive capabilities in order to bring\nthe full power of our armed forces to bear on the dangers we will face in the years\nahead.', 'Lambakismissileshield2027.pdf'),
(191, 44, 'The Unipolar Illusion Revisited: The Coming End of the United States'' Unipolar Moment', 31, 2, 2006, '7-41', 'International relations', 'LayneonUSprimacy.pdf'),
(192, 44, 'Is the Environment a National Security Issue?', 20, 2, 1995, '35-62', 'Climate change and international security', 'Levyistheenvironmentanationalsecurityissue.pdf'),
(193, 63, 'Constitutional Design for Divided Societies', 15, 2, 2004, '96-109', 'Nationalism and ethnic conflict resolution', 'LijphartConstitutionaldesignfordividedsocieties.pdf'),
(194, 64, 'Strategy: The Challenge of Complexity', 7, 1, 2007, '42-64', 'Strategy is difficult; very difficult. As the counter-insurgency campaign in Iraq demonstrates, the complexity of strategy is such that achieving a satisfactory end-state at reasonable cost, and within a reasonable timeframe, is often more elusive than ill-informed comment would suggest. Strategy is here defined as an art, and not a science. This is done to reflect the fact that there are no formulas for strategic success. Every strategic context is unique, and therefore requires its own unique mixture and application of strategic assets. In order to fully appreciate the challenges faced by those practising strategy, and to provide a common set of definitions and concepts, this article seeks to dissect the art of strategy.', 'LonsdaleComplexityinWar.pdf'),
(195, 36, 'Predicting an Arms Race in Space: Problematic Assumptions for Space Arms Control', 10, 1, 2012, '49-67', 'The decision by the Obama Administration of the United States to include the consideration of space arms control measures is one of\nthe latest wake-up calls for stakeholders in the space weaponization debate. Featuring the interplay between economic, political,\nand technical considerations, the outcome of this issue may depend on the political justifications and implications of the arguments\nproposed. This article uses international relations theory to analyze the assumptions behind the argument that the United States’ placement of weapons in space would inevitably lead to an arms race in space. By examining the structural realist concept of stability and considering what such an arms race in space would entail, it concludes that this outcome is, at best, only probable, and that its continued use weakens the overall argument of anti–space weapons proponents. Addressing such problematic assumptions may prove important not only in strengthening the arguments of stakeholders on both sides of the issue, but also in enriching the debate and bridging perspectives on this highly polarized issue.', 'Lopezpredictingaarmsraceinspace.pdf'),
(196, 65, 'The Middle of Nowhere', 134, 1, 2007, '1-5', 'Luttwak on the importance of the Middle East', 'Luttwakthemiddleofnowhere.pdf'),
(197, 66, 'Chaos Theory and Strategic Thought', 22, 3, 1992, '54-68', 'Implications of Chaos Theory for strategic thought', 'MannChaosStrategicthought.pdf'),
(198, 50, 'A Debate About Weapons in Space: against A New Cold War?', 26, 1, 2006, '175-188', 'Throughout the space age, the United States has resisted the temptation to insert weapons into orbit and to deploy a unilateral capability to “control” space in a time of conflict. That peaceful-purposes policy has never been popular with America’s “space warriors” and it\nis under sustained assault today. Conflict in space is inevitable, space warriors say. Given that, the United States must preemptively get on with the space-control mission. To space warriors, a demonstrated capability to control space seems sensible and necessary. To other nations, such a capability would more likely suggest a velvet-glove hegemony that could someday turn to steel-fisted imperialism. What nation could afford to rely on the everlasting good intentions of another nation, even one as relatively benign as the United States? If the\nUnited States chooses to pursue a space-control capability, the most likely consequence will be a new Cold War, most likely with China.', 'Mooredebatespaceweapons.pdf'),
(199, 48, 'New or Old Wars? Debating a Clausewitzian Future', 32, 2, 2009, '213-241', 'Over the last 18 years or so, much of the debate about modern warfare has been about whether it should be described as ‘old’ or ‘new’.\nHowever, there has not been a definitive answer as to which best reflects war in the modern world. Increasingly, the alternative arguments are polarised into opposing camps. Indeed, it would be fair to say that there is little in the way of debate at all. By revaluating the strengths and weaknesses of each argument, this paper aims to reinvigorate that discussion by examining whether changes in the way we understand war are really required. Finding that the ideas are not in fact mutually exclusive, it suggests that future research could benefit from a combined approach.', 'new_or_old_wars_debating_a_clausewitzian_future.pdf'),
(200, 67, 'Nuclear Arsenal Games: Coping with Proliferation in a World of Changing Rivalries', 33, 4, 2000, '723-746', 'nuclear deterrence', 'NuclearArsenals.pdf'),
(201, 42, 'Nuclear Weapons and the Waning of the Real-State', 124, 2, 1995, '209-231', 'Nuclear deterrence', 'nuclearweaponsandtherealstate.pdf'),
(202, 49, 'Nuclear Weapons: Strategic or Tactical?', 32, 1, 1954, '217-229', 'Nuclear deterrence', 'nuclear_weapons_strategic_or_tactical.pdf'),
(203, 52, 'Nuclear Deterrence in the Developing World: a Game-Theoretic Treatment', 36, 2, 1999, '141-167', 'There has been an increasing debate over the consequences of proliferation and the viability of deterrence in the newly-nuclear states, with the scholarly community generally splitting into two opposed and mutually exclusive groups. One set of scholars believes in the efficacy of deterrence and thus tends to favor proliferation, while another loose grouping of research efforts questions the viability of deterrence in the developing countries. The former group has generally pitched its arguments at an abstract level (primarily through non-formal research), while the latter group has based its critiques on specific countries or on subtopics within the theory of deterrence (such as the fragility of command and control systems). This article is an attempt to synthesize and formalize the key questions and concepts of this debate through both a literature review and a game model of complete and perfect information that allows for crisis escalation at the conventional and nuclear levels of conflict. After noting several logical inconsistencies in the extant pro-proliferation and pro-deterrence research, the article resolves many of the key issues through a formal study of the interactions between threat credibility, threat capability, and the dynamics of escalation. The results show some severe weaknesses in the pro-proliferation school: nuclear blackmail is still a possibility in dyads that experience asymmetric proliferation or in dyads where threat credibility at the nuclear level favors one side; nuclear weapons generally fail to bridge the gap left by incapable conventional forces; and status quo stability is intimately tied to variations in preference orderings, even when both sides possess capable nuclear threats. Contrary to the findings of the pro-proliferation school, deterrence between developing countries is neither simple nor preordained.', 'NuclearDeterrenceDevelopingWorldGameTheory.pdf'),
(204, 40, 'Outer Space and International Cooperation', 19, 3, 1965, '603-621', 'Space power', 'Outer_Space_and_International_Cooperation_Bloomfield.pdf');
INSERT INTO `articles` (`article_id`, `journal_id`, `title`, `volume`, `issue`, `year`, `pages`, `abstracttext`, `pdflink`) VALUES
(205, 36, 'The Inevitability of the Weaponization of Space: Technological Constructivism  versus Determinism', 10, 1, 2012, '39-48', 'The concept of national security is based on the need to maintain the safety and security of the population. In 1957, the Soviet Union\nwas the first state to threaten this safety in space with the launch of Sputnik. Although Sputnik did not pose a credible threat, it was\nperceived as such by the Western world. As the space race intensified in the 1960s, efforts were made to prevent the development\nand use of space weapons. With the 1967 Outer Space Treaty, space weapons were effectively made unlawful, with signatories agreeing to forgo these expensive technologies. However, at the beginning of the twenty-first century, factors and efforts are beginning to converge that indicate the inevitability of space weaponization. Based on a new concept of technological development, this article proposes that as technology advances, space weaponization not only is likely, but indeed is inevitable in the near future. Grounded in the competing theories of technological determinism and social constructivism, I offer a new theory that incorporates both and introduces new components to analyze a near-future technological timeline for space weapons. I argue that the development of these weapons is inevitable and should therefore be accelerated in the United States, given the country’s position as the lone superpower, to command and control the space commons. If the United States leads this drive for development, then in the end, as with thermonuclear weapons, space weapons will make the world more, not less, secure, and will contribute to the spread of democratic peace and globalized capitalism.', 'PavelecInevitableofSpaceWeaponization.pdf'),
(206, 36, 'Space Science as a Cradle for Philosophers', 10, 1, 2012, '27-38', 'Not only astronauts, but also many space-related scientists have made remarkable contributions to the development of a more philosophical view of society. These contributions are illustrated by numerous works produced by famous space pioneers at the end of\ntheir careers. The link between science and philosophy is well acknowledged, but the two disciplines suffered a schism some 350\nyears ago. Now one could ask the question of whether the time has not come to merge both disciplines again. This precise theme can\nbe found in many works and papers written by space scientists. In attempting to create a better understanding of the relation between\nspace and philosophy, it is worthwhile to consider some characteristics of the space workforce. Comparisons have been made between\nthis workforce and so-called ‘‘corporate Ronins’’—independent and unconventional thinkers who are attracted by the challenging\nenvironment offered by space activities. These individuals’ presence in the space workforce could therefore be a viable explanation for\nthe philosophical dimension associated with space activities.', 'PeetersInfluenceSpaceScience.pdf'),
(207, 68, 'Persuasion and Coercion: A Critical Review of Philosophical and Empirical Approaches', 19, 2, 2007, '125-143', 'Persuasion and coercion', 'persuasion_and_coercion_a_critical_review_of_philosophical_and_empirical_approaches.pdf'),
(208, 48, 'Planning versus Chaos in Clausewitz''s On War', 30, 1, 2007, '129-151', 'Clausewitz laid great emphasis on the planned construction of war, but this idea has received little attention from his commentators, who generally attach far greater importance to what he said about the chaotic elements of war, in particular its interactive nature and the friction inseparable from its conduct. This article gives long-overdue recognition to planning as a dominant theme of On War. The essential point Clausewitz makes concerning interaction is not that the enemy’s responses are bound to disrupt our plans, but that our plans must\naim to predict and incorporate his responses. Clausewitz acknowledges that friction creates enormous difficulties for the realization of any plan, but it is precisely in respect of this challenge that he develops the concept of military genius, whose capabilities are seen above all as the executive arm of planning.', 'planning_versus_chaos_in_clausewitz_on_war.pdf'),
(209, 48, 'Productive War: A Re-Conceptualisation of War', 34, 1, 2011, '39-62', 'Conventional wisdom on the phenomenon of war is criticised for providing little relevant guidance to deal with the security challenges of our era. One reason is that this attitude uncritically assumes power as synonymous with force. In response, ‘productive war’ is here proposed as a re-conceptualisation of war based on Michel Foucault’s alternative understanding of power. Productive war appreciates the role of violence but subordinates it to non-kinetic dynamics influencing the dimension of meaning in international security. This theoretical\nperspective provides a conceptual framework to deal with the dynamics of political mobilisation essential to create public support for nation-building abroad and for visions of world order.', 'Productivewar.pdf'),
(210, 43, 'Protecting safe access to space: Lessons from the first 50 years of space security', 23, 4, 2007, '199-205', 'Despite predictions to the contrary at various times from 1957 to 2007, the first 50 years of space security have ended without an arms\nrace or military combat. Arguably, the three riskiest years were 1962, 1983, and 2001. Looking for lessons from these cases, we can\nidentify four primary trends that helped states avoid arms races and direct conflicts in orbit: (1) risks of collective ‘‘bads’’; (2) fear of\naction–reaction dynamics; (3) the high cost of space weapons; and (4) the asset of transparency. As we look ahead, trends toward a\ncontinued focus on these factors in space security seem strong. But successful prevention of future space warfare will require strengthened\nforms of individual and collective restraint by all actors in space.', 'ProtectingSpaceMoltz.pdf'),
(211, 69, 'Armed Conflict on the Final Frontier: The Law of War in Space', 48, 1, 2000, '1-158', 'Space law', 'RameyLawsofwarinspace.pdf'),
(212, 46, 'Rational Deterrence Theory and Comparatice Case Studies', 41, 2, 1989, '143-169', 'Deterrence', 'rationaldeterrencetheory.pdf'),
(213, 40, 'Rationality and Psychology in International Politics', 59, 1, 2005, '77-106', 'The ubiquitous yet inaccurate belief in international relations scholarship that cognitive biases and emotion cause only mistakes distorts the field''s understanding of the relationship between rationality and psychology in three ways. If psychology explains only mistakes (or deviations from rationality), then (t) rationality must be free of psychology; (2) psychological explanations require rational baselines;\nand (3) psychology cannot explain accurate judgments. This view of the relationship between rationality and psychology is coherent and logical, but wrong. Although undermining one of these three beliefs is sufficient to undermine the others, I address each belief—or myth—in turn. The point is not that psychological models should replace rational models, but that no single approach has a lock on\nunderstanding rationality. In some important contexts (such as in strategic choice) or when using certain concepts (such as trust, identity, justice, or reputation), an explicitly psychological approach to rationality may beat a rationalist one.', 'rationalityandpsychology.pdf'),
(214, 40, 'Why Ideas Matter in International Politics Relations: Hans Morgenthau, Classical Realism, and the Moral Construction of Power Politics', 58, 4, 2004, '633-665', 'Debates over how ideas matter in international relations have come to occupy a key place in the field. Through a reexamination of the thinking of Hans Morgenthau, this article seeks to recover a tradition of classical realism that stressed the role of ideas in both the construction of action and in political and ethical judgment. Locating Morgenthau''s understanding of politics against the background of\nthe oppositional "concept of the political" developed by the controversial jurist Carl Schmitt shows how Morgenthau''s realism attempts to recognize the centrality of power in politics without reducing politics to violence, and to preserve an open and critical sphere of public political debate. This understanding of Morgenthau''s realism challenges many portrayals of his place in the evolution of international relations, and of the foundations of realist thought. However, it is also of direct relevance to current analyses of collective identity formation, linking to-and yet providing fundamental challenges for--both realist and constructivist theories.', 'realismidentityandthemoralconstructionofpowerpolitics.pdf'),
(215, 70, 'Realist Thought and Neorealist Theory', 44, 1, 1990, '21-37', 'Neorealist theory international relations theory', 'RealistThoughtandNeorealistTheory.pdf'),
(216, 53, 'Dilemmas of Politics by Hans J. Morgenthau', 53, 2, 1959, '529-532', 'Review of book by Hans Morgenthau by Kenneth Waltz', 'reviewMorgenthaubyWaltz.pdf'),
(217, 60, 'Power and Principle: Memoirs of the National Security Advisor, 1977-1981', 99, 1, 1984, '96-97', 'Review of memoirs Zbigniew Brzezinski', 'reviewpowerandprinciple(Ball).pdf'),
(218, 71, 'Conduct in Office', 28, 2, 1984, '264', 'Review memoirs Zbigniew Brzezinski, Power and Principle', 'reviewpowerandprinciple(Burke).pdf'),
(219, 72, 'A Record of Failure', 75, 6, 1983, '76', 'Review memoirs Zbigniew Brzezinski by Luttwak', 'reviewpowerandprinciple(Luttwak).pdf'),
(220, 73, 'Review: Power and Principles: memoirs of the National Security Advisor, 1977-1981', 59, 4, 1983, '783-784', 'Review memoirs Zbigniew Brzezinski', 'reviewpowerandprinciple.pdf'),
(221, 53, 'Macropolitics: International Relations in a Global Society', 70, 1, 1976, '296-297', 'Review book ''Macropolitics: International Relations in a Global Society'' by Richard W. Sterling', 'reviewWaltz.pdf'),
(222, 48, 'Revisiting J.C. Wylie''s Dichotomy of Strategy: The Effects of Sequential and Cumulative Patterns of Operations', 35, 2, 2012, '223-242', 'J.C. Wylie presented his dichotomy of sequential and cumulative operational patterns in a context of effect through control, not victory or peace, as the objective of war. The author refines concepts of control presented by Rosinski, Eccles, Schelling and Corbett and presents its three facets (taking, denying, exercising) to develop a model of control as manipulation of the opponent’s operational choices. This concept of control, when applied to sequential and cumulative strategy, reveals the effect each has operationally and, from there, strategically, in the primary arenas and forms of engagement (land, sea, air and cyberspace; conventional, guerrilla, terrorism, special operations).', 'revisiting_jc_wylies_dichotomy_of_strategy_the_effects_of_sequential_and_cumulative_patterns_of_operations.pdf'),
(223, 74, 'Regional Security Complex Theory and Chinese Policy towards North Korea', 21, 4, 2004, '64-82', 'Regional security complex theory', 'RSCTandChinesePolicyNorthKorea.pdf'),
(224, 75, 'Russian Full-Spectrum Conflict: An Appraisal After Ukraine', 28, 1, 2015, '1-22', 'This article argues that the current ways of conceptualizing and understanding Russian warfare are flawed. To improve this, this article reviews the current ways of approaching Russian warfare from post-independence to after Ukraine. Then, we investigate\nRussian warfare from the four spectrums of military, informational, economic, and energy, and from political influence operations. From this, we propose the concept of Full-Spectrum Conflict that captures the use of violent and non-violent means as well as the conduct of conflict in differing degrees of intensity from peace to war and the space in between. This remedies the problem of conceptualizing, and hopefully understanding, the conduct of Russian conflict.', 'russian_full_spectrum_conflict.pdf'),
(225, 76, 'The Contagiousness of Conflict: E.E. Schattschneider as a theorist of the information society', 5, 2, 2002, '258-275', 'Elmer Eric Schattschneider (1892–1971) was one of the most distinguished US political scientists of his day but beyond an isolated footnote, his work rarely receives much attention today. This paper suggests that there is much in Schattschneider’s work that deserves renewed attention. In 1960, Schattschneider published The Semisovereign People, a study of the transformation of US politics from a set of regional hegemonies to a genuinely national political system. While this may seem arcane to students of the information society, The Semisovereign People actually offers a conceptual toolkit for understanding the way in which\nnew information and communications technologies are changing the global political landscape. In an era of satellite television, the Internet and the mobile phone, Schattschneider’s key concepts of scope, visibility and the socialization of con? ict provide powerful insights into the politics of a globalizing world. E.E. Schattschneider thought he was writing a book about the nationalization of US politics in the middle of the twentieth century in fact what he actually wrote was a theory of political globalization.', 'Schattschneiderinformationtheorist.pdf'),
(226, 42, 'The Strategic Defense Initiative and the Soviet Union', 114, 3, 1985, '257-278', 'Advocates of the Strategic Defense Initiative have pointed to the Manhattan Project and the Apollo program as examples of the marvelous feats that American technology can perform. But the SDI is a different kind of undertaking. The scientists and engineers who built the first atomic bomb and placed the first man on the moon did not have to contend with an opponent who was trying to foil their efforts. Those who wish to build a ballistic missile defense (BMD) system, however, have to take into account the fact that the opponent whose offensive missiles they wish to destroy will do everything he can to render the defense ineffective. None of the important questions that have been raised about the\ntechnical and operational feasibility of the SDI, or about its effect on U.S. security, the risk of nuclear war, and the prospects for arms control, can be answered without some consideration of the Soviet leaders'' view of President Reagan''s initiative and of their likely\nresponse to it.', 'SDIandUSSR.pdf'),
(227, 77, 'Sovereignty and the UFO', 36, 4, 2008, '607-633', 'Modern sovereignty is anthropocentric, constituted and organized by reference to human beings alone. Although a metaphysical assumption, anthropocentrism is of immense practical import, enabling modern states to command loyalty and resources from their subjects in pursuit of political projects. It has limits, however, which are brought clearly into view by the authoritative taboo on taking UFOs seriously. UFOs have never been systematically investigated by science or the state, because it is assumed to be known that none are extraterrestrial. Yet in fact this is not known, which makes the UFO taboo puzzling given the ET possibility. Drawing on the work of Giorgio Agamben, Michel Foucault, and Jacques Derrida, the puzzle is explained by the functional imperatives of anthropocentric sovereignty, which cannot decide a UFO exception to anthropocentrism while preserving the ability to make such a decision. The UFO can be “known” only by not asking what it is.', 'sovereigntyandUFO.pdf'),
(228, 34, 'The Soviet/Russian approach to military space', 15, 3, 2002, '25-48', 'This article examines Russia''s military space activities since the breakup of the Soviet Union. The development of Soviet Military Space during the Cold War is addressed through the prism of the theories of space power. Although these concepts of space power are mainly the product of the US Air Force''s thinking they provide an insight into Soviet thinking on the issue of weaponization of space. The Soviet approach to military space was based on the writings of Sovoloskiy which provides an alternative concept to the realm of space. The extent to which this approach is still relevant today will be examined, along with the Russian Military Space programme and the fate of the military space units in the former Soviet Republics. The conversion of military equipment for so-called civilian purposes is also addressed. The negotiations with Kazakhstan over the cosmodrome in Baykonur, the only one outside of Russia, is scrutinized. The military utilization of space facilities is analyzed in terms ''of its contribution to the conventional forces. Lastly, cooperation with the United States is examined with Russia both in terms of the potential for cooperation with the global protection system and in the field of launch technology.', 'sovietapproachtospace.pdf'),
(229, 34, 'The Soviet/Russian antisatellite programme during the cold war and beyond', 15, 1, 2002, '17-28', 'The article outlines the development of the Soviet antisatellite (ASAT) in terms of both the organisational structure and eventual ASAT testing and the development of its capability. It analyses the Soviet ASAT testing methods to gain an insight into the strengths and operational capabilities of its programme. Having analysed the extensive Soviet ASAT development during the Cold War the article progresses to analyse Russia''s continuing work on ASAT weaponry.', 'SovietASATdevelopment.pdf'),
(230, 78, 'The Soviet Union and detente of the 1970s', 8, 4, 2008, '427-447', 'De´tente of the 1970s was a vital stage in global history of the 20th century, when the rise of Soviet communism stopped and the collapse of the Soviet bloc began. Soviet behaviour during detente was not a consistent policy, but rather an extension of Soviet conservative ideological regime under Leonid Brezhnev. Despite some windfall gains, the Soviet Union failed to capitalize on detente as it expected. Soviet overextension in the ThirdWorld and growing dependence of Soviet semi-autarchic economy on global trends prepared the ground for Soviet collapse one decade later.', 'sovietunionanddetente.pdf'),
(231, 79, 'So Why Do People Fight? Evolutionary Theory and the Causes of War', 15, 4, 2009, '571-599', 'The causes of war remain a strangely obscure subject in the discipline of International Relations. Although the subject is of cardinal significance, theories of International Relations address it only obliquely, and most scholars in the field recognize the lacuna only when their attention is drawn to it. While people have a good idea of the aims that may\nmotivate states to go to war, an attempt at a strict definition of them is widely regarded as futile. This article seeks to show how the various causes of violence and war all come together and are explained within an integrated human motivational complex, shaped by evolution and natural selection. These interconnected causes of fighting — some of\nthem confusedly singled out by various schools in IR theory, most notably within realism — include competition over resources and reproduction, the ensuing quest for dominance, the security dilemma and other prisoner’s dilemmas that emanate from the competition, kinship, identity, and ideas.', 'SoWhypeoplefightGat.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
`author_id` int(11) NOT NULL,
  `author_firstname` varchar(100) NOT NULL,
  `author_lastname` varchar(100) NOT NULL,
  `initial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_firstname`, `author_lastname`, `initial`) VALUES
(71, 'Anton', 'Minkov', NULL),
(72, 'Gregory', 'Smolynec', NULL),
(73, 'John', 'Wagner', NULL),
(74, 'Antulio', 'Echevarria', 'J.'),
(75, 'Andrew', 'Krepinevich', NULL),
(76, 'Barry', 'Watts', 'D.'),
(77, 'Robert', 'Work', NULL),
(79, 'Dinshaw', 'Mistry', NULL),
(80, 'Bharath', 'Gopalaswamy', NULL),
(81, 'Gurbachan', 'Singh Sachdeva', NULL),
(82, 'Marilyn', 'Dudley-Flores', NULL),
(83, 'Thomas', 'Gangale', NULL),
(84, 'John', 'Klein', NULL),
(85, 'Tjeerdjan', 'Nieuwenhuis', NULL),
(86, 'Anthony', 'Cordesman', NULL),
(87, 'Abdullah', 'Toukan', NULL),
(88, 'Jan', 'Hoffenaar', NULL),
(89, 'Clayton', 'Chun', NULL),
(90, 'Peter', 'Olsen', NULL),
(91, 'Colin', 'Gray', 'S.'),
(92, 'Jonathan', 'Mercer', NULL),
(93, 'Alexander', 'Wendt', NULL),
(94, 'Fraser', 'MacDonald', NULL),
(95, 'Carlo', 'Kopp', NULL),
(96, 'Peter', 'Goon', NULL),
(97, 'Emma', 'Norman', 'R.'),
(98, 'Kurt', 'Gottfried', NULL),
(99, 'Richard', 'Lebow', 'Ned'),
(100, 'Will', 'Marshall', NULL),
(101, 'Trevor', 'Brown', NULL),
(102, 'Alan', 'Steinberg', NULL),
(103, 'Peter', 'Garretson', NULL),
(104, 'John', 'Hickman', NULL),
(105, 'Robert', 'Futrell', 'F.'),
(106, 'Martin', 'France', 'E.B.'),
(107, 'Huss', 'Banai', NULL),
(108, 'Alan', 'Beyerchen', NULL),
(109, 'Richard', 'Herrmann', 'K.'),
(110, 'Michael', 'Fischerkeller', 'P.'),
(111, 'Bruce', 'DeBlois', 'M.'),
(112, 'H.W.', 'Brands', ''),
(113, 'Bernard', 'Brodie', NULL),
(114, 'Eric', 'Pimpler', NULL),
(115, 'Alan', 'Burke', 'W.'),
(116, 'Anthony', 'Buzzard', 'W.'),
(117, 'William', 'Spacy', 'L.'),
(118, 'Rosemary', 'Kelanic', 'A.'),
(119, 'Bao', 'Shixiu', NULL),
(120, 'Thomas', 'Mahnken', 'G.'),
(121, 'Monika', 'Chansoria', NULL),
(122, 'Kevin', 'Pollpeter', NULL),
(123, 'Phillip', 'Karber', 'A.'),
(124, 'Samual', 'Huntington', 'P.'),
(125, 'Arnold', 'Streland', 'H.'),
(126, 'Andreas', 'Herberg-Rothe', NULL),
(127, 'Barry', 'Posen', 'R.'),
(128, 'David', 'Alberts', 'S.'),
(129, 'Thomas', 'Czerwinski', 'J.'),
(130, 'Robert', 'Jervis', NULL),
(131, 'Rajesh', 'Basrur', 'M.'),
(132, 'Michael', 'Cohen', 'D.'),
(133, 'Ward', 'Wilson', NULL),
(134, 'Martin', 'Libicki', 'C.'),
(135, 'Adam', 'Liff', 'P.'),
(136, 'Hendrik', 'Kruls', 'J.'),
(142, 'Alexander', 'George', 'L.'),
(143, 'Richard', 'Smoke', NULL),
(144, 'Herbert', 'York', 'F.'),
(145, 'Scott', 'Fox', 'M.'),
(146, 'Alec', 'Robinson', 'M.'),
(147, 'Everret', 'Dolman', 'C.'),
(148, 'Peter', 'Hays', ''),
(149, 'Karl', 'Mueller', 'P.'),
(150, 'John', 'Dulles', 'F.'),
(151, 'Yuan-Ching', 'Chang', ''),
(152, 'Samuel', 'Glasstone', NULL),
(153, 'Philip', 'Dolan', 'J.'),
(154, 'Rune', 'Ottosen', ''),
(156, 'Robert', 'Butterworth', 'L.'),
(157, 'John', 'Sheldon', 'B.'),
(158, 'Stuart', 'Kaufman', 'J.'),
(159, 'Kenneth', 'Waltz', 'N.'),
(160, 'John', 'Toomay', 'C.'),
(161, 'Jeff', 'Kueter', NULL),
(162, 'Eric', 'Sterner', ''),
(163, 'James', 'Moltz', 'C.'),
(164, 'Elvert', 'Gardner', 'L.'),
(165, 'Azar', 'Gat', ''),
(166, 'Stefano', 'Iacovella', NULL),
(167, 'Brian', 'Youngblood', ''),
(168, 'Monica', 'Toft', 'D.'),
(169, 'Don', 'Wilkerson', 'L.'),
(170, 'Edward', 'Luttwak', 'N.'),
(171, 'Mark', 'Redden', 'E.'),
(172, 'Michael', 'Hughes', 'P.'),
(173, 'Alper', 'Dincer', NULL),
(174, 'Balkan', 'Uraz', ''),
(175, 'Kelly', 'Greenhill', 'M.'),
(176, 'Soloman', 'Major', ''),
(177, 'Mark', 'Haas', 'L.'),
(178, 'Paul', 'Schroeder', ''),
(179, 'Thomas', 'Homer-Dixon', 'F.'),
(180, 'Marc', 'Levy', 'A.'),
(181, 'Silvio', 'Waisbord', ''),
(182, 'Richard', 'Patenaude', 'M.'),
(183, 'David', 'Messick', 'M.'),
(184, 'Diane', 'Mackie', 'M.'),
(185, 'Richard', 'Little', ''),
(186, 'Kevin', 'Woods', 'M.'),
(187, 'Mark', 'Stout', 'E.'),
(188, 'John', 'Wohlstetter', NULL),
(189, 'Henry', 'Kissinger', 'A.'),
(190, 'Howard', 'Kleinberg', ''),
(191, 'Alexander', 'Kliment', ''),
(192, 'Keith', 'Krause', ''),
(193, 'Oliver', 'Jutersonke', ''),
(194, 'David', 'Lake', 'A.'),
(195, 'Steven', 'Lambakis', ''),
(196, 'Christopher', 'Layne', ''),
(197, 'Qiao', 'Liang', NULL),
(198, 'Wang', 'Xiangsui', ''),
(199, 'Arend', 'Lijphart', ''),
(200, 'David', 'Lonsdale', 'J.'),
(201, 'Laura', 'Lopez', 'D.'),
(202, 'David', 'Lupton', 'E.'),
(203, 'Steven', 'Mann', 'R.'),
(204, 'Benjamin', 'Lambeth', 'S.'),
(205, 'Mike', 'Moore', ''),
(206, 'Forrest', 'Morgan', 'E.'),
(207, 'John', 'Garstka', 'J.'),
(208, 'Frederick', 'Stein', 'P.'),
(209, 'Colin', 'Fleming', 'M.'),
(210, 'Dana', 'Johnson', NULL),
(211, 'James', 'Lewis', ''),
(212, 'Baker', 'Spring', ''),
(213, 'Tommy', 'Brazie', ''),
(214, 'David', 'Graham', ''),
(215, 'Hal', 'Hagemeier', ''),
(216, 'James', 'Cartwright', 'E.'),
(217, 'Ed', 'Morris', NULL),
(218, 'Steven', 'Anderson', ''),
(219, 'Ronald', 'Hatch', ''),
(220, 'James', 'Armor', ''),
(221, 'Robert', 'Newberry', 'D.'),
(222, 'Hermann', 'Noordung', NULL),
(223, 'Carolyn', 'James', 'C.'),
(224, 'Daniel', 'Deudney', ''),
(225, 'Michael', 'Kraig', 'R.'),
(226, 'Rene', 'Rubalcava', NULL),
(227, 'James', 'Oberg', NULL),
(228, 'Hermann', 'Oberth', NULL),
(229, 'Robert', 'Chisholm', 'H.'),
(230, 'Lincoln', 'Bloomfield', 'P.'),
(231, 'Herman', 'Kahn', NULL),
(232, 'Sterling', 'Pavelec', 'M.'),
(233, 'Walter', 'Peeters', ''),
(234, 'Robert', 'Pellegrini', 'P.'),
(235, 'Penny', 'Powers', ''),
(236, 'Steven', 'Peterson', 'R.'),
(237, 'Robert', 'Pfaltzgraff', 'L.'),
(238, 'William', 'Van Cleave', 'R.'),
(239, 'Terence', 'Holmes', 'M.'),
(240, 'Carsten', 'Roennfeldt', 'F.'),
(241, 'Samuel', 'McNiel', 'L.'),
(242, 'Dominic', 'Sims', NULL),
(243, 'Stephen', 'Hadley', 'J.'),
(244, 'William', 'Perry', 'J.'),
(245, 'Robert', 'Ramey', 'A.'),
(246, 'Ariel', 'Levite', 'E.'),
(247, 'Walter', 'Perry', 'L.'),
(248, 'Marc', 'Millot', 'D.'),
(249, 'Therese', 'Delpech', NULL),
(250, 'Elwyn', 'Harris', NULL),
(251, 'Ken', 'Horn', ''),
(252, 'Ed', 'Cesar', ''),
(253, 'Paul', 'Steinberg', ''),
(254, 'Roger', 'Molander', 'C.'),
(255, 'Andrew', 'Riddile', 'S.'),
(256, 'Peter', 'Wilson', 'A.'),
(257, 'Bruce', 'Pirnie', ''),
(258, 'John', 'Gordon', ''),
(259, 'Christopher', 'Achen', 'H.'),
(260, 'Duncan', 'Snidal', ''),
(261, 'Michael', 'Williams', 'C.'),
(262, 'Donald', 'Kagan', NULL),
(263, 'Gary', 'Schmitt', ''),
(264, 'Thomas', 'Donnelly', ''),
(265, 'Charles', 'Cynamon', 'H.'),
(266, 'George', 'Ball', 'W.'),
(267, 'Scott', 'Burke', 'W.'),
(268, 'Edmund', 'Ions', ''),
(269, 'Lukas', 'Milevski', ''),
(270, 'Tuva', 'Kahrs', ''),
(271, 'Marcel', 'de Haas', NULL),
(272, 'Jeff', 'Carr', NULL),
(273, 'Ariel', 'Cohen', NULL),
(274, 'Robert', 'Hamilton', 'E.'),
(275, 'Oscar', 'Jonsson', ''),
(276, 'Robert', 'Seely', ''),
(277, 'Robin', 'Brown', ''),
(278, 'David', 'Holloway', ''),
(279, 'Courtney', 'Brown', NULL),
(280, 'M.', 'Smith', 'V.'),
(281, 'Raymond', 'Duvall', ''),
(282, 'Matthew', 'Mowthorpe', ''),
(283, 'Vladislav', 'Zubok', ''),
(284, 'Stephen', 'Whiting', 'N.'),
(285, 'Richard', 'Butler', 'J.'),
(286, 'Scott', 'Pace', ''),
(287, 'Bryan', 'Gabbard', '');

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
(84, 100),
(85, 101),
(85, 102),
(85, 103),
(85, 104),
(85, 105),
(85, 106),
(85, 107),
(85, 108),
(85, 109),
(85, 110),
(85, 111),
(85, 112),
(85, 113),
(85, 114),
(85, 115),
(85, 118),
(85, 119),
(85, 120),
(85, 121),
(88, 122),
(92, 124),
(93, 125),
(94, 126),
(98, 127),
(99, 127),
(100, 128),
(101, 129),
(102, 130),
(103, 131),
(104, 132),
(106, 133),
(104, 134),
(108, 135),
(109, 136),
(110, 136),
(112, 137),
(113, 138),
(113, 139),
(116, 140),
(119, 141),
(120, 142),
(122, 143),
(124, 144),
(126, 145),
(127, 146),
(130, 147),
(131, 148),
(132, 148),
(133, 148),
(135, 149),
(136, 150),
(142, 151),
(143, 151),
(144, 152),
(147, 153),
(150, 154),
(151, 155),
(154, 156),
(85, 157),
(85, 158),
(85, 159),
(85, 160),
(85, 161),
(85, 162),
(85, 163),
(158, 164),
(159, 165),
(160, 166),
(165, 167),
(168, 168),
(170, 169),
(91, 170),
(91, 171),
(175, 172),
(176, 172),
(177, 173),
(178, 174),
(179, 175),
(179, 176),
(180, 176),
(181, 177),
(76, 178),
(183, 179),
(184, 179),
(185, 180),
(186, 181),
(187, 181),
(130, 182),
(189, 183),
(84, 184),
(84, 185),
(190, 186),
(191, 187),
(192, 188),
(193, 188),
(194, 189),
(195, 190),
(196, 191),
(180, 192),
(199, 193),
(200, 194),
(201, 195),
(170, 196),
(203, 197),
(205, 198),
(209, 199),
(223, 200),
(224, 201),
(113, 202),
(225, 203),
(230, 204),
(232, 205),
(233, 206),
(235, 207),
(239, 208),
(240, 209),
(163, 210),
(245, 211),
(259, 212),
(260, 212),
(92, 213),
(261, 214),
(159, 215),
(159, 216),
(266, 217),
(267, 218),
(170, 219),
(268, 220),
(159, 221),
(269, 222),
(270, 223),
(275, 224),
(276, 224),
(277, 225),
(278, 226),
(93, 227),
(281, 227),
(282, 228),
(282, 229),
(283, 230),
(165, 231);

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
(85, 1),
(85, 2),
(85, 3),
(89, 4),
(105, 5),
(111, 6),
(114, 7),
(128, 8),
(129, 8),
(134, 9),
(129, 10),
(152, 11),
(153, 11),
(105, 13),
(166, 14),
(167, 14),
(173, 15),
(174, 15),
(197, 16),
(198, 16),
(204, 17),
(206, 18),
(128, 19),
(207, 19),
(208, 19),
(222, 20),
(226, 21),
(228, 22),
(247, 23),
(248, 23),
(249, 24),
(254, 25),
(255, 25),
(256, 25),
(247, 26),
(257, 26),
(258, 26),
(279, 27),
(210, 28),
(286, 28),
(287, 28);

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
(75, 8),
(85, 10),
(86, 11),
(86, 12),
(87, 12),
(90, 13),
(91, 14),
(95, 15),
(96, 15),
(97, 16),
(107, 17),
(115, 18),
(117, 19),
(118, 20),
(121, 21),
(123, 22),
(125, 23),
(76, 24),
(145, 25),
(146, 26),
(147, 27),
(148, 27),
(149, 27),
(147, 28),
(147, 29),
(74, 30),
(85, 31),
(156, 32),
(157, 32),
(156, 33),
(157, 33),
(161, 33),
(162, 33),
(163, 34),
(164, 35),
(169, 36),
(171, 37),
(172, 37),
(74, 38),
(91, 39),
(91, 40),
(182, 41),
(157, 42),
(188, 43),
(202, 44),
(120, 45),
(203, 46),
(76, 47),
(210, 48),
(211, 48),
(212, 48),
(213, 48),
(214, 48),
(215, 48),
(216, 48),
(148, 49),
(157, 49),
(217, 49),
(218, 49),
(219, 49),
(220, 49),
(221, 50),
(227, 51),
(229, 52),
(231, 53),
(234, 54),
(236, 55),
(237, 56),
(238, 56),
(241, 57),
(91, 58),
(242, 59),
(243, 60),
(244, 60),
(75, 61),
(76, 61),
(210, 62),
(246, 62),
(250, 63),
(251, 63),
(252, 63),
(253, 63),
(262, 64),
(263, 64),
(264, 64),
(265, 65),
(91, 66),
(271, 67),
(272, 68),
(273, 69),
(274, 69),
(280, 70),
(284, 71),
(285, 72);

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `isbn`, `title`, `publisher`, `year`, `abstracttext`, `pdflink`) VALUES
(1, '9781294832557', 'hgjgjh', 'Nieuwenhuis', 2000, 'hjhkjh', ''),
(2, '9781294832938', 'fghfghfgh', 'Nieuwenhuis', 2030, 'fgfgg', ''),
(3, '9781294832555', 'ggggg', 'Nieuwenhuis', 2100, 'ffff', ''),
(4, '9781585660914', 'Aerospace Power in the Twenty-First Century: A Basic Primer', 'Air University Press', 2001, 'aerospace United States Air Force', 'aerospaceChun.pdf'),
(5, '9781585660292', 'Ideas, Concepts, Doctrine: Basic Thinking in the United States Air Force 1961-1984', 'Air University Press', 1989, 'United States Air Force doctrine', 'b_0032_futrell_ideas_concepts_doctrine.pdf'),
(6, '9781585660671', 'Beyond the Path of Heaven: The Emergence of Space Power Thought', 'Air University Press', 1999, 'Book on space power theory, edited by Bruce M. DeBlois', 'beyondthepathofheaven.pdf'),
(7, '9781849697965', 'Building Web and Mobile ArcGIS Server Applications with JavaScript', 'Packt Publishing', 2014, 'Master the ArcGIS API for JavaScript, and build exciting, custom web and mobile GIS applications\nwith the ArcGIS Server', 'Building_Web_and_Mobile_ArcGIS_Server_Applications_with_JavaScript.pdf'),
(8, '9781410202970', 'Complexity, Global Politics, and National Security', 'National Defense University', 1997, 'Complexity theory and national security', 'Complexity_Global_Alberts_Czerwinski.pdf'),
(9, '9780833047342', 'Cyberdeterrence and cyberwar', 'RAND Corporation', 2009, 'cyber deterrence cyberwar', 'Cyberdeterrenceandcyberwar.pdf'),
(10, '9781579060091', 'Coping with the Bounds: a Neo-Clausewitzean Primer', 'CCRP Publication Series', 1998, 'Clausewitz non-linearity', 'Czerwinski_Coping.pdf'),
(11, '9781258793555', 'The Effects of Nuclear Weapons', 'United States Department of Defense', 1977, 'Book on the effects of nuclear weapons', 'Effects_of_Nuclear_Weapons.pdf'),
(13, '9781585660299', 'Ideas, Concepts, Doctrine: Basic Thinking in the United States Air Force 1907-1960, volume I', 'Air University Press', 1989, 'Doctrinal thinking in the US air force from 1907-1960', 'futrell_ideas_concepts_doctrinevolumeI.pdf'),
(14, '9781849516686', 'GeoServer: Share and Edit Geospatial data with this open source software server', 'Packt Publishing', 2013, 'GeoServer', 'GeoServer_Beginners_Guide.pdf'),
(15, '9781849698825', 'Google Maps JavaScript API Cookbook', 'Packt Publishing', 2013, 'Book on Google maps javascript api', 'Google_Maps_JavaScript_API_Cookbook.pdf'),
(16, '9788181580849', 'Unrestricted Warfare', 'PLA Literature and Arts Publishing House', 1999, 'Chinese military writing', 'Liang_Unrestricted_Warfare.pdf'),
(17, '9780833033301', 'Mastering the Ultimate High Ground: next steps in the Military Uses of Space', 'RAND Corporation', 2003, 'Military use of space/ space power', 'Masteringtheultimatehighground.pdf'),
(18, '9780833049131', 'Deterrence and First-Strike Stability in Space: a preliminary Assessment', 'RAND Corporation', 2010, 'Space deterrence', 'Morgan_RAND_Deterrence_and_First_Strike_Stability_Space.pdf'),
(19, '9781579060196', 'Network Centric Warfare: Developing and Leveraging Information Superiority (2nd edition revised)', 'CCRP Publication Series', 1999, 'Network centric warfare', 'networkcentricwarfare.pdf'),
(20, '9780160454620', 'The Problem of Space Travel: The Rocket Motor', '(Richard Carl Schmidt & Co 1929) (NASA History Office 2012)', 1929, 'Space power', 'Noordung_The_Problem_of_Space_Travel.pdf'),
(21, '9781617291616', 'ArcGIS Web Development', 'Manning Publications Co.', 2014, 'ArcGIS web development with javascript api', 'ArcGISWebDevelopment-Ascetic_trip.pdf'),
(22, '0000000000000', 'Ways to SpaceFlight', 'NASA History Office (1970)', 1929, 'Space power', 'Oberth_The_Way_to_Spaceflights.pdf'),
(23, '9780833026364', '1997 Army After Next Winter Wargame', 'RAND Corporation', 1998, 'Report on winter wargame', 'RANDIssueArmyAfterNext1997.pdf'),
(24, '9780833059307', 'Nuclear Deterrence in the 21st Century: Lessons from the Cold War for a new Era of Strategic Policy', 'RAND Corporation', 2012, 'Nuclear deterrence', 'RANDNuclearDeterrence21thcentury.pdf'),
(25, '9780833023527', 'Strategic Information Warfare: a New Face of War', 'RAND Corporation', 1996, 'RMA strategic information warfare', 'RANDstrategicinformationwarfare.pdf'),
(26, '9780833028243', 'The Future of Warfare: issues fro mthe 1999 Army After Next Study Cycle', 'RAND Corporation', 2001, 'Report on Army After Next wargames', 'RANDthefutureofwarfare.pdf'),
(27, '9780472106430', 'Serpents in the Sand: Essays on the Nonlinear Nature of Politics and Human Destiny', 'The University of Michigan Press', 1998, 'Nonlinearity', 'SerpentsInTheSandByCourtneyBrown.pdf'),
(28, '9780833024930', 'Space: Emerging Options for NAtional Power', 'RAND Corporation', 1998, 'Space power', 'spaceemergingoptionsfornationalpower.pdf');

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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`journal_id`, `journal_name`) VALUES
(34, 'The Journal of Slavic Military Studies'),
(35, 'Joint Forces Quarterly'),
(36, 'Astropolitics'),
(37, 'Journal for Tjeerdism'),
(38, 'The Journal of Military History'),
(40, 'International Organization'),
(41, 'Progress in Human Geography'),
(42, 'Daedalus'),
(43, 'Space Policy'),
(44, 'International Security'),
(45, 'The American Historical Review'),
(46, 'World Politics'),
(47, 'China Security'),
(48, 'Journal of Strategic Studies'),
(49, 'Foreign Affairs'),
(50, 'SAIS Review'),
(51, 'Australian Journal of Political Science'),
(52, 'Journal of Peace Research'),
(53, 'The American Political Science Review'),
(54, 'Antropological Quarterly'),
(55, 'Comparative Strategy'),
(56, 'Latin American Research Review'),
(57, 'Security Studies'),
(58, 'Annual Review of Psychology'),
(59, 'Political Studies'),
(60, 'Political Science Quarterly'),
(61, 'Naval War College Review'),
(62, 'Security Dialogue'),
(63, 'Journal of Democracy'),
(64, 'Defence Studies'),
(65, 'Prospect Magazine'),
(66, 'Parameters'),
(67, 'Canadian Journal of Political Science'),
(68, 'HEC Forum'),
(69, 'The Air Force Law Review'),
(70, 'Journal of International Affairs'),
(71, 'Modern Age'),
(72, 'Commentary'),
(73, 'International Affairs'),
(74, 'East Asia'),
(75, 'Yje Journal of Slavic Military Studies'),
(76, 'Information, Communication & Society'),
(77, 'Political Theory'),
(78, 'Cold War History'),
(79, 'European Journal of International Relations');

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `papers`
--

INSERT INTO `papers` (`paper_id`, `title`, `institute`, `year`, `pages`, `abstractText`, `pdflink`) VALUES
(6, 'Spacepower Theory: Lessons from the Masters', 'Air University, Maxwell Air Force Base, Alabama', 2005, '51', 'Spacepower, analogous to airpower and sea power, is the ability to use the space\nmedium to project military power. Since the end of the Cold War, the contributions of\nspacepower to national security and military operations have become increasingly visible\nin the open press, leading to an increased stated need for a comprehensive spacepower\ntheory. This research is focused toward that need. It explores the central themes and\nspecific points of the “theoretical masters” of land, sea and air, in order to draw analogies\nto the emerging presence of military spacepower.\nSpace will continue to aid combat in other mediums as it offers persistence, range,\nand near instantaneous speed—enabling a global presence that is unmatched by\ncapabilities in any other medium. However, for spacepower to emerge as a fully\ncompetent component of the future joint force, or simply to mature as a combat arm\nwithin the US Air Force, a body of serious thought must be given to why we need\nspacepower and what we intend it to do.\nThrough this analysis, five lessons emerge for spacepower theory: 1) Spacepower\nmust control space lines of communication; 2) Decisive points are key to space control;\n3) Spacepower requires superior observation capabilities and the ability to take offensive\naction; 4) Robust spacepower could lead to enemy paralysis; and 5) Spacepower requires\nmasters of the space medium.', '05-wagnerspacepowertheory.pdf'),
(7, 'Meeting the Anti-Access and Area-Denial Challenge', 'Center for Strategic And Budgetary Assessments', 2003, '95', 'Cold War, United States, anti-access (A2) area-denial (AD) medium-range artillery, rocket, or missiles A2/AD', '20030520-Anti-Access-Area-Denial-A2-AD.pdf'),
(8, 'Why AirSea Battle?', 'Center for Strategic And Budgetary Assessments', 2010, '40', 'United States Cold War, the Soviet Union limited wars China’s People’s Liberation Army Iran’s military and Islamic Revolutionary Guards Corps Western Pacific and the Persian Gulf US power-projection\ncapabilities AirSea Battle', '20100219-Why-AirSea-Battle.pdf'),
(10, '?', 'Institute of Tjeerdism', 2012, '33-99', 'vv', ''),
(11, 'Iran: "Weakling" of "Hegemon"?', 'Center for Strategic And Internaitonal Studies', 2007, '23', 'Iran is a state that must be assessed largely in terms of its capabilities, not its\nintentions. Its political structure is too unstable to predict, and its choice of\ndefensive or offensive options is more likely to be determined by its perceptions\nof future opportunities and risks than its current policies and strategy. Seen\nfrom this perspective, Iran is not a “weakling,” but neither is it capable of\nmajor aggression or becoming a regional “hegemon” if it meets effective\nresistance from its neighbors and the US.', '070220_iran_weakorheg.pdf'),
(12, 'Study on a Possible Israeli Strike on Iran''s Nuclear Development Facilities', 'Center for Strategic and International Studies', 2009, '114', 'Iran Israel nuclear weapons nukes israeli strike', '090316_israelistrikeiran.pdf'),
(13, 'Issues in Modeling Military Space', 'Air University, Maxwell Air Force Base, Alabama', 2002, '95', 'This research is a framework for understanding issues in modeling the military aspect of space, with particular regard to capturing its value. Space power is a difficult and far-reaching topic, with implications that go beyond the military aspects. The United States military increasingly relies on space-based systems and information for success in daily operations. Telecommunications, navigation and timing, intelligence, surveillance, reconnaissance, and weather prediction are instances of services that have become dependent on satellite systems. If this reliance on space is not fully understood, U.S. national security will be at risk as the result of space information degradation or denial. This research effort attempts to break new ground in organizing the interactions and interdependencies among space doctrine, space systems, system owner/operators, and space-based information users. An illustrative example, using GPS, is then examined to explore the approach. Analysis of GPS as it affects JDAM accuracy is modeled using the GPS Interference And Navigation Tool (GIANT).', 'afit-gor-ens-02-13.pdf'),
(14, 'The Airpower Advantage in Future Warfare: The need for Strategy', 'Air University, Maxwell Air Force Base, Alabama', 2007, '39', 'United States Strategy Air power airpower', 'airpower_advantage_future_warfare.pdf'),
(15, 'The Collapse of American Air Power: The Global Impact of Anti-Access Weapons', 'Air Power Australia', 2009, '87', 'Air power airpower anti-access weapons United States', 'APA-Anti-Access-Brief-June-2009-A.pdf'),
(16, 'Applying Carl Schmitt to Global Puzzles: Identity, Conflict and the Friend/Enemy Antithesis', 'University of Americas Puebla, Mexico', 2009, '29', 'This paper demonstrates the broad appeal and usefulness of the political and legal thought\nof Carl Schmitt to scholars of international relations by applying his seminal friend-enemy\nantithesis to current global problems as well as to current IR theories used to negotiate\nthem. I argue that Schmitt’s contemporary appeal lies, first, in his insistence that collective\nidentity is necessarily formed through conflict (enmity); and second, that identity lies at the\nvery base of what motivates behavior on the international stage (at the sub-national,\nnational and transnational levels). By implication, Schmitt’s theories offer some fresh\ninsights into the sources and nature of nationalism, terrorism and war in the new\nmillennium. Part two illustrates briefly where a Schmittian view can disclose some\nimportant aspects of international events and circumstances that are not so visible when\napproached from the perspective of the “usual suspects” in IR theory.', 'applyingcarlschmitt.pdf'),
(17, 'Turbulent Society: Enmity in International Society', 'Brown University', 2007, '28', 'Granted that disorder spoils pattern, it also provides the material of pattern. Order implies\nrestriction; from all possible materials, a limited selection has been made from all possible\nrelations a limited set has been used. So disorder by implication is unlimited, no pattern has\nbeen realized in it, but its potential for patterning is indefinite. This is why, though we seek to\ncreate order, we do not simply condemn disorder. WE recognize that it is destructive to\nexisting patterns; also that it has potentiality. It symbolizes both danger and power.', 'Banai-Turbulent%20Society%20-%20Enmity%20in%20IS.pdf'),
(18, 'Space Threat Warning: Foundation for Space Superiority, Avoiding a Space Pearl Harbor', 'Air University, Maxwell Air Force Base, Alabama', 2006, '29', 'Space Superiority is a core task for the USAF, critically enabling US combat operations. As the US becomes more reliant on space-based resources to ensure military and economic success, the need to protect them will increase. A robust space threat warning capability--the ability to detect, assess and respond to hostile actions against space assets--is the foundation for this protection.\nSenior leaders in the US government have stated the US must avoid a space Pearl Harbor. This concern is due to the idea that a decrease in the perceived threat to space assets after the demise of the Soviet Union coupled with a competition for space resources has resulted in a corresponding erosion of US space threat warning and attack assessment capabilities.\nThis paper describes the development and gradual erosion of US space threat warning capabilities, emerging threats, and discusses the implications to national security should the US fail to field a robust space threat warning and attack verification capability. The paper concludes with recommendation to establish a focal point for space defense, institute end-to-end testing of the threat warning process, and to update space threat warning guidance to ensure space is not location of the next “Pearl Harbor.”', 'BurkeSpacePearlHarbor.pdf'),
(19, 'Does the United States Need Space-Based Weapons?', 'Air University, Maxwell Air Force Base, Alabama', 1999, '129', 'United States Air Force space power space-based weapons', 'CadrePaperDoesUSneedSpaceWeapons.pdf'),
(20, 'Carl Schmitt, the Friend-Enemy Distinction and iNternational Relations Theory', 'Department of Political Science, University of Chicago', 2008, '32', 'Carl Schmitt’s writings grapple with the perennial issues of world politics: war,\nnationalism, identity, and the nature of the international system. Yet, few contemporary\ninternational relations scholars engage with his work. This paper aims to stoke interest in\nSchmitt by posing two questions: What is Schmitt’s theory of IR, and how might it further\ndebates within the field? I argue that Schmitt’s thinking contains elements of classical realism,\nstructural realism, and constructivism. Yet Schmitt should be categorized as a “political identity\nrealist” because his underlying assumption of a hardwired human need for political identity\ndrives his story about international relations. The “value-added” of Schmitt’s work arises from\nits ability to engage Wendtian constructivism and highlight the flaws in Wendt’s understanding\nof identity. Whereas Wendt’s inclusion-based view of identity implies it could help transform\nthe international system into a better world, Schmitt’s exclusion-based perspective reveals it to\nbe an inescapable curse. Schmitt’s work therefore upholds realist assertions that continuity, not\nchange, best characterizes world politics.', 'carlschmittthefriendenemydistinction.pdf'),
(21, '''Informationising'' Warfare: China Unleashes the Cyber and Space Domain', 'Center for Land Warfare Studies New Delhi', 2010, '40', 'China space cyber warfare', 'Chinainformationisingwarfare.pdf'),
(22, 'Strategic Implications of China''s Underground Great Wall', 'Georgetown University', 2011, '357', 'China great wall tunnel complex', 'China_tunnel_defense.pdf'),
(23, 'Clausewitz on Space: Developing Military Space Theory Through A Comparative Analysis', 'Air University, Maxwell Air Force Base, Alabama', 1999, '51', 'America has been in space for over 40 years, yet there seems to be little common understanding of how to integrate space into all aspects of military operations. A common vision for the military application of space forces is vital for America in a period of growing space reliance and decreasing space budgets. Our fielded forces rely on space for a variety of essential missions including communications, intelligence, weather, navigation and missile warning. Our commercial space industry has become a huge economic center of gravity for our nation. Our enemies are discovering the benefits of space by developing their own systems and purchasing commercial space services. We face the daunting challenge of expanding our exploitation of space and protecting our existing space assets, while operating in a fiscally constrained environment. We face this challenge today without a common vision of how to use space. America’s space effort is divided between the Department of Defense (DOD) (led by U.S. Space Command), the National Reconnaissance Office (NRO), the National Aeronautics and Space Administration (NASA) and commercial industry. Each group has its own motivations and priorities that come into conflict at times. Prussian military theorist Carl von Clausewitz and others believed sound theory was the key to providing a common vision of military operations to all members of an organization. This paper seeks to provide some keys to space theory in order to create a common vision of the effects of space on military operations.', 'Clausewitzonspacepower.pdf'),
(24, 'Clausewitzian Friction and Future War', 'Institute for National Strategic Studies', 1996, '133', 'Clausewitz and the Future of War', 'Clausewitzianfrictionandfuturewar.pdf'),
(25, 'Deterring and Dissuading in Space: a Systems Approach', 'US Army War College', 2008, '33', 'Space capabilities have improved life in the United States and around the world,\nenhanced security, protected lives and the environment, sped information flow, served\nas an engine for economic growth, and revolutionized the way people view their place in\nthe world. In fact, the need to ensure those vital space capabilities are available has\nnever been greater. This paper examines the importance space capabilities play in\nmilitary and civil activities. It evaluates the concepts of dissuasion and deterrence,\nidentifying the importance of each in a new defense policy spectrum. It addresses space\ncontrol operations, the means used to ensure friendly access to necessary space\ncapabilities and to deny the same to an adversary. Finally, the paper proposes a\nsystems approach to the characterization of the operational environment. Dissuasion\nand deterrence play vital roles preventing potential adversaries from challenging our\nspace capabilities, and a systems approach to space control policies and actions\nprovides valuable insight into the second- and third-order effects that result in the highly\nvolatile, uncertain, complex, and ambiguous security environment of the 21st century.', 'DissuadinginSpace.pdf'),
(26, 'Distinguishing Space Power from Air Power: implications for the Space Force Debate', 'Air University, Maxwell Air Force Base, Alabama', 1998, '63', 'Air Force General Charles “Chuck” Horner, former commander of U.S. Space\nCommand, advocates the creation of an independent Space Force, separate from the Air\nForce. Justifications for such a change depend in large measure on whether space power\ncan provide a way of fighting and winning wars distinct from that provided by the other\nservices. An important aspect of this issue is whether differences between air power and\nspace power suggest a rationale for a separate and independent Space Force.\nIt has been said that space is at a crossroads.2 We cannot afford to wait for the next\nwar to show us if space power will, as air power did, revolutionize the conduct of\nwarfare. We cannot make such a decision based on vague allegories to the air power\ndebate. A more rigorous approach is required. This paper sheds light on this question\nfrom the perspective of doctrine and theory and seeks to suggest the next steps in keeping\nthe U.S. approach to space “from being too badly wrong.”3\nThis research project critically compares air and space power in order to discern\nwhether the differences between air and space power suggest a paradigm shift in the way\nwars will be fought. As a foundation for comparison, air and space power are exposed in\nterms of features of the mediums, characteristics of the forces, and tenets of employing\nforces in each medium. The resulting expositions of air and space power are compared,\nextracting and evaluating the key differences. These differences are then explored to\ndetermine if a new paradigm of warfighting is emerging. Finally, the differences between\nviii\nair and space power and their implications for warfighting are examined with respect to\nthe need for a separate and independent Space Force.\nThe finding of this project was that air and space power are indeed different, but not\nso fundamentally so that the creation of a separate Space Force is mandated. Further\ndevelopment of space capabilities, operational concepts, and doctrine is necessary before\nthe need for a Space Force can be determined based on the natures of air and space\npower. However, General Horner’s concern that the cost of concurrently developing\nspace forces and modernizing air forces is too large for the Air Force’s budget is an\nunresolved question.', 'distinguishingspacepowerfromairpowerRobinson.pdf'),
(27, 'Toward a US Grand Strategy in Space', 'George C. Marshall Institute', 2006, '38', 'Space Grand Strategy United States', 'Dolmangrandstrategyforspace.pdf'),
(28, 'US Military Transformation and Weapons in Space', 'Air University, Maxwell Air Force Base, Alabama', 2005, '6', 'No nation relies on space more than the United States—none is even close—and its\nreliance grows daily. For both its civilian welfare and military security, a widespread loss\nof space capabilities would prove disastrous. America’s economy, and along with it the\nworld’s, would collapse. Its military would be obliged to hunker down in defensive\ncrouch while it prepared to withdraw from dozens of then-untenable foreign\ndeployments. For the good of its civilian population, and for itself, the United States\nmilitary—in particular the United States Air Force—is charged with protecting space\ncapabilities from harm and ensuring reliable space operations for the foreseeable future.\nAs a martial organization, the Air Force naturally looks to military means in achievement\nof its assigned ends. And so it should.', 'Dolmanpaper.pdf'),
(29, 'The Case for Wapons in Space: a Geopolitical Assessment', 'Air University, Maxwell Air Force Base, Alabama', 2010, '32', 'Space weaponization', 'DolmanTHecaseforspaceweaponization.pdf'),
(30, 'Challenging Transformation''s cliches', 'Strategic Studies Institute', 2006, '30', 'Article on the need for military transformation to be better prepared for the future', 'EchevarriaMilitarytransformation.pdf'),
(31, 'fdgdfg', 'Institute of Tjeerdism', 2012, '229-252', 'ddd', ''),
(32, 'Deterrence in Space: Responding to Challenges to the US in Outer Space', 'George C. Marshall Institute', 2008, '24', 'Space deterrence', 'deterrenceinspaceSheldon.pdf'),
(33, 'Returning to Fundamentals: Deterrence and US National Security in the 21st Century', 'George C. Marshall Institute', 2011, '35', 'Paper on deterrence for the 21st century', 'fundamentalsdeterrence.pdf'),
(34, 'Future Security in Space: Commercial, Military, and Arms Control Trade-Offs', 'Monterey Institute of International Studies', 2002, '76', 'Space security', 'futuresecurityinspace.pdf'),
(35, '"Sowing seeds in Barren Soil": Why Space Power Theory just won''t grow', 'Air University, Maxwell Air Force Base, Alabama', 2008, '75', 'Several articles and even a few books have been written about the paucity of space power theory. Most include a statement highlighting a need for a comprehensive space power theory. Only a handful, however ask the probing questions necessary for finding a solution for the void of thinking on the exploitation of the space medium. For example, this thesis examines the following questions. What is the nature and value of theory? Is the space medium unique enough to warrant its own theory? What space power theory efforts have been conducted thus far? These questions provide insight into the current state of space power theory. The remaining questions can then be posed. If there are genuine space power theory efforts available why has no dominant theory emerged? Once the hindrances have been identified, the only remaining question is what actions can be taken to mitigate the hindrances in hopes of further development of space power theory?\nv', 'Gardner.pdf'),
(36, 'Space Power Theory: Controlling the Medium without Weapons in Space', 'US Army War College', 2008, '37', 'Space power', 'GetTRDoc.pdf'),
(37, 'Global Commons and Domain Interrelationships: Time for a new Conceptual Framework?', 'Institute for National Strategic Studies', 2010, '12', 'The global commons, viewed as the essential conduits of U.S. national power in a rapidly globalizing and increasingly interconnected world, have taken on an added degree of importance for the U.S. defense planning community over the last several years. Increasing challenges to the U.S. military are making access and freedom of action in the global commons more problematic. Least recognized and understood of\nthese planning challenges are the domain interrelationships within the commons.', 'globalcommonsdomaininterrelationships.pdf'),
(38, 'Globalization and the Nature of War', 'Strategic Studies Institute', 2003, '31', 'Just a few years into the new millennium, and it is\nalready a truism to say that globalization—the spread of\ninformation and information technologies, along with\ngreater public participation in economic and political\nprocesses—is transforming every aspect of human affairs.\nWhat is not yet clear, however, are the impacts of these\ntrends, especially how they might affect the nature of war.\nUnderstanding the nature of war is important for more than\nacademic reasons; the nature of a thing tends to define how\nit can and cannot be used, which, in the case of war, makes it\nextremely important to both political and military leaders.\nTo answer the question of war’s nature, one must turn to the\nfamous Prussian philosopher of war, Carl von Clausewitz\n(1780-1831), who devoted more time than perhaps any other\nmilitary theorist (contemporary or otherwise) to this topic.', 'globalizationandthenatureofwar.pdf'),
(39, 'Maintaining Effective Deterrence', 'Strategic Studies Institute', 2003, '55', 'Deterrence has fallen on hard times. From being the proudest achievement of the U.S. defense community in the Cold War, both intellectually and as policy, strategy, and doctrine, deterrence today looks very much like yesterday’s solution to yesterday’s dominant problem. Times have changed, and each strategic context promotes the popularity of ideas that seem best suited to help cope with the\nchallenges of the period. This monograph begins by recognizing that, although the Bush administration did not formally retire deterrence\nas concept or policy, it left observers in no doubt that in the global war it declared against terrorism, deterrence generally would be left on the bench. Whereas deterrence appeared to be resoundingly successful through 40-plus years of Cold War, its utility in the very different conditions of the 21st century is highly problematic at best.', 'Graymaintainingeffectivedeterrence.pdf'),
(40, 'Schools for Strategy: Teaching Strategy for 21st century Conflict', 'Strategic Studies Institute', 2009, '63', 'Because strategic performance must involve the ability to decide, to command, and to lead, as well as the capacity to understand, there are practical limits to what is feasible and useful by way of formal education in strategy. The soldier who best comprehends what Sun-tzu, Clausewitz, and Thucydides intended to say, is not necessarily the soldier best fitted to strategic high command. It is important to distinguish between intellect and character/personality. The superior strategist is ever uniquely a product of nature/biology, personality/psychology, and experience/opportunity. Nonetheless, formal education has its place.', 'Gray_Schools_for_Strategy.pdf'),
(41, 'How to Institutionalize Space Superiority in the United States Air Force', 'Air University, Maxwell Air Force Base, Alabama', 2001, '22', 'space superiority', 'Implementingspacesuperioritypatenaude.pdf'),
(42, 'Space Power and Deterrence: are we serious?', 'George C. Marshall Institute', 2008, '5', 'space deterrence', 'JohnSheldonspacedeterrence.pdf'),
(43, 'Herman Kahn: Public Nuclear Strategy 50 Years later', 'Hudson Institute', 2010, '29', 'Summary of Herman Kahn''s work', 'KahnPublicNuclearStrategyWohlstetter.pdf'),
(44, 'On Space Warfare: a Space Power Doctrine', 'Air University, Maxwell Air Force Base, Alabama', 1998, '99', 'Space power theory/doctrine', 'luptonOnSpaceWarfare.pdf'),
(45, 'United States Strategic Culture', 'SAIC', 2006, '25', 'Strategic culture', 'mahnken_strat_culture.pdf'),
(46, 'Chaos, Critically, and Strategic Thought', 'National War College', 1991, '29', 'Implication of Chaos Theory for Strategic Thought', 'mann_chaos_strategic_thought.pdf'),
(47, 'Clausewitzian Friction and Future War (Revised Edition)', 'Institute for National Strategic Studies', 2004, '123', 'Clausewitz and the future of war', 'McNair68.pdf'),
(48, 'A Day Without Space: National Security Ramifications', 'George C. Marshall Institute', 2009, '47', 'Space power', 'adaywithoutspaceSheldon.pdf'),
(49, 'A Day Without Space: Economic and National Security Ramifications', 'George C. Marshall Institute', 2009, '48', 'Space power', 'adaywithoutspaceSheldon.pdf'),
(50, 'Spacepower as a Coercive Force', 'Air University, Maxwell Air Force Base, Alabama', 2003, '54', 'Spacepower', 'newberryspacepower2003.pdf'),
(51, 'Toward a Theory of Space Power: Defining Principles for US Space Policy', 'George C. Marshall Institute', 2003, '20', 'Space power', 'Obergtowardasoacetheory2003.pdf'),
(52, 'On Space Warfare: Military Strategy for Space Operations', 'Air University, Maxwell Air Force Base, Alabama', 1984, '94', 'Space power and warfare', 'OnSpaceWarfare1984.pdf'),
(53, 'The Nature and Feasibility of War and Deterrence', 'RAND Corporation', 1960, '48', 'Nuclear deterrence', 'P1888.pdf'),
(54, 'The Links between Science, Philosophy, and Military Theory: Understanding the Padt, Implications for the Future', 'Air University, Maxwell Air Force Base, Alabama', 1997, '65', 'This study examines the links between science, philosophy, and military theory. The author uses two case studies to demonstrate the links between these disciplines. He presents an overview on the rise of Newtonian science, and he examines how the key frameworks and concepts of that science became interwoven into Western civilization to affect its philosophy with an emphasis on its interpretation by the German Romanticist philosopher Immanuel Kant. He then shows how Newtonian science and Kant’s philosophy affected the military theory of Carl von Clausewitz. His second case study concerns the theory and philosophy of evolution developed by British philosopher Herbert Spencer and its influence on the military theory of J. F.\nC. Fuller. The author compares these two case studies to find commonalities between them that suggest a mechanism which explains how and why scientific theory and their philosophical interpretations eventually influence military theory. The author then uses this mechanism as a tool with which “new” sciences such as quantum mechanics, relativity, and complexity theory can be evaluated to see if and in what manner they will affect future military theories. The main concept of this mechanism is that science and philosophy, both consciously and unconsciously, provide frameworks for investigation and systems of knowledge for the military theorist. Finally, this study suggests that new definitions of the concepts of force, space, time, and knowledge will have an influence on future military theory. The shift from the Newtonian framework of cause and effect determinism to the new science concept of probabilities and trends—as well as the shift from the force of heavy mechanics to the new particle wave theories of force—will change man’s concept of the battlefield, emphasizing the capability for rapid observation and action.', 'Pellegrinilinkbetweenscienceandphilosophy.pdf'),
(55, 'Space Control and the Role of Antisatellite Weapons', 'Air University, Maxwell Air Force Base, Alabama', 1991, '127', 'Space power antisatellite weapons', 'petersenspacecontrolandASAT.pdf'),
(56, 'Missile Defense, the Space Relationship, & the Twnety-First Century', 'The Institute for Foreign Policy Analysis', 2009, '239', 'Report on Missile defense and the military use of space', 'PfaltzgraffIWG2009.pdf'),
(57, 'Proposed Tenets of Spacepower: Six Enduring Truths', 'Air University, Maxwell Air Force Base, Alabama', 2003, '51', 'Space power', 'proposedtenetsofspacepower03-1388.pdf'),
(58, 'Hard Power and Soft Power: The Utility of Military Force as an Instrument of Policy in the 21st Century', 'Strategic Studies Institute', 2011, '59', 'The concept of soft power, that is the influence attained through the co-option of foreigners by the attractiveness of our values, ideas, and practices, understandably has great appeal. Soft power is much cheaper than the hard power of military force, and it is more compatible with the culture of a principally liberal American society. All too often, military force seems to fail as an instrument of policy and, as a consequence, it invites the view that it is becoming obsolescent and even anachronistic. Dr. Colin Gray subjects hard and soft power to\nclose critical scrutiny and finds that the latter is significantly misunderstood and, as a consequence, misassessed as a substitute for the threat or use of military force. Each kind of power has its limitations, but the obvious and familiar challenges characteristic of military force do not mean that therefore soft power should be our policy instrument of choice. The author warns against expecting too much of soft power.', 'pub1059.pdf'),
(59, 'Putting Space into RAAY Aerospace Power Doctrine', 'Air Power Development Centre', 2004, '29', 'Space power doctrine', 'Putting%20Space%20into%20RAAF%20Aerospace%20Power%20Doctrine.pdf'),
(60, 'The QDR in Perspective: meeting America''s National Security Needs in the 21st Century', 'United States Institute of Peace', 2010, '159', 'Paper on US National security', 'qdrreport.pdf'),
(61, 'Regaining Strategic Competence', 'Center for Strategic And Budgetary Assessments', 2009, '49', 'Paper on US national security', 'R20090901Regaining_Strategi.pdf'),
(62, 'Toward Fusion of Air and Space: surveying developments and assessing choices for small and middle powers', 'RAND Corporation', 2003, '188', 'Space power', 'RANDconferenceonspacebyMiddlePowers.pdf'),
(63, 'Recommended Strategy for the Army''s Role in Space', 'RAND Corporation', 1993, '29', 'Space strategy', 'RANDspaceforarmy1993.pdf'),
(64, 'Rebuilding America''s Defenses: Strategy, Forces and Resources for a New Century', 'The Project for the New American Century', 2000, '90', 'Neoconservative agenda for world domination', 'RebuildingAmericasDefenses.pdf'),
(65, 'Protecting Commercial Space Systems: a Critical National Security Issue', 'Air University, Maxwell Air Force Base, Alabama', 1999, '54', 'First and foremost, I must acknowledge the unwavering support of my wife, Eileen, as I spouted endlessly about why I wanted to write a research paper when ACSC offers electives. My two sons, Jared and Sam, put up with my endless hours of “hogging” the computer searching the Internet for data. Without the patience and support of my family, this thesis would have been dead long before I ever wrote it.\nThis research topic began as a curious interest and blossomed into a consuming quest for interested listeners as I regaled them with the logic stream that evolved and I provide herein. Major Dan Blaettler, my faculty research advisor, provided some serious vector to my thrust. While Major Russ Dodd (Air Force Doctrine Center) provided the initial interest and guidance, the folks working on the National Defense Industry Association (NDIA) Summer Study and the Air Force Defensive Counter Space (DCS) Working Group provided much of the hard data for my analyses. I must personally thank Ms Karen Fiorillo, Mr Usto Schulz, Major Lisa Schulz-Latsis, and Major Win Idle. Mr Terry Hawkins at the Air University Library provided enthusiastic support as well. Finally, Major Jeff Spencer was key to my continued motivation at ACSC and was a sounding board as I bounced numerous ideas around for this paper for many months.', 'relianceoncemmercialspace.pdf'),
(66, 'Recognizing and Understanding Revolutionay Change in Warfare: The Sovereignty of Context', 'Strategic Studies Institute', 2006, '59', 'Revolution in Military Affairs (RMA) was the most widely used, and abused, acronym in the U.S. defense community in the 1990s.\nSubsequently, transformation has superceded it as the preferred term of art. For the better part of 2 decades, American defense professionals have been excited by the prospect of effecting a revolutionary change in the conduct and character of warfare.\nIn this monograph, Dr. Colin S. Gray provides a critical audit of the great RMA debate and of some actual RMA behavior. He argues\nthat the contexts of warfare are crucially important. Indeed so vital are the contexts that only a military transformation that allows for\nflexibility and adaptability will meet future strategic demands. Dr. Gray warns against a transformation that is highly potent only in\na narrow range of strategic cases. In addition, he advises that the historical record demonstrates clearly that every revolutionary\nchange in warfare eventually is more or less neutralized by antidotes of one kind or another (political, strategic, operational, tactical, and\ntechnological). He warns that the military effectiveness of a process of revolutionary change in a “way of war” can only be judged by the\ntest of battle, and possibly not even then, if the terms of combat are very heavily weighted in favor of the United States. On balance, the concept of revolutionary change is found to be quite useful, provided it is employed and applied with some reservations and in a manner that allows for flexibility and adaptability. Above all else, the monograph insists, the contexts of warfare, especially the political, determine how effective a transforming military establishment will be.', 'revolutionwarfareGray.pdf'),
(67, 'Russia''s Military Reforms: Victory after Twenty Years of Failure?', 'Clingendael', 2011, '58', 'Paper of Russian military reforms after 2008', 'RussiaMilitaryDeHaasClingendael.pdf'),
(68, 'Russia/Georgia Cyber War - Findings and Analysis', 'Project Grey Goose', 2008, '24', 'Paper on Russia/Georgia war august 2008', 'russia_georgia_cyber_war_findings_and_analysis_report_phase_i.pdf'),
(69, 'The Russian Military nd the Georgia War: Lessons and Implications', 'Strategic Studies Institute', 2011, '100', 'In August 2008, the armed conflict between Russia and Georgia broke out on the territory of Georgia’s breakaway regions of South Ossetia and Abkhazia. The Russian-planned military campaign lasted 5 days until the parties reached a preliminary ceasefire agreement on August 12. The European Union (EU), led by the French presidency, mediated the ceasefire. After signing the agreement, Russia pulled most of its troops out of uncontested Georgian territories, but established buffer zones around Abkhazia and South Ossetia. On August 26, 2008, Russia recognized the independence of South Ossetia and Abkhazia, making them a part of what President Dmitry Medvedev called Moscow’s “zone of privileged interests,” and\nsince then deploying five military bases on occupied Georgian territory. In their monograph, Dr. Ariel Cohen and Colonel Robert Hamilton show how Russia won the war against Georgia by analyzing the goals of war, which include the annexation of Abkhazia, the weakening or\ntoppling the Saakashvili regime, and the prevention of NATO enlargement in the Caucasus. The war demonstrated that Russia’s military is in need of significant reforms and it indicated which of those reforms are currently being implemented. Finally, the war highlighted\nweaknesses of the NATO and EU security system as it pertains to Eastern Europe and specifically to the countries of the former Soviet Union.', 'RussianmilitaryGeorgianWar.pdf'),
(70, 'Ten Propositions Regarding Spacepower', 'Air University, Maxwell Air Force Base, Alabama', 2001, '155', 'Spacepower', 'smithspacepowertheory.pdf'),
(71, 'Policy, Influence, and Diplomacy: Space as a National Power Element', 'Air University, Maxwell Air Force Base, Alabama', 2002, '110', 'This study investigates how United States space systems can be used to directly achieve diplomatic objectives. While space systems are widely acknowledged as vital enablers of terrestrial-based forces, they are often overlooked as a critical component of national power capable of directly pursuing national objectives. A brief review of space doctrine and policy from the Department of Defense, Joint Staff, Unified Command, and Air Force perspectives reinforces the thesis that space systems ability to independently shape events and achieve objectives, beyond their support to terrestrial forces, is overlooked. Historical precedent for the use of space systems and other military forces in directly supporting diplomatic objectives is then established through case studies on Sputniks effect on global affairs, the use of U-2 imagery during the Cuban Missile Crisis, and the use of the United States Navy as a tool of diplomacy. The study then presents the Space-Diplomacy model that posits seven facets to the diplomatic power of space assets and shows when they can be effective over the spectrum of conflict: prestige, technology partnerships, access to space services, legal precedent, objective information, presence, and threat of punishment. Based on the model, the study offers six ways in which the United States could better leverage its existing space assets for diplomatic advantage.\nv', 'Spaceasanationalpowerelementwhiting.pdf'),
(72, 'Sovereignty and Protective Zones in Space and the Appropriate Command and Control of Assets', 'Air University, Maxwell Air Force Base, Alabama', 2001, '157', 'This paper examines two issues that are of vital importance to short and long term operations in space and the combat engagement of space borne assets. The first issue analyzed is the question of the establishment of sovereignty and protective zones for free passage in space. This paper will compare international law treaties and other historical analyses to current United States (US) war fighting doctrine on space and propose a United States Air Force (USAF) position on this issue. It will define and discuss the definition for two space protective zones. First and foremost, the immediate safety zone by the space object and secondly, the actual identification area around the object and its orbital track.\nThe second issue will be intricately more complex on determining the engagement of space assets in both peacetime and wartime. The possible issue of criminal and civil liability will be discussed. The command and control of space assets will be briefly addressed with the second issue as it continues to be an ongoing controversy. Three differing views will be addressed. The concept that will be centered on will be that of integrating space into the air operations cells along with making some form of either a combined control cell at the Joint Forces Commander level or a stand-alone cell.', 'spaceassetscontrolandcommand.pdf');

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
MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=232;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `papers`
--
ALTER TABLE `papers`
MODIFY `paper_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
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
