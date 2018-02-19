-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2017 at 11:24 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `draugr`
--

-- --------------------------------------------------------

--
-- Table structure for table `angry_neighbors_companions`
--

CREATE TABLE `angry_neighbors_companions` (
  `card_id` int(11) NOT NULL,
  `companion_type` varchar(255) NOT NULL,
  `active_skill` varchar(255) NOT NULL,
  `passive_skill` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angry_neighbors_companions`
--

INSERT INTO `angry_neighbors_companions` (`card_id`, `companion_type`, `active_skill`, `passive_skill`) VALUES
(1, 'Gunman', 'Spend 1 Action for a Pistol action with all Teammate Gunman in the zone.', 'Get +1 die: Ranged.'),
(2, 'Gunman', 'Spend 1 Action for a Pistol action with all Teammate Gunman in the zone.', 'Get +1 die: Ranged.'),
(3, 'Handyman', 'Spend 1 Action to silently open a door or break a barricade', 'Barricades can be built anywhere and cost 1 less action to build (min. 1).'),
(4, 'Handyman', 'Spend 1 Action to silently open a door or break a barricade', 'Barricades can be built anywhere and cost 1 less action to build (min. 1).'),
(5, 'Searcher', 'Get search +1 card.', 'Passive: The Searcher does not occupy an inventory slot.'),
(6, 'Searcher', 'Get search +1 card.', 'Passive: The Searcher does not occupy an inventory slot.'),
(7, 'Sniper', 'Spend 1 Action for a Sniper Rifle ranged action (accuracy 4+) with all teammate Snipers in the zone.', 'Get +1 max Range.'),
(8, 'Sniper', 'Spend 1 Action for a Sniper Rifle ranged action (accuracy 4+) with all teammate Snipers in the zone.', 'Get +1 max Range.');

-- --------------------------------------------------------

--
-- Table structure for table `angry_neighbors_items`
--

CREATE TABLE `angry_neighbors_items` (
  `card_id` int(11) NOT NULL,
  `equipment_type` varchar(255) NOT NULL,
  `weapon_range` varchar(255) NOT NULL,
  `dice` varchar(255) NOT NULL,
  `accuracy` varchar(255) NOT NULL,
  `damage` varchar(255) NOT NULL,
  `door` varchar(255) NOT NULL,
  `noise` varchar(255) NOT NULL,
  `duel_weapoon` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angry_neighbors_items`
--

INSERT INTO `angry_neighbors_items` (`card_id`, `equipment_type`, `weapon_range`, `dice`, `accuracy`, `damage`, `door`, `noise`, `duel_weapoon`, `comments`) VALUES
(1, 'Sub MG', '0-1', '3', '5+', '1', 'n/a', 'Will produce noise', 'Duel weapon', 'n/a'),
(2, 'Sub MG', '0-1', '3', '5+', '1', 'n/a', 'Will produce noise', 'Duel weapon', 'n/a'),
(3, 'Energy Drink', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '50% Creatine, 50% Caffeine, 50% Taurine, 100% Guillotine! Discard this card during Activation: +1 action until the end of Activation (Cumulative).'),
(4, 'Energy Drink', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '50% Creatine, 50% Caffeine, 50% Taurine, 100% Guillotine! Discard this card during Activation: +1 action until the end of Activation (Cumulative).'),
(5, 'Energy Drink', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '50% Creatine, 50% Caffeine, 50% Taurine, 100% Guillotine! Discard this card during Activation: +1 action until the end of Activation (Cumulative).'),
(6, 'Energy Drink', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '50% Creatine, 50% Caffeine, 50% Taurine, 100% Guillotine! Discard this card during Activation: +1 action until the end of Activation (Cumulative).'),
(7, 'Energy Drink', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '50% Creatine, 50% Caffeine, 50% Taurine, 100% Guillotine! Discard this card during Activation: +1 action until the end of Activation (Cumulative).'),
(8, 'Energy Drink', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '50% Creatine, 50% Caffeine, 50% Taurine, 100% Guillotine! Discard this card during Activation: +1 action until the end of Activation (Cumulative).'),
(9, 'Flaming Nailbat', '0', '4', '3+', '3', 'n/a', 'n/a', 'n/a', 'Ultrared Weapon'),
(10, 'Nico Special', '1-3', '3', '2+', '2', 'Can open doors. Will produce noise.', 'Will produce noise.', 'n/a', 'Ultrared Weapon. Sniper Rifle. Treat all Zombies as standard.'),
(11, 'SBF', '0', '1', '4+', '1', 'n/a', 'n/a', 'Duel weapon', 'Survivor''s Best Friend. If equipped, gain the Tough Skill.'),
(12, 'SBF', '0', '1', '4+', '1', 'n/a', 'n/a', 'Duel weapon', 'Survivor''s Best Friend. If equipped, gain the Tough Skill.'),
(13, 'Handcannon', '0-1', '3', '3+', '1', 'n/a', 'Will produce noise', 'n/a', '1 Action to reload. Free in end Phase.'),
(15, 'Handcannon', '0-1', '3', '3+', '1', 'n/a', 'Will produce noise', 'n/a', '1 Action to reload. Free in end Phase.'),
(16, 'The Holy Pan', '0', '3', '4+', '2', 'n/a', 'n/a', 'n/a', 'Made in France. Ultrared Weapon. If equipped, gain +3 dice with the other Equipped melee weapon.'),
(17, 'The Reaper', '0', '5', '5+', '2', 'n/a', 'n/a', 'n/a', 'Ultrared Weapon. Roll 5 or 6: Gain +1 die.'),
(18, 'Zombicider', '0-1', 'special', '3+', '2', 'n/a', 'Will produce noise.', 'n/a', 'Ultrared Weapon. Roll as many dice as actors in the target zone.'),
(19, 'Uber Shield', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'If equipped: 1: Gain the "Tough" and "Shove skills.2: Discard to prevent all wounds inflicted to the wearer.'),
(20, 'Winchester', '1-2', '2', '4+', '1', 'n/a', 'Will produce noise.', 'n/a', 'n/a'),
(21, 'Winchester', '1-2', '2', '4+', '1', 'n/a', 'Will produce noise.', 'n/a', 'n/a'),
(22, 'Zantetsuken', '0', '4', '3+', '2', 'n/a', 'Will produce noise.', 'n/a', 'Ultrared Weapon. Katana. Skinner Zombies killed with this weapon cannot turn into Crawlers.'),
(23, 'Zomb'' Knuckles', '0', '1', '4+', '1', 'n/a', 'n/a', 'Duel Weapon', 'If equipped, gain +1 die with the other equipped melee weapon.'),
(24, 'Zomb'' Knuckles', '0', '1', '4+', '1', 'n/a', 'n/a', 'Duel Weapon', 'If equipped, gain +1 die with the other equipped melee weapon.'),
(25, 'Zomb'' Knuckles', '0', '1', '4+', '1', 'n/a', 'n/a', 'Duel Weapon', 'If equipped, gain +1 die with the other equipped melee weapon.'),
(26, 'Zomb'' Knuckles', '0', '1', '4+', '1', 'n/a', 'n/a', 'Duel Weapon', 'If equipped, gain +1 die with the other equipped melee weapon.'),
(27, 'Crossbow', '0-1', '1', '3+', '2', 'n/a', 'n/a', 'n/a', 'Combine with a Scope to get the Sniper Skill with this weapon.'),
(28, 'Crossbow', '0-1', '1', '3+', '2', 'n/a', 'n/a', 'n/a', 'Combine with a Scope to get the Sniper Skill with this weapon.');

-- --------------------------------------------------------

--
-- Table structure for table `angry_neighbors_zombies`
--

CREATE TABLE `angry_neighbors_zombies` (
  `card_id` int(11) NOT NULL,
  `blue_num` varchar(255) NOT NULL,
  `blue_type` varchar(255) NOT NULL,
  `yellow_num` varchar(255) NOT NULL,
  `yellow_type` varchar(255) NOT NULL,
  `orange_num` varchar(255) NOT NULL,
  `orange_type` varchar(255) NOT NULL,
  `red_num` varchar(255) NOT NULL,
  `red_type` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angry_neighbors_zombies`
--

INSERT INTO `angry_neighbors_zombies` (`card_id`, `blue_num`, `blue_type`, `yellow_num`, `yellow_type`, `orange_num`, `orange_type`, `red_num`, `red_type`, `comments`) VALUES
(1, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(2, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(3, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(4, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(5, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(6, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(7, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(8, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(9, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(10, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(11, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a'),
(12, '1', 'seeker', '2', 'seeker', '3', 'seeker', '4', 'seeker', 'n/a');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `user_name`, `password`) VALUES
(1, 'user', 'password'),
(2, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `prison_outbreak_items`
--

CREATE TABLE `prison_outbreak_items` (
  `card_num` int(11) NOT NULL,
  `equipment_type` varchar(255) NOT NULL,
  `weapon_range` varchar(255) NOT NULL,
  `dice` varchar(255) NOT NULL,
  `accuracy` varchar(255) NOT NULL,
  `damage` varchar(255) NOT NULL,
  `door` varchar(255) NOT NULL,
  `noise` varchar(255) NOT NULL,
  `duel_weapoon` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `prison_outbreak_items`
--

INSERT INTO `prison_outbreak_items` (`card_num`, `equipment_type`, `weapon_range`, `dice`, `accuracy`, `damage`, `door`, `noise`, `duel_weapoon`, `comments`) VALUES
(1, 'AAAHH!', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'What you thought was a pile of rags is in fact a zombie. Place one Walker in the room you just searched.\r\n'),
(2, 'AAAHH!', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'What you thought was a pile of rags is in fact a zombie. Place one Walker in the room you just searched.\r\n'),
(3, 'AAAHH!', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'What you thought was a pile of rags is in fact a zombie. Place one Walker in the room you just searched.\r\n'),
(4, 'AAAHH!', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'What you thought was a pile of rags is in fact a zombie. Place one Walker in the room you just searched.\r\n'),
(5, 'Bag of Rice', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a\r\n'),
(6, 'Bag of Rice', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a\r\n'),
(7, 'Bag of Rice', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a\r\n'),
(8, 'Baseball Bat', '0', '1', '3+', '1', 'Cannot open doors', 'Will produce noise', 'n/a', 'n/a\r\n'),
(9, 'Baseball Bat', '0', '1', '3+', '1', 'Cannot open doors', 'Will produce noise', 'n/a', 'n/a\r\n'),
(10, 'Canned Food', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a\r\n'),
(11, 'Canned Food', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a\r\n'),
(12, 'Chainsaw', '0', '5', '5+', '2', 'Can open doors and will produce noise', 'Will produce noise', 'n/a', 'n/a\r\n'),
(13, 'Chainsaw', '0', '5', '5+', '2', 'Can open doors and will produce noise', 'Will produce noise', 'n/a', 'n/a\r\n'),
(14, 'Fire Axe', '0', '1', '4+', '2', 'Can open doors and will produce noise', 'Will not produce noise', 'n/a', 'n/a\r\n'),
(15, 'Fire Axe', '0', '1', '4+', '2', 'Can open doors and will produce noise', 'Will not produce noise', 'n/a', 'n/a\r\n'),
(16, 'Flashlight', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Pick one extra card when searching. This card is effective even in reserve.'),
(17, 'Flashlight', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Pick one extra card when searching. This card is effective even in reserve.'),
(18, 'Gasoline', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Glass Bottles to get a Molotov.'),
(19, 'Gasoline', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Glass Bottles to get a Molotov.'),
(20, 'Glass Bottles', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Gasoline to get a Molotov.'),
(21, 'Glass Bottles', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Gasoline to get a Molotov.'),
(22, 'Katana', '0', '2', '4+', '1', 'n/a', 'n/a', 'n/a', 'n/a'),
(23, 'Katana', '0', '2', '4+', '1', 'n/a', 'n/a', 'n/a', 'n/a'),
(24, 'Molotov', '0-1', 'special', 'special', 'a lot', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(25, 'Molotov', '0-1', 'special', 'special', 'a lot', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(26, 'Pistol', '0-1', '1', '4+', '1', 'n/a', 'Will produce noise', 'Can be duel weapon', 'n/a'),
(27, 'Pistol', '0-1', '1', '4+', '1', 'n/a', 'Will produce noise', 'Can be duel weapon', 'n/a'),
(28, 'Pistol', '0-1', '1', '4+', '1', 'n/a', 'Will produce noise', 'Can be duel weapon', 'n/a'),
(29, 'Pistol', '0-1', '1', '4+', '1', 'n/a', 'Will produce noise', 'Can be duel weapon', 'n/a'),
(30, 'Pistol', '0-1', '1', '4+', '1', 'n/a', 'Will produce noise', 'Can be duel weapon', 'n/a'),
(31, 'Pistol', '0-1', '1', '4+', '1', 'n/a', 'Will produce noise', 'Can be duel weapon', 'n/a'),
(32, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Pistol(s), Evil Twins or Rifle. The new result takes place of the previous one.'),
(33, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Pistol(s), Evil Twins or Rifle. The new result takes place of the previous one.'),
(34, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Pistol(s), Evil Twins or Rifle. The new result takes place of the previous one.'),
(35, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Sawed-off(s), Shotgun or Ma''s Shotgun. The new result takes place of the previous one.'),
(36, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Sawed-off(s), Shotgun or Ma''s Shotgun. The new result takes place of the previous one.'),
(37, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Sawed-off(s), Shotgun or Ma''s Shotgun. The new result takes place of the previous one.'),
(38, 'Rifle', '1-3', '1', '3+', '1', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(39, 'Rifle', '1-3', '1', '3+', '1', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(40, 'Sawed Off', '0-1', '2', '3+', '1', 'n/a', 'Will produce noise', 'Can be duel weapon.', 'Special! 1 action to reload. Free in end phase.'),
(41, 'Sawed Off', '0-1', '2', '3+', '1', 'n/a', 'Will produce noise', 'Can be duel weapon.', 'Special! 1 action to reload. Free in end phase.'),
(42, 'Sawed Off', '0-1', '2', '3+', '1', 'n/a', 'Will produce noise', 'Can be duel weapon.', 'Special! 1 action to reload. Free in end phase.'),
(43, 'Sawed Off', '0-1', '2', '3+', '1', 'n/a', 'Will produce noise', 'Can be duel weapon.', 'Special! 1 action to reload. Free in end phase.'),
(44, 'Scope', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Rifle to get a Sniper Rifle. Get Sniper skill for all ranges actions done with a Sniper Rifle (the survivor chooses freely the target(s)).'),
(45, 'Scope', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Rifle to get a Sniper Rifle. Get Sniper skill for all ranges actions done with a Sniper Rifle (the survivor chooses freely the target(s)).'),
(46, 'Shotgun', '0-1', '2', '4+', '2', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(47, 'Shotgun', '0-1', '2', '4+', '2', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(48, 'Sub MG', '0-1', '3', '5+', '1', 'n/a', 'Will produce noise', 'Can be a duel weapon.', 'n/a'),
(49, 'Sub MG', '0-1', '3', '5+', '1', 'n/a', 'Will produce noise', 'Can be a duel weapon.', 'n/a'),
(50, 'Water', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a'),
(51, 'Water', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a'),
(52, 'Water', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a'),
(53, 'Automatic Shotgun', '0-1', '3', '4+', '2', 'n/a', 'Will produce noise.', 'n/a', 'n/a'),
(54, 'Automatic Shotgun', '0-1', '3', '4+', '2', 'n/a', 'Will produce noise.', 'n/a', 'n/a'),
(55, 'Claw Hammer', '0', '3', '5+', '1', 'Will open doors, no noise produced.', 'n/a', 'Can be Duel weapon.', 'n/a'),
(56, 'Claw Hammer', '0', '3', '5+', '1', 'Will open doors, no noise produced.', 'n/a', 'Can be Duel weapon.', 'n/a'),
(57, 'Claw Hammer', '0', '3', '5+', '1', 'Will open doors, no noise produced.', 'n/a', 'Can be Duel weapon.', 'n/a'),
(58, 'Claw Hammer', '0', '3', '5+', '1', 'Will open doors, no noise produced.', 'n/a', 'Can be Duel weapon.', 'n/a'),
(59, 'Concrete Saw', '0', '3', '5+', '3', 'Will open doors, and produce noise.', 'Will produce noise.', 'n/a', 'n/a'),
(60, 'Gunblade', 'Blade-0\r\nGun-0-1', 'Blade-2\r\nGun-1', '4+', '2', 'n/a', 'Blade will NOT produce noise. Gun will produce noise.', 'Can be Duel Weapon', 'n/a'),
(61, 'Gunblade', 'Blade-0\r\nGun-0-1', 'Blade-2\r\nGun-1', '4+', '2', 'n/a', 'Blade will NOT produce noise. Gun will produce noise.', 'Can be Duel Weapon', 'n/a'),
(62, 'Hatchet', '0', '1', '3+', '1', 'n/a', 'n/a', 'Can be Duel Weapon', 'n/a'),
(63, 'Hatchet', '0', '1', '3+', '1', 'n/a', 'n/a', 'Can be Duel Weapon', 'n/a'),
(64, 'Hatchet', '0', '1', '3+', '1', 'n/a', 'n/a', 'Can be Duel Weapon', 'n/a'),
(65, 'Hatchet', '0', '1', '3+', '1', 'n/a', 'n/a', 'Can be Duel Weapon', 'n/a'),
(66, 'Kukri', '0', '1', '4+', '1', 'n/a', 'n/a', 'Can be Duel Weapon', 'n/a'),
(67, 'Kukri', '0', '1', '4+', '1', 'n/a', 'n/a', 'Can be Duel Weapon', 'n/a'),
(68, 'Kukri', '0', '1', '4+', '1', 'n/a', 'n/a', 'Can be Duel Weapon', 'n/a'),
(69, 'Kukri', '0', '1', '4+', '1', 'n/a', 'n/a', 'Can be Duel Weapon', 'n/a'),
(70, 'Meat Cleaver', '0', '1', '3+', '2', 'n/a', 'n/a', 'n/a', 'n/a'),
(71, 'Meat Cleaver', '0', '1', '3+', '2', 'n/a', 'n/a', 'n/a', 'n/a'),
(72, 'Nailbat', '0', '2', '3+', '2', 'n/a', 'n/a', 'n/a', 'n/a'),
(73, 'Nailbat', '0', '2', '3+', '2', 'n/a', 'n/a', 'n/a', 'n/a'),
(74, 'Nails', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Baseball Bat to get a Nailbat.'),
(75, 'Nails', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Baseball Bat to get a Nailbat.'),
(76, 'Night Stick', '0', '1', '4+', '1', 'n/a', 'n/a', 'n/a', 'If equipped, discard to prevent 1 wound inflicted to the wearer.'),
(77, 'Night Stick', '0', '1', '4+', '1', 'n/a', 'n/a', 'n/a', 'If equipped, discard to prevent 1 wound inflicted to the wearer.'),
(78, 'Night Stick', '0', '1', '4+', '1', 'n/a', 'n/a', 'n/a', 'If equipped, discard to prevent 1 wound inflicted to the wearer.'),
(79, 'Riot Shield', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'If equipped: (1) Gain the "tough" skill. (2) Discard to prevent 1 wound inflicted to the wearer.'),
(80, 'Riot Shield', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'If equipped: (1) Gain the "tough" skill. (2) Discard to prevent 1 wound inflicted to the wearer.'),
(81, 'Wakizachi', '0', '1', '4+', '1', 'n/a', 'n/a', 'Can be a duel weapon.', 'If equipped, Gain +2 dice with Katana.'),
(82, 'Wakizachi', '0', '1', '4+', '1', 'n/a', 'n/a', 'Can be a duel weapon.', 'If equipped, Gain +2 dice with Katana.'),
(83, 'Canned Food', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `prison_outbreak_zombies`
--

CREATE TABLE `prison_outbreak_zombies` (
  `card_num` int(11) NOT NULL,
  `blue_num` varchar(255) NOT NULL,
  `blue_type` varchar(255) NOT NULL,
  `yellow_num` varchar(255) NOT NULL,
  `yellow_type` varchar(255) NOT NULL,
  `orange_num` varchar(255) NOT NULL,
  `orange_type` varchar(255) NOT NULL,
  `red_num` varchar(255) NOT NULL,
  `red_type` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prison_outbreak_zombies`
--

INSERT INTO `prison_outbreak_zombies` (`card_num`, `blue_num`, `blue_type`, `yellow_num`, `yellow_type`, `orange_num`, `orange_type`, `red_num`, `red_type`, `comments`) VALUES
(1, '1', 'walker', '2', 'runners', '5', 'walkers', '3', 'fatties', 'Berserker Zommbies'),
(2, '1', 'walker', '2', 'walkers', '3', 'runners', '7', 'walkers', 'Berserker Zommbies'),
(3, '2', 'walkers', '2', 'walkers', '3', 'walkers', '4', 'fatties', 'Berserker Zommbies'),
(4, '2', 'walkers', '1', 'abomination', '2', 'runners', '5', 'walkers', 'Berserker Zommbies'),
(5, '1', 'walker', '4', 'walkers', '1', 'abomination', '3', 'runners', 'Berserker Zommbies'),
(6, '1', 'walker', '2', 'walkers', '6', 'walkers', '1', 'abomination', 'Berserker Zommbies'),
(7, '1', 'fatty', '1', 'runner', '3', 'walkers', '8', 'walkers', 'Berserker Zommbies'),
(8, '1', 'runner', '1', 'walker', '2', 'fatties', '5', 'walkers', 'Berserker Zommbies'),
(9, '1', 'walker', '2', 'fatties', '5', 'walkers', '3', 'runners', 'Berserker Zommbies'),
(10, '1', 'walker', '2', 'walkers', '3', 'fatties', '7', 'walkers', 'Berserker Zommbies'),
(11, '1', 'runner', '1', 'fatty', '3', 'walkers', '4', 'runners', 'Berserker Zommbies'),
(12, '1', 'abomination', '3', 'walkers', '2', 'runners', '5', 'walkers', 'Berserker Zommbies'),
(13, '0', 'n/a', '2', 'runners', '2', 'runners', '5', 'walkers', 'n/a'),
(14, '1', 'walker', '1', 'walker', '6', 'walkers', '7', 'walkers', 'n/a'),
(15, '1', 'walker', '1', 'runner', '1', 'fatty', '4', 'runners', 'n/a'),
(16, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'runners', 'n/a'),
(17, '0', 'n/a', '4', 'walkers', '2', 'fatties', '5', 'walkers', 'n/a'),
(18, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers', 'n/a'),
(19, '1', 'walker', '2', 'walkers', '2', 'walkers', '4', 'runners', 'n/a'),
(20, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'fatties', 'n/a'),
(21, '0', 'n/a', '4', 'walkers', '2', 'runners', '5', 'walkers', 'n/a'),
(22, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers', 'n/a'),
(23, '1', 'walker', '1', 'runner', '1', 'runner', '4', 'fatties', 'n/a'),
(24, '1', 'fatty', '3', 'walkers', '4', 'walkers', '2', 'runners', 'n/a'),
(25, '0', 'n/a', '2', 'runners', '2', 'runnerrs', '5', 'walkers', 'n/a'),
(26, '1', 'walker', '1', 'walker', '1', 'abomination', '7', 'walkers', 'n/a'),
(27, '1', 'walker', '1', 'runner', '1', 'fatty', '4', 'runners', 'n/a'),
(28, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'runners', 'n/a'),
(29, '0', 'n/a', '4', 'walkers', '2', 'fatties', '5', 'walkers', 'n/a'),
(30, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers', 'n/a'),
(31, '1', 'walker', '2', 'walkers', '2', 'walkers', '4', 'runners', 'n/a'),
(32, '1', 'abomination', '3', 'walkers', '4', 'walkers', '2', 'fatties', 'n/a'),
(33, '0', 'n/a', '1', 'abomination', '2', 'runners', '5', 'walkers', 'n/a'),
(34, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers', 'n/a'),
(35, '1', 'walker', '1', 'runner', '1', 'runner', '1', 'abomination', 'n/a'),
(36, '1', 'fatty', '3', 'walkers', '4', 'walkers', '2', 'runners', 'n/a'),
(37, 'n/a', 'n/a', 'all', 'walkers', 'all', 'walkers', 'all', 'walkers', 'extra turn'),
(38, 'n/a', 'n/a', 'all', 'walkers', 'all', 'walkers', 'all', 'walkers', 'extra turn'),
(39, 'n/a', 'n/a', 'all', 'fatties', 'all', 'fatties', 'all', 'fatties', 'extra turn'),
(40, 'n/a', 'n/a', 'all', 'runners', 'all', 'runners', 'all', 'runners', 'extra turn'),
(41, '1', 'walker', '1', 'walker', '1', 'fatty', '1', 'runner', 'sewer card'),
(42, '1', 'walker', '1', 'runner', '2', 'walkers', '1', 'fatty', 'sewer card');

-- --------------------------------------------------------

--
-- Table structure for table `rue_morgue_items`
--

CREATE TABLE `rue_morgue_items` (
  `card_id` int(11) NOT NULL,
  `equipment_type` varchar(255) NOT NULL,
  `weapon_range` varchar(255) NOT NULL,
  `dice` varchar(255) NOT NULL,
  `accuracy` varchar(255) NOT NULL,
  `damage` varchar(255) NOT NULL,
  `door` varchar(255) NOT NULL,
  `noise` varchar(255) NOT NULL,
  `duel_weapoon` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rue_morgue_items`
--

INSERT INTO `rue_morgue_items` (`card_id`, `equipment_type`, `weapon_range`, `dice`, `accuracy`, `damage`, `door`, `noise`, `duel_weapoon`, `comments`) VALUES
(1, 'Aaahh!(skinner ambush)', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Skinner Ambush! Place on Skinner Walker in the rook you just searched.'),
(2, 'Aaahh!(skinner ambush)', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Skinner Ambush! Place on Skinner Walker in the rook you just searched.'),
(3, 'Aaahh!(skinner ambush)', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Skinner Ambush! Place on Skinner Walker in the rook you just searched.'),
(4, 'Aaahh!(skinner ambush)', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Skinner Ambush! Place on Skinner Walker in the rook you just searched.'),
(5, 'Aaahh!(skinner ambush)', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Skinner Ambush! Place on Skinner Walker in the rook you just searched.'),
(6, 'Aaahh!(skinner ambush)', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Skinner Ambush! Place on Skinner Walker in the rook you just searched.'),
(7, 'AK-47', '1-2', '2', '4+', '2', 'n/a', 'Will produce Noise', 'n/a', 'n/a'),
(8, 'AK-47', '1-2', '2', '4+', '2', 'n/a', 'Will produce Noise', 'n/a', 'n/a'),
(9, 'Bow', '0-1', '2', '3+', '1', 'n/a', 'Will not produce Noise', 'n/a', '+1 Damage for each 6 on the Ranged roll.'),
(10, 'Bow', '0-1', '2', '3+', '1', 'n/a', 'Will not produce Noise', 'n/a', '+1 Damage for each 6 on the Ranged roll.'),
(11, 'Bow', '0-1', '2', '3+', '1', 'n/a', 'Will not produce Noise', 'n/a', '+1 Damage for each 6 on the Ranged roll.'),
(12, 'Bow', '0-1', '2', '3+', '1', 'n/a', 'Will not produce Noise', 'n/a', '+1 Damage for each 6 on the Ranged roll.'),
(13, 'Bulletproof Vest', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Flip side is Damaged Bulletproof Vest'),
(14, 'Bulletproof Vest', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Flip side is Damaged Bulletproof Vest'),
(15, 'Bulletproof Vest', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Flip side is Damaged Bulletproof Vest'),
(16, 'Bulletproof Vest', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Flip side is Damaged Bulletproof Vest'),
(17, 'Bulletproof Vest', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Flip side is Damaged Bulletproof Vest'),
(18, 'Bulletproof Vest', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Flip side is Damaged Bulletproof Vest'),
(19, 'Chainsaw', '0', '5', '5+', '2', 'Can open door, will produce noise.', 'Will produce noise.', 'n/a', 'n/a'),
(20, 'Chainsaw', '0', '5', '5+', '2', 'Can open door, will produce noise.', 'Will produce noise.', 'n/a', 'n/a'),
(21, 'Crowbar', '0', '1', '4+', '1', 'Can open door, will not produce noise.', 'Will not produce noise.', 'n/a', 'n/a'),
(22, 'Crowbar', '0', '1', '4+', '1', 'Can open door, will not produce noise.', 'Will not produce noise.', 'n/a', 'n/a'),
(23, 'Crowbar', '0', '1', '4+', '1', 'Can open door, will not produce noise.', 'Will not produce noise.', 'n/a', 'n/a'),
(24, 'Crowbar', '0', '1', '4+', '1', 'Can open door, will not produce noise.', 'Will not produce noise.', 'n/a', 'n/a'),
(25, 'Fire Axe', '0', '1', '4+', '2', 'Can open door, will produce noise.', 'Will not produce noise.', 'n/a', 'n/a'),
(26, 'Fire Axe', '0', '1', '4+', '2', 'Can open door, will produce noise.', 'Will not produce noise.', 'n/a', 'n/a'),
(27, 'Fire Axe', '0', '1', '4+', '2', 'Can open door, will produce noise.', 'Will not produce noise.', 'n/a', 'n/a'),
(28, 'Fire Axe', '0', '1', '4+', '2', 'Can open door, will produce noise.', 'Will not produce noise.', 'n/a', 'n/a'),
(29, 'Gasoline', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Glass Bottles to get a Molotov.'),
(30, 'Gasoline', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Glass Bottles to get a Molotov.'),
(31, 'Gasoline', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Glass Bottles to get a Molotov.'),
(32, 'Glass Bottles', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Gasoline to get a Molotov.'),
(33, 'Glass Bottles', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Gasoline to get a Molotov.'),
(34, 'Glass Bottles', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Gasoline to get a Molotov.'),
(35, 'Goalie Mask', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Damn it''s cool! Discard Goalie Mask: Prevent 1 Wound inflicted to the wearer.'),
(36, 'Molotov', '0-1', 'special', 'special', 'a lot', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(37, 'Molotov', '0-1', 'special', 'special', 'a lot', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(38, 'Molotov', '0-1', 'special', 'special', 'a lot', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(39, 'Pistol', '0-1', '1', '4+', '1', 'n/a', 'Will produce noise', 'Duel Weapon', 'n/a'),
(40, 'Pistol', '0-1', '1', '4+', '1', 'n/a', 'Will produce noise', 'Duel Weapon', 'n/a'),
(41, 'Pistol', '0-1', '1', '4+', '1', 'n/a', 'Will produce noise', 'Duel Weapon', 'n/a'),
(42, 'Pistol', '0-1', '1', '4+', '1', 'n/a', 'Will produce noise', 'Duel Weapon', 'n/a'),
(43, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Pistol(s), Evil Twins or Rifle. The new result takes place of the previous one.'),
(44, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Pistol(s), Evil Twins or Rifle. The new result takes place of the previous one.'),
(45, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Pistol(s), Evil Twins or Rifle. The new result takes place of the previous one.'),
(46, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Pistol(s), Evil Twins or Rifle. The new result takes place of the previous one.'),
(47, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Sawed-Off(s), Shotgun or Ma''s shotgun. The new result takes place of the previous one.'),
(48, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Sawed-Off(s), Shotgun or Ma''s shotgun. The new result takes place of the previous one.'),
(49, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Sawed-Off(s), Shotgun or Ma''s shotgun. The new result takes place of the previous one.'),
(50, 'Plenty of Ammo', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Sawed-Off(s), Shotgun or Ma''s shotgun. The new result takes place of the previous one.'),
(51, 'Rifle', '1-3', '1', '3+', '1', 'n/a', 'Will produce noise.', 'n/a', 'n/a'),
(52, 'Rifle', '1-3', '1', '3+', '1', 'n/a', 'Will produce noise.', 'n/a', 'n/a'),
(53, 'Sawed Off', '0-1', '2', '3+', '1', 'n/a', 'Will produce noise.', 'Duel Weapon', 'Special! 1 Action to reload. Free in end phase.'),
(54, 'Sawed Off', '0-1', '2', '3+', '1', 'n/a', 'Will produce noise.', 'Duel Weapon', 'Special! 1 Action to reload. Free in end phase.'),
(55, 'Sawed Off', '0-1', '2', '3+', '1', 'n/a', 'Will produce noise.', 'Duel Weapon', 'Special! 1 Action to reload. Free in end phase.'),
(56, 'Sawed Off', '0-1', '2', '3+', '1', 'n/a', 'Will produce noise.', 'Duel Weapon', 'Special! 1 Action to reload. Free in end phase.'),
(57, 'Scope', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Rifle to get a Sniper Rifle. Get Sniper Skill for all ranged actions done with a Sniper Rifle (The Survivor chooses freely the targets).'),
(58, 'Scope', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Rifle to get a Sniper Rifle. Get Sniper Skill for all ranged actions done with a Sniper Rifle (The Survivor chooses freely the targets).'),
(59, 'Shotgun', '0-1', '2', '4+', '2', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(60, 'Shotgun', '0-1', '2', '4+', '2', 'n/a', 'Will produce noise', 'n/a', 'n/a'),
(61, 'Nailbat', '0', '2', '3+', '2', 'n/a', 'n/a', 'n/a', 'n/a'),
(62, 'Double Barrel', '0-2', '2', '3+', '1', 'n/a', 'Will produce noise', 'n/a', 'Special! 1 Action to reload. Free in end Phase.'),
(63, 'Double Barrel', '0-2', '2', '3+', '1', 'n/a', 'Will produce noise', 'n/a', 'Special! 1 Action to reload. Free in end Phase.'),
(64, 'Knife', '0', '1', '4+', '1', 'n/a', 'n/a', 'DuelWeapon', 'If equipped, gain +1 die with the other equipped melee weapon.'),
(65, 'Knife', '0', '1', '4+', '1', 'n/a', 'n/a', 'DuelWeapon', 'If equipped, gain +1 die with the other equipped melee weapon.'),
(66, 'Knife', '0', '1', '4+', '1', 'n/a', 'n/a', 'DuelWeapon', 'If equipped, gain +1 die with the other equipped melee weapon.'),
(67, 'Knife', '0', '1', '4+', '1', 'n/a', 'n/a', 'DuelWeapon', 'If equipped, gain +1 die with the other equipped melee weapon.'),
(68, 'La Guillotine', '0', '4', '4+', '2', 'Can open doors, and will produce noise', 'n/a', 'n/a', 'Skinner Zombies killed with this weapon cannot turn into crawlers.'),
(69, 'Mac-10\r\n', '0-1', '5', '5+', '1', 'n/a', 'Will produce noise.', 'Duel Weapon', '1 Action to reload. Free in end phase.'),
(70, 'Mac-10\r\n', '0-1', '5', '5+', '1', 'n/a', 'Will produce noise.', 'Duel Weapon', '1 Action to reload. Free in end phase.'),
(71, 'Mac-10\r\n', '0-1', '5', '5+', '1', 'n/a', 'Will produce noise.', 'Duel Weapon', '1 Action to reload. Free in end phase.'),
(72, 'MP5\r\n', '0-1', '3', '4+', '1', 'n/a', 'Will produce noise.', 'n/a', 'n/a'),
(73, 'Mac-10\r\n', '0-1', '5', '5+', '1', 'n/a', 'Will produce noise.', 'Duel Weapon', '1 Action to reload. Free in end phase.'),
(74, 'MP5\r\n', '0-1', '3', '4+', '1', 'n/a', 'Will produce noise.', 'n/a', 'n/a'),
(75, 'MP5\r\n', '0-1', '3', '4+', '1', 'n/a', 'Will produce noise.', 'n/a', 'n/a'),
(76, 'MP5\r\n', '0-1', '3', '4+', '1', 'n/a', 'Will produce noise.', 'n/a', 'n/a'),
(77, 'Saber\r\n', '0', '2', '4+', '2', 'n/a', 'n/a', 'n/a', 'n/a'),
(78, 'Saber\r\n', '0', '2', '4+', '2', 'n/a', 'n/a', 'n/a', 'n/a'),
(79, 'Saber\r\n', '0', '2', '4+', '2', 'n/a', 'n/a', 'n/a', 'n/a'),
(80, 'Sword\r\n', '0', '3', '4+', '1', 'n/a', 'n/a', 'n/a', 'n/a'),
(81, 'Sword\r\n', '0', '3', '4+', '1', 'n/a', 'n/a', 'n/a', 'n/a'),
(82, 'Sword\r\n', '0', '3', '4+', '1', 'n/a', 'n/a', 'n/a', 'n/a'),
(83, 'Urban Mace\r\n', '0', '2', '3+', '1', 'n/a', 'n/a', 'n/a', 'n/a'),
(84, 'Urban Mace\r\n', '0', '2', '3+', '1', 'n/a', 'n/a', 'n/a', 'n/a'),
(85, 'Urban Mace\r\n', '0', '2', '3+', '1', 'n/a', 'n/a', 'n/a', 'n/a'),
(86, 'Urban Mace\r\n', '0', '2', '3+', '1', 'n/a', 'n/a', 'n/a', 'n/a');

-- --------------------------------------------------------

--
-- Table structure for table `rue_morgue_zombies`
--

CREATE TABLE `rue_morgue_zombies` (
  `card_id` int(11) NOT NULL,
  `blue_num` varchar(255) NOT NULL,
  `blue_type` varchar(255) NOT NULL,
  `yellow_num` varchar(255) NOT NULL,
  `yellow_type` varchar(255) NOT NULL,
  `orange_num` varchar(255) NOT NULL,
  `orange_type` varchar(255) NOT NULL,
  `red_num` varchar(255) NOT NULL,
  `red_type` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rue_morgue_zombies`
--

INSERT INTO `rue_morgue_zombies` (`card_id`, `blue_num`, `blue_type`, `yellow_num`, `yellow_type`, `orange_num`, `orange_type`, `red_num`, `red_type`, `comments`) VALUES
(1, '0', 'n/a', '2', 'runners', '2', 'runners', '5', 'walkers', 'Skinner Zombies'),
(2, '1', 'walker', '1', 'walker', '6', 'walkers', '7', 'walkers', 'Skinner Zombies'),
(3, '1', 'walker', '1', 'runner', '1', 'fatty', '4', 'runners', 'Skinner \r\nZombies'),
(4, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'runners', 'Skinner Zombies'),
(5, '0', 'n/a', '4', 'walkers', '2', 'fatties', '5', 'walkers', 'Skinner Zombies'),
(6, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers', 'Skinner Zombies'),
(7, '1', 'walker', '2', 'walkers', '2', 'walkers', '4', 'runners', 'Skinner Zombies'),
(8, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'fatties', 'Skinner Zombies'),
(9, '0', 'n/a', '4', 'walkers', '2', 'runners', '5', 'walkers', 'Skinner Zombies'),
(10, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers', 'Skinner Zombies'),
(11, '1', 'walker', '1', 'runner', '1', 'runner', '4', 'fatties', 'Skinner Zombies'),
(12, '1', 'fatty', '3', 'walkers', '4', 'walkers', '2', 'runners', 'Skinner Zombies'),
(13, 'o', 'n/a', '2', 'runners', '2', 'runners', '5', 'walkers', 'Skinner Zombies'),
(14, '1', 'walker', '1', 'walker', '6', 'walkers', '7', 'walkers', 'Skinner Zombies'),
(15, '1', 'walker', '1', 'runner', '1', 'fatty', '4', 'runners', 'Skinner Zombies'),
(16, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'runners', 'Skinner Zombies'),
(17, '0', 'n/a', '4', 'walkers', '2', 'fatties', '5', 'walkers', 'Skinner Zombies'),
(18, '1', 'walker', '1', 'walkre', '3', 'runners', '7', 'walkers', 'Skinner Zombies'),
(19, '1', 'walker', '2', 'wwalkers', '2', 'walkers', '4', 'runners', 'Skinner Zombies'),
(20, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'fatties', 'Skinner Zombies'),
(21, '0', 'n/a', '4', 'walkers', '2', 'runners', '5', 'walkers', 'Skinner Zombies'),
(22, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers', 'Skinner Zombies'),
(23, '1', 'walker', '1', 'runner', '1', 'runner', '4', 'fatties', 'Skinner Zombies'),
(24, '1', 'fatty', '3', 'walkers', '4', 'walkers', '2', 'runners', 'Skinner Zombies'),
(25, '1', 'walker', '2', 'runners', '5', 'walkers', '3', 'fatties', 'Skinner Zombies'),
(26, '1', 'walker', '2', 'walkers', '3', 'runners', '7', 'walkers', 'Skinner Zombies'),
(27, '2', 'walkers', '2', 'walkers', '3', 'walkers', '4', 'fatties', 'Skinner Zombies'),
(28, '2', 'walkers', '1', 'abomination', '2', 'runners', '5', 'walkers', 'Skinner Zombies'),
(29, '1', 'walker', '4', 'walkers', '1', 'abomination', '6', 'walkers', 'Skinner Zombies'),
(30, '1', 'walker', '2', 'walkers', '6', 'walkers', '1', 'abomination', 'Skinner Zombies'),
(31, '1', 'runner', '1', 'runner', '3', 'walkers', '8', 'walkers', 'Skinner Zombies'),
(32, '1', 'fatty', '3', 'walkers', '2', 'fatties', '5', 'walkers', 'Skinner Zombies'),
(33, '1', 'walker', '2', 'runners', '5', 'walkers', '3', 'runners', 'Skinner Zombies'),
(34, '1', 'walker', '2', 'walkers', '3', 'runners', '7', 'walkers', 'Skinner Zombies'),
(35, '1', 'runner', '1', 'fatty', '2', 'walkers', '4', 'runners', 'Skinner Zombies'),
(36, '1', 'runner', '1', 'fatty', '2', 'walkers', '5', 'walkers', 'Skinner Zombies'),
(37, '1', 'abomination', '3', 'walkers', '2', 'runners', '5', 'walkers', 'Skinner Zombies'),
(38, 'n/a', 'n/a', 'all', 'walkers', 'all', 'walkers', 'all ', 'walkers', 'Skinner Zombies\r\nextra turn'),
(39, 'n/a', 'n/a', 'all', 'walkers', 'all', 'walkers', 'all ', 'walkers', 'Skinner Zombies\r\nextra turn'),
(40, 'n/a', 'n/a', 'all', 'fatties', 'all', 'fatties', 'all ', 'fatties', 'Skinner Zombies\r\nextra turn'),
(41, 'n/a', 'n/a', 'all', 'runners', 'all', 'runners', 'all ', 'runners', 'Skinner Zombies\r\nextra turn'),
(42, '1', 'walker', '2', 'walkers', '1', 'fatty', '1', 'runner', 'Skinner Zombies\r\nSewer Card\r\n'),
(43, '1', 'walker', '1', 'runner', '2', 'walkers', '1', 'fatty', 'Skinner Zombies\r\nSewer Card'),
(44, '1', 'crawler', '1', 'crawler', '1', 'crawler', '1', 'crawler', 'blue bed'),
(45, '1', 'crawler', '1', 'crawler', '1', 'crawler', '1', 'crawler', 'blue bed'),
(46, '1', 'crawler', '1', 'crawler', '1', 'crawler', '1', 'crawler', 'blue bed'),
(47, '1', 'crawler', '1', 'crawler', '1', 'crawler', '1', 'crawler', 'green bed'),
(48, '1', 'crawler', '1', 'crawler', '1', 'crawler', '1', 'crawler', 'green bed'),
(49, '1', 'crawler', '1', 'crawler', '1', 'crawler', '1', 'crawler', 'green bed');

-- --------------------------------------------------------

--
-- Table structure for table `season_1_items`
--

CREATE TABLE `season_1_items` (
  `card_id` int(11) NOT NULL,
  `equipment_type` varchar(255) NOT NULL,
  `weapon_range` varchar(255) NOT NULL,
  `dice` varchar(255) NOT NULL,
  `accuracy` varchar(255) NOT NULL,
  `damage` varchar(255) NOT NULL,
  `door` varchar(255) NOT NULL,
  `noise` varchar(255) NOT NULL,
  `duel` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `season_1_items`
--

INSERT INTO `season_1_items` (`card_id`, `equipment_type`, `weapon_range`, `dice`, `accuracy`, `damage`, `door`, `noise`, `duel`, `comments`) VALUES
(1, 'AAAHH!!', '', '', '', '', '', '', '', 'What you thought was a pile of rags is in fact a zombie. Place one walker in the room you just searched.'),
(2, 'AAAHH!!', '', '', '', '', '', '', '', 'What you thought was a pile of rags is in fact a zombie. Place one walker in the room you just searched.'),
(3, 'Bag of Rice', '', '', '', '', '', '', '', ''),
(4, 'Bag of rice', '', '', '', '', '', '', '', ''),
(5, 'Bag of rice', '', '', '', '', '', '', '', ''),
(6, 'Baseball Bat', '0', '1', '3+', '1', 'Cannot open door', 'Will not produce noise', 'Not a duel weapon', ''),
(7, 'Baseball Bat', '0', '1', '3=', '1', 'Cannot open door', 'Will not produce noise', 'Not a duel weapon', ''),
(8, 'Canned Food', '', '', '', '', '', '', '', ''),
(9, 'Canned Food', '', '', '', '', '', '', '', ''),
(10, 'Canned Food', '', '', '', '', '', '', '', ''),
(11, 'Chainsaw', '0', '5', '5+', '2', 'Can open door and will produce noise', 'Will produce noise', 'Not a duel wapon', ''),
(12, 'Chainsaw', '0', '5', '5+', '2', 'Can open door and will produce noise', 'Will produce noise', 'Not a duel weapon', ''),
(13, 'Crowbar', '0', '1', '4+', '1', 'Can open door no noise', 'no noise', 'not a duel weapon', ''),
(14, 'Crowbar', '0', '1', '4+', '1', 'Can open door no noise', 'No noise', 'not a duel weapon', ''),
(15, 'Evil Twins ', '0-1', '2', '4+', '1', 'Cannot open door', 'Will produce noise', 'not a duel weapon', 'Special Evil twins are considered as a single weapon'),
(16, 'Fire Axe', '0', '1', '4+', '2', 'Can open doors, produce noise', 'Will not produce noise', 'not a duel weapon', ''),
(17, 'Fire Axe', '0', '1', '4+', '2', 'Can open doors will make noise', 'Will not produce noise', 'not a duel weapon', ''),
(18, 'Flashlight', '', '', '', '', '', '', '', 'Pick one extra card when searching. This card is effective even in reserve.'),
(19, 'Flashlight', '', '', '', '', '', '', '', 'Pick one extra card when searching. This card is effective even in reserve.'),
(20, 'Gasoline', '', '', '', '', '', '', '', 'Combine with glass bottles to get a Molotov.'),
(21, 'Gasoline', '', '', '', '', '', '', '', 'Combine with glass bottles to get a Molotov.'),
(22, 'Glass Bottles', '', '', '', '', '', '', '', 'Combine with Gasoline to get a Molotov.'),
(23, 'Glass Bottles', '', '', '', '', '', '', '', 'Combine with Gasoline to get a Molotov.'),
(24, 'Goalie Mask', '', '', '', '', '', '', '', 'Damn it''s cool. Discard Goalie Mask: Prevent 1 wound inflicted to the wearer.'),
(25, 'Katana', '0', '2', '4+', '1', 'Cannot open doors', 'Will not produce noise', 'Not a duel weapon', ''),
(26, 'Katana', '0', '2', '4+', '1', 'Cannot open doors', 'Will not produce noise', 'not a duel weapon', ''),
(27, 'Machete', '0', '1', '4+', '2', 'Cannot open doors', 'Will not produce noise', 'Duel weapon', ''),
(28, 'Machete', '0', '1', '4+', '2', 'Cannot open doors', 'Will not produce noise', 'Duel weapon', ''),
(29, 'Machete', '0', '1', '4+', '2', 'Cannot open doors', 'Will not produce noise', 'Duel weapon', ''),
(30, 'Machete', '0', '1', '4+', '2', 'Cannot open doors', 'Will not produce noise', 'Duel weapon', ''),
(31, 'Ma''s Shotgun', 'Blade-0 Gun-0-1', 'Blade-1 Gun-2', '3+', '2', 'Cannot open doors', 'Blade Will not produce noise, Gun will', 'Not a duel weapon', 'Special! 1 action to reload. Free in end phase'),
(32, 'Molotov', '0-1', 'Special', 'Special', 'a lot', 'Cannot open doors', 'Will produce noise', 'Not a duel weapon', ''),
(33, 'Molotov', '0-1', 'Special', 'Special', 'a lot', 'Cannot open doors', 'Will produce noise', 'Not a duel weapon', 'N/A\r\n\r\n'),
(34, 'Pan', '0', '1', '6+', '1', 'Cannot open doors', 'Will not produce noise', 'Not a duel weapon', 'N/A'),
(35, 'Pan', '0', '1', '6+', '1', 'Cannot open doors', 'Will not produce noise', 'Not a duel weapon', 'N/A\r\n'),
(36, 'Pan', '0', '1', '6+', '1', 'Cannot open doors', 'Will not produce noise', 'Not a duel weapon', ''),
(37, 'Pistol', '0-1', '1', '4+', '1', 'Cannot open doors', 'Will produce noise', 'duel weapon', ''),
(38, 'Pistol', '0-1', '1', '4+', '1', 'Cannot open doors', 'Will produce noise', 'duel weapon', ''),
(39, 'Pistol', '0-1', '1', '4+', '1', 'Cannot open doors', 'Will produce noise', 'duel weapon', ''),
(40, 'Plenty of ammo', '', '', '', '', '', '', '', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Pistol(s), Evil Twins or Rifle. The new result takes place of the previous on.'),
(41, 'Plenty of ammo', '', '', '', '', '', '', '', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Pistol(s), Evil Twins or Rifle. The new result takes place of the previous on.'),
(42, 'Plenty of ammo', '', '', '', '', '', '', '', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Pistol(s), Evil Twins or Rifle. The new result takes place of the previous on.'),
(43, 'Plenty of ammo', '', '', '', '', '', '', '', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Sawed-off(s), Shotgun or Ma''s Shotgun. The new result takes place of the previous on.'),
(44, 'Plenty of ammo', '', '', '', '', '', '', '', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Sawed-off(s), Shotgun or Ma''s Shotgun. The new result takes place of the previous on.'),
(45, 'Plenty of ammo', '', '', '', '', '', '', '', 'As long as this card is in your inventory you may re-roll all ranged actions once with the Sawed-off(s), Shotgun or Ma''s Shotgun. The new result takes place of the previous on.'),
(46, 'Rifle', '1-3', '1', '3+', '1', 'Cannot open door', 'Will produce noise', 'Not a duel Weapon', ''),
(47, 'Rifle', '1-3', '1', '3+', '1', 'Cannot open door', 'Will produce noise', 'Not a duel Weapon', ''),
(48, 'Sawed off', '0-1', '2', '3+', '1', 'Cannot open door', 'Will produce noise', 'duel Weapon', 'Special! 1 action to reload. Free in end Phase.'),
(49, 'Sawed off', '0-1', '2', '3+', '1', 'Cannot open door', 'Will produce noise', 'duel Weapon', 'Special! 1 action to reload. Free in end Phase.'),
(50, 'Sawed off', '0-1', '2', '3+', '1', 'Cannot open door', 'Will produce noise', 'duel Weapon', 'Special! 1 action to reload. Free in end Phase.'),
(51, 'Sawed off', '0-1', '2', '3+', '1', 'Cannot open door', 'Will produce noise', 'duel Weapon', 'Special! 1 action to reload. Free in end Phase.'),
(52, 'Scope', '', '', '', '', '', '', '', 'Combine with Rifle to get a Sniper Rifle. Get Sniper Skill for all ranged actions done with a Sniper Rifle (The Survivor chooses freely the targets).'),
(53, 'Scope', '', '', '', '', '', '', '', 'Combine with Rifle to get a Sniper Rifle. Get Sniper Skill for all ranged actions done with a Sniper Rifle (The Survivor chooses freely the targets).'),
(54, 'Shotgun', '0-1', '2', '4+', '2', 'Cannot open doors', 'Will produce noise', 'Not a duel weapon', ''),
(55, 'Shotgun', '0-1', '2', '4+', '2', 'Cannot open doors', 'Will produce noise', 'Not a duel weapon', ''),
(56, 'Sub MG', '0-1', '3', '5+', '1', 'Cannot open doors', 'Will produce noise', ' a duel weapon', ''),
(57, 'Sub MG', '0-1', '3', '5+', '1', 'Cannot open doors', 'Will produce noise', ' a duel weapon', ''),
(58, 'Water', '', '', '', '', '', '', '', ''),
(59, 'Water', '', '', '', '', '', '', '', ''),
(60, 'Water', '', '', '', '', '', '', '', ''),
(61, 'AAAHH!!', '', '', '', '', '', '', '', 'What you thought was a pile of rags is in fact a zombie. Place one walker in the room you just searched.'),
(62, 'AAAHH!!', '', '', '', '', '', '', '', 'What you thought was a pile of rags is in fact a zombie. Place one walker in the room you just searched.');

-- --------------------------------------------------------

--
-- Table structure for table `season_1_zombies`
--

CREATE TABLE `season_1_zombies` (
  `card_num` int(11) NOT NULL,
  `blue_num` varchar(255) NOT NULL,
  `blue_type` varchar(255) NOT NULL,
  `yellow_num` varchar(255) NOT NULL,
  `yellow_type` varchar(255) NOT NULL,
  `orange_num` varchar(255) NOT NULL,
  `orange_type` varchar(255) NOT NULL,
  `red_num` varchar(255) NOT NULL,
  `red_type` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `season_1_zombies`
--

INSERT INTO `season_1_zombies` (`card_num`, `blue_num`, `blue_type`, `yellow_num`, `yellow_type`, `orange_num`, `orange_type`, `red_num`, `red_type`, `comments`) VALUES
(1, '0', 'n/a', '2', 'Runners', '2', 'Runners', '5', 'Walkers', 'n/a'),
(2, '1', 'walker', '1', 'walker', '6', 'Walkers', '7', 'Walkers', 'n/a'),
(3, '1', 'walker', '1', 'runner', '1', 'fatty', '4', 'Walkers', 'n/a'),
(4, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'runners', 'n/a'),
(5, '0', 'n/a', '4', 'walkers', '2', 'fatties', '5', 'runners', 'n/a'),
(6, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers\r\n', 'n/a'),
(7, '1', 'walker', '2', 'walkers', '2', 'walkers', '4', 'runners', 'n/a'),
(8, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'fatties\r\n', 'n/a'),
(9, '0', 'n/a', '4', 'walkers', '2', 'runners', '5', 'walkers', 'n/a'),
(10, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers', 'n/a'),
(11, '1', 'walker', '1', 'runner', '1', 'runner', '4', 'fatties', 'n/a'),
(12, '2', 'runners', '3', 'walkers', '4', 'walkers', '2', 'runners', 'n/a'),
(13, '0', 'n/a', '2', 'runners', '2', 'runners', '5', 'walkers', 'n/a'),
(14, '1', 'walker', '1', 'walker', '6', 'walkers', '7', 'walkers', 'n/a'),
(15, '1', 'walker', '1', 'runner', '1', 'fatty', '4', 'runners', 'n/a'),
(16, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'runners', 'n/a'),
(17, '0', 'n/a', '4', 'walkers', '2', 'fatties', '5', 'walkers', 'n/a'),
(18, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers', 'n/a'),
(19, '1', 'walker', '2', 'walkers', '2', 'walkers', '4', 'runners', 'n/a'),
(20, '2', 'walkers', '3', 'walkers', '4', 'walkers', '2', 'fatties', 'n/a'),
(21, '0', 'n/a', '4', 'walkers', '2', 'runners', '5', 'walkers', 'n/a'),
(22, '1', 'walker', '1', 'walker', '3', 'runners', '7', 'walkers', 'n/a'),
(23, '1', 'walker', '1', 'runner', '1', 'runner', '4', 'fatties', 'n/a'),
(24, '1', 'fatty', '3', 'walkers', '4', 'walkers', '2', 'runners', 'n/a'),
(25, '1', 'walker', '2', 'runners', '5', 'walkers', '3', 'fatties', 'n/a'),
(26, '1', 'walker', '2', 'walkers', '3', 'walkers', '7', 'walkers', 'n/a'),
(27, '2', 'walkers', '2', 'walkers', '3', 'runners', '4', 'fatties', 'n/a'),
(28, '2', 'walkers', '1', 'abomination', '2', 'runners', '5', 'walkers', 'n/a'),
(29, '1', 'walker', '4', 'walkers', '1', 'abomination', '6', 'walkers', 'n/a'),
(30, '1', 'walker', '2', 'walkers', '6', 'walkers', '1', 'abomination', 'n/a'),
(31, '1', 'runner', '1', 'runner', '3', 'walkers', '8', 'walkers', 'n/a'),
(32, '1', 'fatty', '3', 'walkers', '2', 'fatties', '5', 'walkers', 'n/a'),
(33, '1', 'walker', '2', 'runners', '5', 'runners', '3', 'runners', 'n/a'),
(34, '1', 'walker', '2', 'walkers', '3', 'runners', '7', 'walkers', 'n/a'),
(35, '1', 'runner', '1', 'fatty', '3', 'walkers', '4', 'runners', 'n/a'),
(36, '1', 'abomination', '3', 'walkers', '2', 'runners', '5', 'walkers', 'n/a'),
(37, 'n/a', 'n/a', 'all', 'walkers', 'all', 'walkers', 'all', 'walkers', 'extra turn'),
(38, 'n/a', 'n/a', 'all', 'walkers', 'all', 'walkers', 'all', 'walkers', 'extra turn'),
(39, 'n/a', 'n/a', 'all', 'fatties', 'all', 'fatties', 'all', 'fatties', 'extra turn'),
(40, 'n/a', 'n/a', 'all', 'runners', 'all', 'runners', 'all', 'runners', 'extra turn'),
(41, '1', 'walker', '2', 'walkers', '1', 'fatty', '1', 'runner', 'sewer card'),
(42, '1', 'walker', '1', 'rnner', '2', 'walkers', '1', 'fatty', 'sewer card');

-- --------------------------------------------------------

--
-- Table structure for table `toxic_city_mall_zombies`
--

CREATE TABLE `toxic_city_mall_zombies` (
  `card_num` int(11) NOT NULL,
  `blue_num` varchar(255) NOT NULL,
  `blue_type` varchar(255) NOT NULL,
  `yellow_num` varchar(255) NOT NULL,
  `yellow_type` varchar(255) NOT NULL,
  `orange_num` varchar(255) NOT NULL,
  `orange_type` varchar(255) NOT NULL,
  `red_num` varchar(255) NOT NULL,
  `red_type` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toxic_city_mall_zombies`
--

INSERT INTO `toxic_city_mall_zombies` (`card_num`, `blue_num`, `blue_type`, `yellow_num`, `yellow_type`, `orange_num`, `orange_type`, `red_num`, `red_type`, `comments`) VALUES
(1, '1', 'walker', '2', 'runners', '5', 'walkers', '3', 'fatties', 'toxic'),
(2, '1', 'walker', '2', 'walkers', '3', 'runners', '7', 'walkers', 'toxic'),
(3, '2', 'walkers', '2', 'walkers', '3', 'walkers', '4', 'fatties', 'toxic'),
(4, '2', 'walkers', '1', 'abomination', '2', 'runners', '5', 'walkers', 'toxic'),
(5, '1', 'walker', '4', 'walkers', '1', 'abomination', '3', 'runners', 'toxic'),
(6, '1', 'walker', '2', 'walkers', '6', 'walkers', '1', 'abomination', 'toxic'),
(7, '1', 'fatty', '1', 'runner', '3', 'walkers', '8', 'walkers', 'toxic'),
(8, '1', 'runner', '3', 'walkers', '2', 'fatties', '5', 'walkers', 'toxic'),
(9, '1', 'walker', '2', 'fatties', '5', 'walkers', '3', 'runners', 'toxic'),
(10, '1', 'walker', '2', 'walkers', '3', 'fatties', '7', 'walkers', 'toxic'),
(11, '1', 'runner', '1', 'fatty', '3', 'walkers', '4', 'runners', 'toxic'),
(12, '1', 'abomination', '3', 'walkers', '2', 'runners', '5', 'walkers', 'toxic');

-- --------------------------------------------------------

--
-- Table structure for table `toxic_items`
--

CREATE TABLE `toxic_items` (
  `card_id` int(11) NOT NULL,
  `equipment_type` varchar(255) NOT NULL,
  `weapon_range` varchar(255) NOT NULL,
  `dice` varchar(255) NOT NULL,
  `accuracy` varchar(255) NOT NULL,
  `damage` varchar(255) NOT NULL,
  `door` varchar(255) NOT NULL,
  `noise` varchar(255) NOT NULL,
  `duel_weapoon` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toxic_items`
--

INSERT INTO `toxic_items` (`card_id`, `equipment_type`, `weapon_range`, `dice`, `accuracy`, `damage`, `door`, `noise`, `duel_weapoon`, `comments`) VALUES
(1, '44_magnum', '0-1', '1', '4+', '2', 'Cannot open door', 'Does produce noise', 'A Duel weapon', 'N/A'),
(2, '44_magnum', '0-1', '1', '4+', '2', 'Cannot open door', 'Does produce noise', 'A Duel weapon', 'N/A'),
(3, '911 Special', '0-2', '5', '3+', '1', 'Cannot open door', 'Does produce noise', 'Not A Duel weapon', 'Ultrared Weapo'),
(4, 'Assault Rifle', '1-2', '3', '4+', '1', 'Cannot open door', 'Does produce noise', 'Not A Duel weapon', 'N/A'),
(5, 'Assault Rifle', '1-2', '3', '4+', '1', 'Cannot open door', 'Does produce noise', 'Not A Duel weapon', 'N/A'),
(6, 'Betty', '0', '7', '4+', '2', 'Can open door, will produce noise.', 'Does produce noise', 'Not A Duel weapon', 'Ultrared Weapon'),
(7, 'Cookies', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Discard this card: Gain 1 experience point.'),
(8, 'Cookies', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Discard this card: Gain 1 experience point.'),
(9, 'Doug''s Dream', '0-1', '8', '4+', '1', 'n/a', 'Will produce noise', 'n/a', 'Ultrared Weapon'),
(10, 'Flamethrower', '0-1', 'special', 'special', 'a lot', 'n/a', 'Will produce noise', 'n/a', 'Discard a Gasoline card in use/ Kill everything in targeted zone(same effect as a Molotov).'),
(11, 'Hollow-Point rounds', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '+1 damage with .44 Magnum, Pistol, Sniper Rifle and Evil Twins. Effect cannot be stacked with anther Hollow-Point rounds card.'),
(12, 'Hollow-Point rounds', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '+1 damage with .44 Magnum, Pistol, Sniper Rifle and Evil Twins. Effect cannot be stacked with anther Hollow-Point rounds card.'),
(13, 'Jack and Jill', '0-1', '6', '3+', '2', 'n/a', 'Will produce noise', 'n/a', 'Ultrared Weapon. Special! 1 action to reload. Free in end phase.'),
(14, 'Gas Mask', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'The survivor is immune to toxic blood spray.'),
(15, 'Gas Mask', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'The survivor is immune to toxic blood spray.'),
(16, 'Laser Pointer', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Pa''s Gun, Pistol, Sub MG or Evil Twins: +1 to dice roll. One Laser Pointer per weapon. Duel Use: Both weapons must have a Laser Pointer.'),
(17, 'Laser Pointer', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Pa''s Gun, Pistol, Sub MG or Evil Twins: +1 to dice roll. One Laser Pointer per weapon. Duel Use: Both weapons must have a Laser Pointer.'),
(18, 'Laser Pointer', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Pa''s Gun, Pistol, Sub MG or Evil Twins: +1 to dice roll. One Laser Pointer per weapon. Duel Use: Both weapons must have a Laser Pointer.'),
(19, 'Laser Pointer', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Combine with Pa''s Gun, Pistol, Sub MG or Evil Twins: +1 to dice roll. One Laser Pointer per weapon. Duel Use: Both weapons must have a Laser Pointer.'),
(20, 'Ned''s Atomic Flashlight', '0', '5', '4+', '3', 'Can open doors, and will produce noise.', 'Will produce noise.', 'n/a', 'Ultrared Weapon'),
(21, 'Pa''s Gun', '0-1', '1', '4+', '3', 'Cannot open door', 'Does produce noise', 'n/a', 'N/A'),
(22, 'Spare Change', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Damage 2 with Sawed-Off''s.'),
(23, 'Spare Change', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Damage 2 with Sawed-Off''s.'),
(24, 'Sweet Sisters', 'Blade-0\r\nGun-0-1', 'Blade-6\r\nGun-4', '3+', '2', 'Cannot open doors.', 'Blade will not produce noise.\r\nGun Will produce noise.', 'n/a', 'Ultrared Weapon'),
(25, 'Pan', '0', '1', '6+', '1', 'Cannot open doors.', 'Will not produce noise.\r\n', 'n/a', 'n/a'),
(26, 'Pan', '0', '1', '6+', '1', 'Cannot open doors.', 'Will not produce noise.\r\n', 'n/a', 'n/a'),
(27, 'Pan', '0', '1', '6+', '1', 'Cannot open doors.', 'Will not produce noise.\r\n', 'n/a', 'n/a'),
(28, 'Pan', '0', '1', '6+', '1', 'Cannot open doors.', 'Will not produce noise.\r\n', 'n/a', 'n/a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angry_neighbors_companions`
--
ALTER TABLE `angry_neighbors_companions`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `angry_neighbors_items`
--
ALTER TABLE `angry_neighbors_items`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `angry_neighbors_zombies`
--
ALTER TABLE `angry_neighbors_zombies`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `prison_outbreak_items`
--
ALTER TABLE `prison_outbreak_items`
  ADD PRIMARY KEY (`card_num`);

--
-- Indexes for table `prison_outbreak_zombies`
--
ALTER TABLE `prison_outbreak_zombies`
  ADD PRIMARY KEY (`card_num`);

--
-- Indexes for table `rue_morgue_items`
--
ALTER TABLE `rue_morgue_items`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `rue_morgue_zombies`
--
ALTER TABLE `rue_morgue_zombies`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `season_1_items`
--
ALTER TABLE `season_1_items`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `season_1_zombies`
--
ALTER TABLE `season_1_zombies`
  ADD PRIMARY KEY (`card_num`);

--
-- Indexes for table `toxic_city_mall_zombies`
--
ALTER TABLE `toxic_city_mall_zombies`
  ADD PRIMARY KEY (`card_num`);

--
-- Indexes for table `toxic_items`
--
ALTER TABLE `toxic_items`
  ADD PRIMARY KEY (`card_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `angry_neighbors_companions`
--
ALTER TABLE `angry_neighbors_companions`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `angry_neighbors_items`
--
ALTER TABLE `angry_neighbors_items`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `angry_neighbors_zombies`
--
ALTER TABLE `angry_neighbors_zombies`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `prison_outbreak_items`
--
ALTER TABLE `prison_outbreak_items`
  MODIFY `card_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `prison_outbreak_zombies`
--
ALTER TABLE `prison_outbreak_zombies`
  MODIFY `card_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `rue_morgue_items`
--
ALTER TABLE `rue_morgue_items`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `rue_morgue_zombies`
--
ALTER TABLE `rue_morgue_zombies`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `season_1_items`
--
ALTER TABLE `season_1_items`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `season_1_zombies`
--
ALTER TABLE `season_1_zombies`
  MODIFY `card_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `toxic_city_mall_zombies`
--
ALTER TABLE `toxic_city_mall_zombies`
  MODIFY `card_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `toxic_items`
--
ALTER TABLE `toxic_items`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
