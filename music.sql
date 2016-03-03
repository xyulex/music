-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2016 a las 10:38:49
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `music`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gigs`
--

CREATE TABLE IF NOT EXISTS `gigs` (
`gig_id` int(11) NOT NULL,
  `gig_date` date NOT NULL,
  `gig_bands` varchar(600) NOT NULL,
  `gig_venue` varchar(50) NOT NULL,
  `gig_price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gigs`
--

INSERT INTO `gigs` (`gig_id`, `gig_date`, `gig_bands`, `gig_venue`, `gig_price`) VALUES
(1, '1998-02-25', 'Green Day + D-Generation', 'Zeleste', 2700),
(2, '1998-09-18', 'Warped Tour: Bad Religion + No Use For A Name + Lagwagon + Def Con Dos + Specials + Die Toten Hosen + Cherry Poppin Daddies + Raimundos + Smooths + MxPx + Unwritten Law + ANIMAL + H-Blockx + Redshift', 'Pabellón Olímpico de Badalona', 4500),
(3, '1998-10-19', 'Lagwagon + Bouncing Souls + Avail', 'Zeleste', 2000),
(4, '1999-10-04', 'Warped Tour: Pennywise + Less Than Jake + The Pietasters + Ice-T + Dickers + Beatsteaks + Good Riddance + Ignite', 'Pabellón Olímpico de Badalona', 4500),
(5, '1998-05-17', 'Rammstein + Primates', 'Zeleste', 2200),
(6, '2000-01-01', 'Black Eyed Peas + David Guetta', 'Cornellà', 0),
(7, '2000-05-25', 'Deconstruction Tour: NOFX + Snapcase + Good Riddance + Terrorgruppe + Mad Caddies + Guttermouth', 'Zeleste', 3100),
(8, '2000-10-02', 'Epitaph Tour: Burning Heads + Heideroosjes + Terrorgruppe', 'As de Copes', 1800),
(9, '2000-10-06', 'No Use For A Name + Nerf Herder', 'Garatge', 2100),
(10, '2000-10-09', 'NOFX + Hi-Standard + Teen Idols', 'Zeleste', 2500),
(11, '2001-03-24', 'Less Than Jake + Frenzal Rhomb', 'Garatge', 2000),
(12, '2001-04-08', 'Vans Tour: Ignite + SNFU + Deviates + Venerea + Powerhouse', 'La Báscula', 2000),
(13, '2001-09-06', 'No way out', 'Lliça', 0),
(14, '2001-09-30', 'Good Clean Fun + E150', 'Big Bang', 800),
(15, '2001-10-11', 'Good Riddance + Death By Stereo', 'Garatge', 2525),
(16, '2001-11-10', 'Harum Scarum + Planes Mistaken For Stars + Standstill + Skeep Weef', 'La Nau - La Roca', 500),
(17, '2002-01-18', 'Aina + Standstill + The Unfinished Sympathy + Maple + No More Lies', 'Garatge', 1000),
(18, '2002-02-09', 'Aina', 'FNAC', 0),
(19, '2002-02-23', 'No More Lies + Aina', 'St.Francesc', 3),
(20, '2002-03-09', 'Winter hardcore festival: E150 + Hopeful + No More Lies + Uziel + No Way Out', 'Calella', 5),
(21, '2002-03-16', 'From Ashes Rise + Y + Bad Taste', 'Rock And Trini', 3),
(22, '2002-03-27', 'Subject To Change + Afterlife + Cinder', 'Rock And Trini', 5),
(23, '2002-04-27', 'Simca + The Unfinished Sympathy + Zeidun', 'St.Francesc', 4),
(24, '2002-05-01', 'Millencolin + Anti-Flag + Donots', 'Razzmatazz', 19),
(25, '2002-06-22', 'Reprisal + Kids Like Us + Twenty Inch Burial + Afterlife + Cinder', 'Rock And Trini', 6),
(26, '2002-07-03', 'The Capitol City Dusters + Aina', 'La Nau - La Roca', 3),
(27, '2002-07-11', 'Morser + Moksha + Eigheim', 'La Nau - La Roca', 3),
(28, '2002-08-01', 'Cementerio Show + Ekkaia + Destartalaos', 'La Nau - La Roca', 3),
(29, '2002-08-28', 'Pg 99 + Dirty Dancing', 'La Nau - La Roca', 3),
(30, '2002-08-30', 'Afterlife + Moksha + Zeidun + Tenebre', 'Pça Maluquer', 0),
(31, '2002-09-06', 'Propagandhi + Nevergood + Stroh', 'La Báscula', 10),
(32, '2002-09-07', 'Rabia Positiva + Izaeran + Soramame + Madee', 'La Nau - La Roca', 0),
(33, '2002-09-10', 'Highscore + Cinder + Aspersores', 'La Nau - La Roca', 3),
(34, '2002-09-25', 'Himsa + Scally', 'La Nau - La Roca', 3),
(35, '2002-09-28', 'Throwdown + 18 Visions + Moksha + Northstar', 'Rock And Trini', 6),
(36, '2002-10-19', 'Altimira fest: GAS Drummers + NoWayOut + Uziel + Maple + SadManSaid + E150 + RAID + ComeNWait + Stupper Suids + Moksha + Get Real + Tokyo Sex Destruction', 'Altimira', 10),
(37, '2002-11-15', 'Cube + Liquid Thorn Diet', 'Casal Cerdanyola', 0),
(38, '2002-12-06', 'Jimmy Eat World + Midtown (NO)', 'Bikini', 18),
(39, '2003-01-10', 'Maple + Unfinished Sympathy', 'Casal Cerdanyola', 0),
(40, '2003-01-31', 'Maple + Simca', 'Magic', 4),
(41, '2003-02-22', 'Standstill', 'L''Aliança', 0),
(42, '2003-04-15', 'Poison The Well + Stairland + Deluge + Open Hand', 'Razzmatazz 3', 10),
(43, '2003-04-17', 'Cobolt + Maple', 'Sidecar', 8),
(44, '2003-04-18', 'Liar + Cataract + Afterlife + Pointing Finger + Mad Rats + Revive + Red Turning Blue + Based On A Lie (SOS FEST)', 'La Báscula', 12),
(45, '2003-04-25', 'The Unfinished Sympathy + Zeidun + Les Philippes', 'Cibeles', 5),
(46, '2003-05-02', 'MANRESA:Angel Crew + Born From Pain + CO2 + Discipline + Malas Cartas + No Turning Back + Nunnery + Undeclinable + Rabia Positiva', 'Manresa', 12),
(47, '2003-06-04', 'What Happens Next + My Own Lies', 'La Nau - La Roca', 4),
(48, '2003-06-21', 'Madee', 'FNAC', 0),
(49, '2003-06-22', '25 Ta Life + Misconduct + Death Knell Of Gaia', 'El Cortijo - Sant Feliu Guixols', 10),
(50, '2003-06-23', 'Black Friday 29 + Afterlife + Red Turning Blue + The Challenge + Anykey', 'Rock And Trini', 5),
(51, '2003-06-27', 'Another Kind Of Death + KGC + Hzero + Jack Torrance', 'Rock And Trini', 4),
(52, '2003-07-05', 'Zeidun', 'FNAC', 0),
(53, '2003-07-10', 'Tear It Up + Cinder + Jack Torrance', 'Big Bang', 5),
(54, '2003-08-09', 'Day Of The Dead + A Traitor Like Judas + Releasing Hate + Scavenge', 'CSO Manantial', 3),
(55, '2003-08-13', 'Himsa + Hopeful + Becquer', 'Bar Cadillac(Girona)', 7),
(56, '2003-08-14', 'Sant Feliu Hardcorefest 2003', 'Camp Futbol(St Feliu)', 35),
(57, '2003-08-21', 'Pointing Finger + Cinder + Red Turning Blue + Jack Torrance', 'Big Bang', 4),
(58, '2003-09-25', 'Funeral Diner + Kidsgofree', 'La Nau - La Roca', 3),
(59, '2003-10-07', 'Amanda Woodward + Apollo Programm', 'La Nau - La Roca', 3),
(60, '2003-11-25', 'Resistance Tour: Suicidal Tendencies + Ignite + Madball + Death By Stereo + Sworn Enemy + Backfire + Length Of Time + Knuckledust', 'Razzmatazz 2', 28),
(61, '2004-02-13', 'Sick Of It All + Most Precious Blood + Bleeding Through', 'KGB', 15),
(62, '2004-02-16', 'The Appleseed Cast + Maple', 'Bikini', 10),
(63, '2004-04-11', 'DRI + Zann + Battle Royale', 'La Nau - La Roca', 10),
(64, '2004-04-20', 'Seven Feet Four + Kaospilot + Angora Static', 'La Nau - La Roca', 3),
(65, '2004-10-02', 'E150 + Seein Red + Unabomber + Kissin Cousins', 'Rock And Trini', 0),
(66, '2004-10-22', 'Stop It!! + Erantzun + Holocaust In Your Head', 'La Nau - La Roca', 5),
(67, '2005-03-24', 'Cradle of Filth + Moonspell + The Haunted', 'Razzmatazz 2', 26),
(68, '2005-06-27', 'Green Day + Jimmy Eat World (NO)', 'Pabellón Olímpico de Badalona', 30),
(69, '2006-01-23', 'JR Ewing + Dirty Perfect', 'Barlfy', 6),
(70, '2006-01-25', 'Rotten Sound + Sayyadina + Flyblown', 'Underworld (Londres)', 7),
(71, '2006-01-26', 'Terror + Blacklisted + Donnybrook', 'Underworld (Londres)', 11),
(72, '2006-01-28', 'Kerrang Tour XXV: Bullet For My Vallentine + Hawthorne Heights + Still Remains + Aiden(NO)', 'Brixton Academy (Londres)', 14),
(73, '2006-02-17', 'Sunn O))) + Earth + An Albatross', 'Mephisto', 18),
(74, '2006-03-04', 'Northstar + Cinder + The Defense + The Challenge', 'Vallcarca', 3),
(75, '2006-08-06', 'MDC + DeathSkulls + Jackal', 'Underworld (Londres)', 8),
(76, '2006-08-07', 'Nueva Etica + Seventh Cross + Mouth Guard + Future Effects + Hello Bastards', 'Underworld (Londres)', 5),
(77, '2006-08-08', 'Trencher + Art Of Burning Water + Hands on Heads', 'Madame JoJo (Londres)', 5),
(78, '2006-08-09', 'Mock Heroic + Pete The Pirate Squid + Violent Breakfast + Night and the city of broken promises + Narwhal', 'Grosvenor (Londres)', 5),
(79, '2006-08-10', 'IX + Naked Shit + Rope + Take A Worm For A Walk Week', 'MacBeth (Londres)', 5),
(80, '2006-08-11', 'HeWhoCorrupts + Lone Wolf n Cub + Trencher + Rolo Tomassi + Chronicles Of Adam West', 'Grosvenor (Londres)', 5),
(81, '2006-08-12', 'Kaospilot + Haram + Army Of Flying Robots + Perth Express + Palehorse + RedStarsParade + Eiger + Vessels (CUSSEDFEST)', 'Brudenell Social Club (Leeds)', 8),
(82, '2006-08-13', 'Sworn Enemy + 100 Demons + 50 Caliber + My Cross To Bear', 'Underworld (Londres)', 10),
(83, '2006-10-07', 'Machetazo + Moho + Orthodox + Warchetype', 'Mephisto', 10),
(84, '2006-10-07', 'Ghouls''n''Ghosts', 'FNAC', 0),
(85, '2006-10-14', 'The Movement + Budellam + Cinder', 'Codines', 10),
(86, '2006-10-27', 'Smackdown + Über', 'Codines', 4),
(87, '2006-10-28', 'Moho + Another Kind Of Death + Adrift + Moksha', 'BeGood', 10),
(88, '2006-11-16', 'Napalm Death + Born From Pain + Mendeed', 'Mephisto', 15),
(89, '2006-11-18', 'No II Chance + Effort + Still Water to Rain + Eagers + Caza de Brujas (1 canción)', 'Roquetes', 4),
(90, '2006-11-22', 'Sick Of It All + Walls of Jericho + Anal Hard', 'Mephisto', 17),
(91, '2006-12-06', 'Mono', 'Apolo2', 15),
(92, '2006-12-07', 'Negative Approach + The Horror + Search And Destroy', 'The Dome (Londres)', 14),
(93, '2006-12-30', 'Cinder + Effort + AID + Roca', 'Roquetes', 4),
(94, '2007-01-02', 'Death Of Anna Karina + Desmai', 'El Moli - La Roca', 5),
(95, '2007-01-11', 'The Blowtops + The Forma', 'El Moli - La Roca', 5),
(96, '2007-01-12', 'Death Is Not Glamorous + No 2nd Chance + Out Come The Wolves + Take The Risk + Eagers', 'Mas Guinardó', 5),
(97, '2007-01-13', 'Fucked Up + Invasión + Über + Otan + Tensión', 'CSA La Papa', 5),
(98, '2007-01-20', 'Justice + Cinder + Anagram + Caza de Brujas + Gulag + Out Come The Wolves', 'Mas Guinardó', 6),
(99, '2007-01-21', 'Peter Pan Speedrock + Dead Bones', 'El Moli - La Roca', 5),
(100, '2007-01-27', 'Stole + TCN', 'El Moli - La Roca', 5),
(101, '2007-02-02', 'Les Aus + Waiting Room', 'El Moli - La Roca', 5),
(102, '2007-02-03', 'Aina + No More Lies', 'Apolo', 10),
(103, '2007-02-20', 'Amanda Woodward + Aussitot Mort + Sugartown Cabaret', 'Codines', 5),
(104, '2007-02-23', 'Tiki Phantoms + Valiumbitch', 'El Moli - La Roca', 5),
(105, '2007-03-14', 'Gang Green + Afganistan Yeyes + Hzero', 'Apolo2', 10),
(106, '2007-03-17', 'Zinc + Més Que Odi', 'El Moli - La Roca', 5),
(107, '2007-03-24', 'Enoch Ardon + Reaction Reaction', 'El Moli - La Roca', 5),
(108, '2007-04-05', 'Mostros + Erantzun', 'El Moli - La Roca', 5),
(109, '2007-04-15', 'Gulag + Unabomber', 'El Moli - La Roca', 5),
(110, '2007-04-17', 'Disconvenience + Tensión', 'El Moli - La Roca', 5),
(111, '2007-04-25', 'Budellam + Tonchirurgie', 'El Moli - La Roca', 5),
(112, '2007-04-26', 'Pedestrians + Meuques de Barri + Nada', 'El Moli - La Roca', 5),
(113, '2007-05-12', 'The Haunted + Municipal Waste + Lizanxia', 'Apolo', 23),
(114, '2007-06-18', 'ANS + Without Light + Cinder', 'El Moli - La Roca', 4),
(115, '2007-06-28', 'Miss Alex White & The Red Orchestra + The Wiggles(1r show)', 'El Moli - La Roca', 5),
(116, '2007-07-11', 'Suchi Rukara + Adorno', 'El Moli - La Roca', 5),
(117, '2007-07-13', 'Moho + Instinto Canibal', 'El Moli - La Roca', 5),
(118, '2007-07-19', 'Short Fuse + Empty Heads', 'El Moli - La Roca', 5),
(119, '2007-07-25', 'From The Ashes + C_Utter', 'El Moli - La Roca', 5),
(120, '2007-08-30', 'Bush + Invasión', 'El Moli - La Roca', 5),
(121, '2007-09-28', 'Brutal Knights + Go Go Deads', 'El Moli - La Roca', 5),
(122, '2007-10-13', 'Bloodshed Fest: Nice Idiot + Putrescense + DrDoom + Jesus Cröst + Blood I Bleed + Infected Pussy + Fallen World + Rectal Smegma + Drugs of Faith + Massgrav + Malignant Tumour + Suppository + Agathocles + Regurgitate + Dead Infection', 'Dynamo - Eindhoven', 15),
(123, '2007-11-14', 'Suma + Chang Ffos', 'Codines', 5),
(124, '2007-11-30', 'Gulag + Uber + H-Zero', 'El Moli - La Roca', 5),
(125, '2008-01-17', 'Afganistan Yeyes + Innombrables', 'El Moli - La Roca', 0),
(126, '2008-01-26', 'Subterranean Kids + Little Moroccos', 'El Moli - La Roca', 8),
(127, '2008-02-16', 'Brutal Truth + Unabomber + Fall of Mankind + Human Ashtray', 'KGB', 15),
(128, '2008-03-01', 'Leatherface + FP + The Bite', 'Codines', 10),
(129, '2008-03-08', 'Infäme + Horror + Violent Headache', 'Codines', 5),
(130, '2008-04-18', 'Seein Red + Fix Me + Invasión + Botox Housewife', 'Vallcarca', 5),
(131, '2008-04-26', 'Sick Of It All + Ignite + Subterranean Kids + Wisdom In Chains + Death Before Dishonor + Burn The 8 Track + Twenty Fighters', 'Apolo', 20),
(132, '2008-05-17', 'Haemorrhage + Gruesome Stuff Relish + Mixomatosis + Pesta Porcina + Altar Of Giallo', 'Mephisto', 18),
(133, '2008-06-20', 'Hellfest 2008: NOFX + Shining + Rotten Sound + Haemorrhage + Origin…', 'Clisson - Francia', 109),
(134, '2008-09-12', 'Caos Emergente: Biomechanical + Putrefy + Oblique Rain + Angriff + B.I.V.L. + Encephalon + Nile + Grave + Belphegor + Grog + Subcaos + Demon Dagger + Flagellum Dei + Between the Frost', 'Recarei - Portugal', 50),
(135, '2008-11-07', 'Trauma fest: Moñigo + Difenacum + Dead Congregation + Haemorrhage + Demigod + Regurgitate + Unsane Crisis + Graveyard + Gruesome Stuff Relish + Rompeprop + Skepticism + Vomitory', 'El Grito - Fuenlabrada', 35),
(136, '2008-11-21', 'Grief + Trap Them + Lords Of Bukkake', 'Codines', 10),
(137, '2008-11-22', 'Between the Frost', 'Crossroads - Terrassa', 9),
(138, '2009-02-28', 'Moho + Ultraphallus + Lords Of Bukkake + Warchetype', 'Codines', 5),
(139, '2009-03-08', 'Mother Of Six + Yaro', 'Codines', 5),
(140, '2009-03-13', 'Yacopsae + Jesus Crost', 'Puerto Hurraco', 11),
(141, '2009-03-21', 'FireNIce09 (Segundo día): Fresh Trash + The Gundown + Good Fellaz + Common Cause + Cinder', 'Can Basté BCN', 7),
(142, '2009-03-27', 'Moksha + Naizroxa + Micronun(1r concert)', 'Codines', 5),
(143, '2009-03-31', 'AC/DC + The Answer', 'Palau Sant Jordi', 61),
(144, '2009-04-02', 'Earth + StebMo', 'Apolo2', 12),
(145, '2009-04-09', 'Raein + Interlude + Heads And Heads (1r concierto)', 'Roxy Rock Café', 6),
(146, '2009-04-16', 'Baroness + Kids Pantera', 'BeCool', 12),
(147, '2009-04-17', 'Mono + Geoff Farina', 'Apolo2', 12),
(148, '2009-04-25', 'Asphyx + Graveyard + Looking For An Answer + Violent Headache', 'Espai Jove de l''Eixample', 22),
(149, '2009-06-07', 'AC/DC + The Answer + Lilith', 'Estadi Olimpic Lluis Companys', 73),
(150, '2009-06-27', 'Heretic Fest: Electric Wizard + Moho + Warchetype + Lords Of Bukkake', 'Apolo2', 19),
(151, '2009-07-11', 'Sonisphere: Metallica + Slipknot + Machine Head + Down + Lamb Of God + Mastodon + Soziedad Alkoholica + Gojira', 'Fòrum', 70),
(152, '2009-07-27', 'Sepultura + Voivod + Municipal Waste + SNFU', 'Apolo', 27),
(153, '2009-08-11', 'Offspring + No Children', 'Razzmatazz', 30),
(154, '2009-09-10', 'Saturnus + Isole + Autumnal + Moonloop', 'Mephisto', 17),
(155, '2009-09-25', 'Loan + Lords Of Bukkake + Cuerno', 'BeGood', 7),
(156, '2009-09-26', 'Loan + Memest + Goldfish + Midnight Zombie Alligator', 'Codines', 5),
(157, '2009-10-01', 'Green Day + Prima Donna', 'Palau Sant Jordi', 43),
(158, '2009-10-09', 'Cannibal Corpse + Dying Fetus + Evocation + Obscura', 'Razzmatazz 2', 25),
(159, '2009-11-03', 'Do Make Say Think', 'Apolo2', 19),
(160, '2009-11-25', 'Melvins + Big Business + Porn', 'Apolo', 23),
(161, '2009-11-26', 'Isis + Dälek + Keelhaul', 'Apolo', 1000000),
(162, '2010-02-19', 'Hatebreed + Anal Hard', 'Razzmatazz 2', 20),
(163, '2010-07-22', 'The Get Up Kids + The Backseats + Astrobahn', 'La Sala Live!(Madrid)', 0),
(164, '2010-11-11', 'Imelda May', 'Bikini', 22),
(165, '2010-11-17', 'Joe Satriani + Bed Evett and triple double', 'Apolo', 36),
(166, '2011-04-01', 'Slayer + Megadeth + Angelus Apatrida', 'Sant Jordi Club', 43),
(167, '2011-04-19', 'NOFX + Teenage Bottlerocket + Old Man Markley', 'Razzmatazz', 27),
(168, '2011-04-30', 'Soilent Green + Today Is The Day', 'Mephisto', 15),
(169, '2011-05-20', 'Machetazo + Korgull the exterminator + Maleit', 'Mephisto', 15),
(170, '2011-06-21', 'Eyehategod + Church of misery', 'Apolo2', 20),
(171, '2011-06-28', 'Boris + Russian Circles + Saade', 'Apolo2', 22),
(172, '2011-07-21', 'Neurosis + Karma To Burn', 'Apolo', 0),
(173, '2011-09-22', 'Millencolin + Atlas Losing Grip + Twopointeight', 'Apolo', 100000),
(174, '2011-10-11', 'Wormrot + Maruta + Depecho Mode', 'Codines', 5),
(175, '2011-10-11', 'Weekend Nachos + Cancer Clan', 'Codines', 5),
(176, '2012-04-20', 'Lagwagon + Silversuck + Estupido Yo', 'Razzmatazz 2', 18),
(177, '2012-08-02', 'Rancid + Klasse Kriminale + Último Asalto + Gas Drummers', 'Razzmatazz', 28),
(178, '2012-11-08', 'Gaslight Anthem + Les Fat Jones', 'Apolo2', 23),
(179, '2013-05-03', 'Pennywise + A Wilhelm Scream + Authority Zero + Blowfuse', 'Razzmatazz', 22),
(180, '2013-06-01', 'Sonisphere: Iron Maiden + Ghost + Newsted', 'Fórum', 65),
(181, '2013-11-19', 'Airbourne + Black Spiders + Corroded', 'Apolo', 28),
(182, '2014-02-21', 'Me First And The Gimme Gimmes + Old Man Markley', 'Apolo', 22),
(183, '2014-06-18', 'Bad Religion + Against Me', 'Razzmatazz', 28),
(184, '2014-10-24', 'Cannibal Corpse + Revocation + Aeon', 'Razzmatazz 3', 27),
(185, '2014-10-30', 'Sworn Enemy + Claiming the crown', 'RockSound', 10),
(186, '2015-03-04', 'Marduk + Belphegor + Bliss Of Flesh + Krysantemia', 'Apolo', 24),
(187, '2015-03-11', 'Joey Cape + Chris Cresswell', 'RockSound', 10),
(188, '2015-03-15', 'Lagwagon + Flatliners + Western Addiction', 'Apolo', 23),
(189, '2015-04-15', 'Sick Of It All + The Ghost Inside + Angel Dust', 'Razzmatazz 2', 23),
(190, '2015-05-26', 'Unearth + Drone', 'Razzmatazz 3', 19),
(191, '2015-05-29', 'AC/DC + Trouble', 'Lluis Companys', 91),
(192, '2015-09-19', 'Nile + Suffocation + Chabtain', 'Razzmatazz 2', 28),
(193, '2015-10-02', 'Joe Satriani + Tori Sparks', 'Barts', 39),
(194, '2015-10-05', 'Taake + Krakow + The 3rd Attempt + Orkan', 'Razzmatazz 3', 22),
(195, '2015-11-01', 'Negative Approach + Rotten Mind + Golem', 'Rocksound', 10),
(196, '2015-11-02', 'Children of Bodom + Sylosys', 'Razzmatazz 2', 0),
(197, '2015-11-03', 'Slayer + Anthrax + Kvelertak', 'Razzmatazz', 0),
(198, '2015-11-18', 'Zebrahead + MxPx + Daylight', 'Bóveda', 18),
(199, '2016-02-20', 'Millencolin + Templeton Pek', 'Apolo', 0),
(200, '2016-02-26', 'Netherlands Deathfest: Agoraphobic Nosebleed + Blockheads + Cripple Bastards + Doom + Dropdead + Infest + Kraanium + Magrudergrind + Teethgrinder + Visceral Disgorge + Vitamin X + Wolfbrigade |+ Abigail + Angelcorpse + Blasphemy + Cyness + Dodecahedron + Flesh Parade + Haemorrhage + Pig Destroyer + Razor + Revenge + Thanatos |+ Asphyx + Autopsy + Beheaded + Cenotaph + Coffins + Demilich + Entrails + Entrails Massacre + Funebrarum + Gadget + Gruesome + Morpheus Descends + Severe Torture + Squash Bowels', '013 (Tilburg)', 102),
(201, '2016-03-02', 'Magrudergrind + Primitive Man + Teething', 'Rocksound', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gigs`
--
ALTER TABLE `gigs`
 ADD PRIMARY KEY (`gig_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gigs`
--
ALTER TABLE `gigs`
MODIFY `gig_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
