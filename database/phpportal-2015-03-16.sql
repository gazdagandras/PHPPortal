-- phpMyAdmin SQL Dump
-- version 4.3.2
-- http://www.phpmyadmin.net
--
-- Hoszt: 127.0.0.1
-- Létrehozás ideje: 2015. Már 16. 18:07
-- Szerver verzió: 5.5.27
-- PHP verzió: 5.4.7

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `phpportal`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `lead` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `text` text COLLATE utf8_hungarian_ci NOT NULL,
  `date` date NOT NULL,
  `tag` tinyint(4) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `news`
--

INSERT INTO `news` (`id`, `title`, `lead`, `text`, `date`, `tag`, `published`) VALUES
(1, '120 ezer Tizen-telefont adott el a Samsung', 'Nem tűnik soknak az eddigi eredmény, de a gyártó optimista az új platform esélyeit illetően.', 'Nem tűnik soknak az eddigi eredmény, de a gyártó optimista az új platform esélyeit illetően. Az elmúlt évben mi is folyamatosan nyomon követtük a Samsung alternatív mobil operációs rendszerének várható indulásáról, majd pedig az annak elhalasztásáról szóló híreket. Idén végre valóban elérhetővé vált az első ilyen készülék, mostanra pedig az első adatok is napvilágot láttak – egyelőre külső forrásból. ', '2015-02-18', 2, 1),
(2, 'Jövőre jön a Warhammer 40k: Dark Nexus Arena', 'Bemutatkozott a Warhammer 40k: Dark Nexus Arena.', 'A Whitebox Interactive bejelentette a Warhammer 40k: Dark Nexus Arena címet kapott MOBA-játékát, mely elméletileg csak PC-re jelenik meg. Az alkotásban Dark Eldar fővárosa, Commorragh arénáiban küzdhetünk majd meg négy társunkkal, akik a megszokott fajok közül kerülhetnek ki (Ork, Űrgárdista, Tau).\r\n\r\nA későbbiek folyamán természetesen új területekkel bővül majd a játéktér és hősöket is kapunk (Assault Terminator, Scout, Stormboy, Tau Fire Warrior). A Warhammer 40k: Dark Nexus Arena 2016-ban jelenik meg és a kipróbálható változat a PAX East-en mutatkozik be a jövő hónapban.', '2015-03-03', 4, 1),
(3, 'Újabb kráterekre bukkantak Szibériában', 'Tucatnyi új kráter került elő a lakatlan tájakon, a szakértők több eltérő magyarázatot kínálnak.', 'Még tavaly nyáron bukkant fel az interneten egy érdekes videó, amelyen egy méretes krátert vehettünk közelebbről is szemügyre. Az Északnyugat-Szibériában talált mélyedést most tucatnyi másik követte, amelyek hasonló körülmények között jöhettek létre – a kutatók nem tartják valószínűnek a becsapódást, illetve a földönkívüli invázió lehetőségét. ', '2015-03-03', 1, 1),
(4, 'Már készül Az útvesztő 3 ', 'Még nem is tudjuk, hogy sikeres lesz-e a Tűzpróba, de már készül a The Death Cure.', 'Még több, mint fél év van Az útvesztő-sorozat (The Maze Runner) második részének, a Tűzpróbának (Scorch Trials) mozis premierjéig, de a 20th Century Fox már neki is látott a harmadik rész, a The Death Cure készítésének. James Dashner népszerű könyvsorozata újabb epizódjának a forgatókönyvét az a T.S. Nowling fogja írni, aki Noah Oppenheim és Grant Pierce Myers közreműködésével már az első rész szkriptjét is jegyezte, hogy azt követően a második epizódét már önállóan készíthesse el.', '2015-03-09', 3, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `text` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rights`
--

DROP TABLE IF EXISTS `rights`;
CREATE TABLE IF NOT EXISTS `rights` (
  `id` tinyint(4) NOT NULL,
  `description` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rights`
--

INSERT INTO `rights` (`id`, `description`) VALUES
(1, 'Adminisztrátor'),
(2, 'Főszerkesztő'),
(3, 'Hírszerkesztő'),
(4, 'Vendég');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` tinyint(4) NOT NULL,
  `description` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tags`
--

INSERT INTO `tags` (`id`, `description`) VALUES
(1, 'Tudomány'),
(2, 'IT/Tech'),
(3, 'Film'),
(4, 'Játék');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `upass` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `rights` tinyint(4) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
-- "tesztelek" jelszava: 123456
--

INSERT INTO `users` (`id`, `uname`, `upass`, `name`, `email`, `rights`, `active`) VALUES
(1, 'tesztelek', '$1$Ky..LQ..$yk73L4TwWAqzHEWy0JY/U1', 'Teszt Elek', 'tesztelek@gmail.com', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
