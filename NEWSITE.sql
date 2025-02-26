-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         11.6.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para newsite
CREATE DATABASE IF NOT EXISTS `newsite` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `newsite`;

-- Volcando estructura para tabla newsite.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.addon_account: ~23 rows (aproximadamente)
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('bank_savings', 'Savings account', 0),
	('caution', 'caution', 0),
	('society_ambulance', 'EMS', 1),
	('society_banker', 'Bank', 1),
	('society_boatdealer', 'society_boatdealer', 1),
	('society_cardealer', 'Cardealer', 1),
	('society_casino', 'society_casino', 1),
	('society_dealer', 'society_dealer', 1),
	('society_fisherman', 'Fisherman', 1),
	('society_fueler', 'Fueler', 1),
	('society_lumberjack', 'Lumberjack', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_miner', 'Miner', 1),
	('society_off_ambulance', 'EMS - Off duty', 1),
	('society_off_mechanic', 'Mechanic - Off duty', 1),
	('society_off_police', 'LSPD - Off duty', 1),
	('society_planedealer', 'society_planedealer', 1),
	('society_police', 'Police', 1),
	('society_reporter', 'Reporter', 1),
	('society_slaughterer', 'Butcher', 1),
	('society_tailor', 'Tailor', 1),
	('society_taxi', 'Taxi', 1),
	('society_unemployed', 'Unemployed', 1);

-- Volcando estructura para tabla newsite.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.addon_account_data: ~23 rows (aproximadamente)
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1, 'society_cardealer', 0, NULL),
	(2, 'society_police', 0, NULL),
	(3, 'society_ambulance', 0, NULL),
	(4, 'society_mechanic', 0, NULL),
	(5, 'society_taxi', 0, NULL),
	(9, 'society_banker', 0, NULL),
	(10, 'bank_savings', 0, 'char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf'),
	(11, 'caution', 0, 'char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf'),
	(12, 'society_casino', 0, NULL),
	(13, 'society_boatdealer', 0, NULL),
	(14, 'society_dealer', 0, NULL),
	(15, 'society_planedealer', 0, NULL),
	(16, 'society_off_police', 0, NULL),
	(17, 'society_off_ambulance', 0, NULL),
	(18, 'society_off_mechanic', 0, NULL),
	(19, 'society_fueler', 0, NULL),
	(20, 'society_reporter', 0, NULL),
	(21, 'society_slaughterer', 0, NULL),
	(22, 'society_fisherman', 0, NULL),
	(23, 'society_lumberjack', 0, NULL),
	(24, 'society_miner', 0, NULL),
	(25, 'society_tailor', 0, NULL),
	(26, 'society_unemployed', 0, NULL);

-- Volcando estructura para tabla newsite.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.addon_inventory: ~18 rows (aproximadamente)
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('propery', 'Property', 0),
	('society_ambulance', 'EMS', 1),
	('society_banker', 'Banker', 1),
	('society_cardealer', 'Cardealer', 1),
	('society_fisherman', 'Fisherman', 1),
	('society_fueler', 'Fueler', 1),
	('society_lumberjack', 'Lumberjack', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_miner', 'Miner', 1),
	('society_off_ambulance', 'EMS - Off duty', 1),
	('society_off_mechanic', 'Mechanic - Off duty', 1),
	('society_off_police', 'LSPD - Off duty', 1),
	('society_police', 'Police', 1),
	('society_reporter', 'Reporter', 1),
	('society_slaughterer', 'Butcher', 1),
	('society_tailor', 'Tailor', 1),
	('society_taxi', 'Taxi', 1),
	('society_unemployed', 'Unemployed', 1);

-- Volcando estructura para tabla newsite.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.addon_inventory_items: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.banking
CREATE TABLE IF NOT EXISTS `banking` (
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(64) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `balance` int(11) DEFAULT 0,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.banking: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.bank_cards
CREATE TABLE IF NOT EXISTS `bank_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `cardNumber` varchar(50) NOT NULL DEFAULT '0',
  `ownerName` varchar(50) NOT NULL DEFAULT '0',
  `valid` varchar(50) NOT NULL DEFAULT '0',
  `cardType` varchar(50) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT 0,
  `passCode` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.bank_cards: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.bank_history
CREATE TABLE IF NOT EXISTS `bank_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.bank_history: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.bank_process
CREATE TABLE IF NOT EXISTS `bank_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(50) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `created` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.bank_process: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.boombox_songs
CREATE TABLE IF NOT EXISTS `boombox_songs` (
  `identifier` varchar(64) NOT NULL,
  `label` varchar(30) NOT NULL,
  `link` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.boombox_songs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.cardealer_vehicles: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.casino_cache
CREATE TABLE IF NOT EXISTS `casino_cache` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.casino_cache: ~1 rows (aproximadamente)
INSERT INTO `casino_cache` (`ID`, `Settings`) VALUES
	(1, '{"PodiumPriceProps":{"neonColor":[255,0,255],"modAPlate":-1,"engineHealth":1,"modTransmission":2,"fuelLevel":1,"modFender":-1,"modSideSkirt":-1,"modBackWheels":-1,"model":819197656,"modRightFender":-1,"modTrunk":-1,"plateIndex":0,"modTrimB":-1,"modExhaust":0,"modSmokeEnabled":1,"modVanityPlate":-1,"pearlescentColor":111,"modDial":-1,"color1":111,"modDashboard":-1,"bodyHealth":1,"modHood":0,"modPlateHolder":-1,"modXenon":1,"modEngineBlock":-1,"xenonColor":12,"modWindows":-1,"modArchCover":-1,"modHorns":57,"modRearBumper":0,"modStruts":-1,"windowTint":6,"modSpeakers":-1,"modAerials":-1,"modAirFilter":-1,"modBrakes":2,"modFrame":-1,"modTrimA":-1,"modDoorSpeaker":-1,"modArmor":4,"modTurbo":1,"modRoof":2,"modHydrolic":-1,"modTank":-1,"tankHealth":1,"tyreSmokeColor":[1,1,1],"modSpoilers":3,"wheels":5,"modEngine":3,"modFrontBumper":1,"modLivery":1,"extras":{"1":false},"modOrnaments":-1,"modSuspension":-1,"modGrille":-1,"modFrontWheels":-1,"modShifterLeavers":-1,"modSeats":-1,"color2":111,"podiumName":"SHEAVA","dirtLevel":1,"neonEnabled":[false,false,false,false],"modSteeringWheel":-1,"wheelColor":111}}');

-- Volcando estructura para tabla newsite.casino_players
CREATE TABLE IF NOT EXISTS `casino_players` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(128) NOT NULL,
  `properties` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.casino_players: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.categories_mixer
CREATE TABLE IF NOT EXISTS `categories_mixer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` text NOT NULL,
  `category_name` varchar(256) DEFAULT 'list',
  `added_by` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.categories_mixer: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.categories_vehicles
CREATE TABLE IF NOT EXISTS `categories_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  `order` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `job` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.categories_vehicles: ~15 rows (aproximadamente)
INSERT INTO `categories_vehicles` (`id`, `name`, `label`, `order`, `model`, `job`) VALUES
	(1, 'boats', 'boats', 1, 'marquis', 'boatdealer'),
	(2, 'compacts', 'Compacts', 1, 'rhapsody', 'dealer'),
	(3, 'coupes', 'Coupés', 2, 'windsor', 'dealer'),
	(4, 'heli', 'Helicopters', 2, 'swift', 'planedealer'),
	(5, 'marines', 'marines', 2, 'submersible2', 'boatdealer'),
	(6, 'motorcycles', 'Motos', 3, 'bati2', 'dealer'),
	(7, 'muscle', 'Muscle', 4, 'dominator3', 'dealer'),
	(8, 'offroad', 'Off Road', 5, 'blazer4', 'dealer'),
	(9, 'sedans', 'Sedans', 6, 'ingot', 'dealer'),
	(10, 'small_plane', 'Small planes', 1, 'vestra', 'planedealer'),
	(11, 'sports', 'Sports', 7, 'banshee', 'dealer'),
	(12, 'sportsclassics', 'Sports Classics', 8, 'jb700', 'dealer'),
	(13, 'super', 'Super', 9, 'prototipo', 'dealer'),
	(14, 'suvs', 'SUVs', 10, 'dubsta2', 'dealer'),
	(15, 'vans', 'Vans', 11, 'speedo2', 'dealer');

-- Volcando estructura para tabla newsite.crypto
CREATE TABLE IF NOT EXISTS `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'btc',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL,
  PRIMARY KEY (`crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.crypto: ~0 rows (aproximadamente)
INSERT INTO `crypto` (`crypto`, `worth`, `history`) VALUES
	('btc', 1021, '[{"PreviousWorth":1011,"NewWorth":1011},{"PreviousWorth":1011,"NewWorth":1011},{"PreviousWorth":1011,"NewWorth":1011},{"NewWorth":1021,"PreviousWorth":1011}]');

-- Volcando estructura para tabla newsite.crypto_history
CREATE TABLE IF NOT EXISTS `crypto_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worth` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.crypto_history: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.crypto_transactions
CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `citizenid` (`citizenid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.crypto_transactions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.darkchat_messages
CREATE TABLE IF NOT EXISTS `darkchat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(50) DEFAULT '',
  `messages` text DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.darkchat_messages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.datastore: ~23 rows (aproximadamente)
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Property', 0),
	('propery', 'Property', 0),
	('society_ambulance', 'EMS', 1),
	('society_banker', 'Banker', 1),
	('society_cardealer', 'Cardealer', 1),
	('society_fisherman', 'Fisherman', 1),
	('society_fueler', 'Fueler', 1),
	('society_lumberjack', 'Lumberjack', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_miner', 'Miner', 1),
	('society_off_ambulance', 'EMS - Off duty', 1),
	('society_off_mechanic', 'Mechanic - Off duty', 1),
	('society_off_police', 'LSPD - Off duty', 1),
	('society_police', 'Police', 1),
	('society_reporter', 'Reporter', 1),
	('society_slaughterer', 'Butcher', 1),
	('society_tailor', 'Tailor', 1),
	('society_taxi', 'Taxi', 1),
	('society_unemployed', 'Unemployed', 1),
	('user_ears', 'Ears', 0),
	('user_glasses', 'Glasses', 0),
	('user_helmet', 'Helmet', 0),
	('user_mask', 'Mask', 0);

-- Volcando estructura para tabla newsite.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.datastore_data: ~25 rows (aproximadamente)
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1, 'society_police', NULL, '{}'),
	(2, 'society_ambulance', NULL, '{}'),
	(3, 'society_mechanic', NULL, '{}'),
	(4, 'society_taxi', NULL, '{}'),
	(5, 'property', NULL, '{}'),
	(6, 'property', NULL, '{}'),
	(7, 'property', 'char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', '{}'),
	(8, 'user_ears', 'char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', '{}'),
	(9, 'user_glasses', 'char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', '{}'),
	(10, 'user_helmet', 'char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', '{}'),
	(11, 'user_mask', 'char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', '{}'),
	(12, 'propery', 'char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', '{}'),
	(13, 'society_off_police', NULL, '{}'),
	(14, 'society_off_ambulance', NULL, '{}'),
	(15, 'society_off_mechanic', NULL, '{}'),
	(16, 'society_slaughterer', NULL, '{}'),
	(17, 'society_reporter', NULL, '{}'),
	(18, 'society_fueler', NULL, '{}'),
	(19, 'society_miner', NULL, '{}'),
	(20, 'society_banker', NULL, '{}'),
	(21, 'society_lumberjack', NULL, '{}'),
	(22, 'society_fisherman', NULL, '{}'),
	(23, 'society_unemployed', NULL, '{}'),
	(24, 'society_tailor', NULL, '{}'),
	(25, 'society_cardealer', NULL, '{}');

-- Volcando estructura para tabla newsite.discord_accounts
CREATE TABLE IF NOT EXISTS `discord_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(80) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.discord_accounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.dispatch_callsigns
CREATE TABLE IF NOT EXISTS `dispatch_callsigns` (
  `identifier` varchar(46) NOT NULL,
  `callsign` varchar(50) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.dispatch_callsigns: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.dispatch_cameras
CREATE TABLE IF NOT EXISTS `dispatch_cameras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `model` varchar(50) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.dispatch_cameras: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.dispatch_jail_database
CREATE TABLE IF NOT EXISTS `dispatch_jail_database` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_identifier` varchar(255) NOT NULL,
  `jail_reason` varchar(255) NOT NULL,
  `jail_time` int(11) NOT NULL,
  `jail_start` timestamp NOT NULL DEFAULT current_timestamp(),
  `jail_end` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.dispatch_jail_database: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.dispatch_mdt_bolos
CREATE TABLE IF NOT EXISTS `dispatch_mdt_bolos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatorName` varchar(50) DEFAULT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  `title` varchar(50) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `officers_involved` text DEFAULT NULL,
  `createdAt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.dispatch_mdt_bolos: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.dispatch_mdt_convictions
CREATE TABLE IF NOT EXISTS `dispatch_mdt_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `charges` text DEFAULT NULL,
  `warrant` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.dispatch_mdt_convictions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.dispatch_mdt_data
CREATE TABLE IF NOT EXISTS `dispatch_mdt_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `tags` text DEFAULT '',
  `jobtype` varchar(25) DEFAULT 'police',
  `pfp` text DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.dispatch_mdt_data: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.dispatch_mdt_incidents
CREATE TABLE IF NOT EXISTS `dispatch_mdt_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatorName` varchar(50) DEFAULT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  `title` varchar(50) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `citizens_involved` text DEFAULT NULL,
  `criminals_involved` text DEFAULT NULL,
  `officers_involved` text DEFAULT NULL,
  `createdAt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.dispatch_mdt_incidents: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.dispatch_players_database
CREATE TABLE IF NOT EXISTS `dispatch_players_database` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext NOT NULL,
  `datatype` varchar(1200) NOT NULL DEFAULT 'undefinedData',
  `dataobj` longtext NOT NULL,
  `createdAt` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.dispatch_players_database: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.dispatch_vehicle_database
CREATE TABLE IF NOT EXISTS `dispatch_vehicle_database` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datatype` varchar(50) DEFAULT NULL,
  `by` varchar(50) DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `data` longtext DEFAULT NULL,
  `createdAt` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.dispatch_vehicle_database: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.doorscreator_buildings
CREATE TABLE IF NOT EXISTS `doorscreator_buildings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `default_state` tinyint(4) NOT NULL DEFAULT 0,
  `allowed_jobs` longtext DEFAULT NULL,
  `allowed_gangs` longtext DEFAULT NULL,
  `required_item` varchar(50) DEFAULT NULL,
  `required_item_remove_on_use` tinyint(4) NOT NULL DEFAULT 0,
  `requires_job_and_item` int(11) NOT NULL DEFAULT 0,
  `required_code` varchar(50) DEFAULT NULL,
  `auto_closure_seconds` int(11) DEFAULT NULL,
  `requires_identifier` int(11) NOT NULL DEFAULT 0,
  `allowed_identifiers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.doorscreator_buildings: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.doorscreator_doors
CREATE TABLE IF NOT EXISTS `doorscreator_doors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `doors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `default_state` tinyint(4) NOT NULL DEFAULT 0,
  `icon_coords` longtext NOT NULL,
  `max_distance` int(11) NOT NULL,
  `allowed_jobs` longtext DEFAULT NULL,
  `allowed_gangs` longtext DEFAULT NULL,
  `required_item` varchar(50) DEFAULT NULL,
  `required_item_remove_on_use` tinyint(4) NOT NULL DEFAULT 0,
  `requires_job_and_item` int(11) NOT NULL DEFAULT 0,
  `required_code` varchar(50) DEFAULT NULL,
  `auto_closure_seconds` int(11) DEFAULT NULL,
  `parent_building` int(11) DEFAULT NULL,
  `is_sliding` int(11) NOT NULL DEFAULT 0,
  `requires_identifier` int(11) NOT NULL DEFAULT 0,
  `allowed_identifiers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `vault` longtext DEFAULT NULL,
  `can_be_lockpicked` int(11) NOT NULL DEFAULT 1,
  `alert_police_on_lockpick` int(11) NOT NULL DEFAULT 0,
  `shop_id` int(11) DEFAULT NULL,
  `display_icon` tinyint(4) NOT NULL DEFAULT 1,
  `sounds_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.doorscreator_doors: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.drunk_stats
CREATE TABLE IF NOT EXISTS `drunk_stats` (
  `identifier` varchar(128) NOT NULL,
  `drunk_level` float NOT NULL DEFAULT 0,
  `headache_level` float NOT NULL DEFAULT 0,
  `toughness` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.drunk_stats: ~0 rows (aproximadamente)
INSERT INTO `drunk_stats` (`identifier`, `drunk_level`, `headache_level`, `toughness`) VALUES
	('char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', 0, 0, 2);

-- Volcando estructura para tabla newsite.facetime_call_history
CREATE TABLE IF NOT EXISTS `facetime_call_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caller` varchar(50) NOT NULL DEFAULT '0',
  `calledId` varchar(50) DEFAULT NULL,
  `time` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.facetime_call_history: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.fine_types: ~52 rows (aproximadamente)
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Misuse of a horn', 30, 0),
	(2, 'Illegally Crossing a continuous Line', 40, 0),
	(3, 'Driving on the wrong side of the road', 250, 0),
	(4, 'Illegal U-Turn', 250, 0),
	(5, 'Illegally Driving Off-road', 170, 0),
	(6, 'Refusing a Lawful Command', 30, 0),
	(7, 'Illegally Stopping a Vehicle', 150, 0),
	(8, 'Illegal Parking', 70, 0),
	(9, 'Failing to Yield to the right', 70, 0),
	(10, 'Failure to comply with Vehicle Information', 90, 0),
	(11, 'Failing to stop at a Stop Sign ', 105, 0),
	(12, 'Failing to stop at a Red Light', 130, 0),
	(13, 'Illegal Passing', 100, 0),
	(14, 'Driving an illegal Vehicle', 100, 0),
	(15, 'Driving without a License', 1500, 0),
	(16, 'Hit and Run', 800, 0),
	(17, 'Exceeding Speeds Over < 5 mph', 90, 0),
	(18, 'Exceeding Speeds Over 5-15 mph', 120, 0),
	(19, 'Exceeding Speeds Over 15-30 mph', 180, 0),
	(20, 'Exceeding Speeds Over > 30 mph', 300, 0),
	(21, 'Impeding traffic flow', 110, 1),
	(22, 'Public Intoxication', 90, 1),
	(23, 'Disorderly conduct', 90, 1),
	(24, 'Obstruction of Justice', 130, 1),
	(25, 'Insults towards Civilans', 75, 1),
	(26, 'Disrespecting of an LEO', 110, 1),
	(27, 'Verbal Threat towards a Civilan', 90, 1),
	(28, 'Verbal Threat towards an LEO', 150, 1),
	(29, 'Providing False Information', 250, 1),
	(30, 'Attempt of Corruption', 1500, 1),
	(31, 'Brandishing a weapon in city Limits', 120, 2),
	(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
	(33, 'No Firearms License', 600, 2),
	(34, 'Possession of an Illegal Weapon', 700, 2),
	(35, 'Possession of Burglary Tools', 300, 2),
	(36, 'Grand Theft Auto', 1800, 2),
	(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
	(38, 'Frabrication of an Illegal Substance', 1500, 2),
	(39, 'Possession of an Illegal Substance ', 650, 2),
	(40, 'Kidnapping of a Civilan', 1500, 2),
	(41, 'Kidnapping of an LEO', 2000, 2),
	(42, 'Robbery', 650, 2),
	(43, 'Armed Robbery of a Store', 650, 2),
	(44, 'Armed Robbery of a Bank', 1500, 2),
	(45, 'Assault on a Civilian', 2000, 3),
	(46, 'Assault of an LEO', 2500, 3),
	(47, 'Attempt of Murder of a Civilian', 3000, 3),
	(48, 'Attempt of Murder of an LEO', 5000, 3),
	(49, 'Murder of a Civilian', 10000, 3),
	(50, 'Murder of an LEO', 30000, 3),
	(51, 'Involuntary manslaughter', 1800, 3),
	(52, 'Fraud', 2000, 2);

-- Volcando estructura para tabla newsite.fuel_stations
CREATE TABLE IF NOT EXISTS `fuel_stations` (
  `id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT 100,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla newsite.fuel_stations: ~1 rows (aproximadamente)
INSERT INTO `fuel_stations` (`id`, `level`) VALUES
	(26, 42);

-- Volcando estructura para tabla newsite.gangs
CREATE TABLE IF NOT EXISTS `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `color` varchar(16) NOT NULL,
  `group` varchar(24) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `vehicles` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `gangs_ui_tag` (`tag`),
  UNIQUE KEY `gangs_ui_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.gangs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.gang_grades
CREATE TABLE IF NOT EXISTS `gang_grades` (
  `id` int(11) NOT NULL,
  `gang_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.gang_grades: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.gang_zones
CREATE TABLE IF NOT EXISTS `gang_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `gang_id` int(11) NOT NULL,
  `loyalty` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `gang_zones_fk_id` (`gang_id`),
  CONSTRAINT `gang_zones_fk_id` FOREIGN KEY (`gang_id`) REFERENCES `gangs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.gang_zones: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.harmony_cooldown
CREATE TABLE IF NOT EXISTS `harmony_cooldown` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(25) NOT NULL,
  `metadata` text NOT NULL,
  PRIMARY KEY (`serial`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.harmony_cooldown: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.history_vehicle_bought
CREATE TABLE IF NOT EXISTS `history_vehicle_bought` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(11) DEFAULT NULL,
  `plate` varchar(64) NOT NULL,
  `job` varchar(64) NOT NULL,
  `identifier` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.history_vehicle_bought: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.houselocations
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `defaultPrice` int(11) DEFAULT NULL,
  `tier` tinyint(2) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  `garageShell` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `mlo` text DEFAULT NULL,
  `ipl` text DEFAULT NULL,
  `console` int(11) DEFAULT NULL,
  `board` text DEFAULT NULL,
  `for_sale` int(11) DEFAULT 1,
  `extra_imgs` text DEFAULT NULL,
  `description` text NOT NULL DEFAULT '',
  `creatorJob` varchar(50) DEFAULT NULL,
  `blip` text DEFAULT NULL,
  `upgrades` text DEFAULT NULL,
  `apartmentCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla newsite.houselocations: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.house_objects
CREATE TABLE IF NOT EXISTS `house_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) NOT NULL DEFAULT '0',
  `coords` text NOT NULL,
  `house` varchar(80) DEFAULT NULL,
  `construction` varchar(50) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla newsite.house_objects: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.house_plants
CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB AUTO_INCREMENT=7123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.house_plants: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.house_rents
CREATE TABLE IF NOT EXISTS `house_rents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL DEFAULT '',
  `identifier` varchar(80) NOT NULL DEFAULT '',
  `payed` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.house_rents: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.instagram_accounts
CREATE TABLE IF NOT EXISTS `instagram_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `owner` varchar(120) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `avatar` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.instagram_accounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.instagram_follow
CREATE TABLE IF NOT EXISTS `instagram_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follower` int(11) NOT NULL DEFAULT 0,
  `following` int(11) NOT NULL DEFAULT 0,
  `updatedDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.instagram_follow: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.instagram_messages
CREATE TABLE IF NOT EXISTS `instagram_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL DEFAULT 0,
  `receiver` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `messages` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.instagram_messages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.instagram_notifications
CREATE TABLE IF NOT EXISTS `instagram_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT 0,
  `targetId` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.instagram_notifications: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.instagram_posts
CREATE TABLE IF NOT EXISTS `instagram_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userId` int(11) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `content` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` tinytext DEFAULT NULL,
  `likes` text DEFAULT NULL,
  `filter` tinytext DEFAULT NULL,
  `commentCount` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.instagram_posts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.instagram_post_comments
CREATE TABLE IF NOT EXISTS `instagram_post_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `postId` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `postId` (`postId`)
) ENGINE=InnoDB AUTO_INCREMENT=4405 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla newsite.instagram_post_comments: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.instagram_stories
CREATE TABLE IF NOT EXISTS `instagram_stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT 0,
  `updatedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `data` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla newsite.instagram_stories: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.items: ~33 rows (aproximadamente)
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('alive_chicken', 'Living chicken', 1, 0, 1),
	('bandage', 'Bandage', 2, 0, 1),
	('blowpipe', 'Blowtorch', 2, 0, 1),
	('bread', 'Bread', 1, 0, 1),
	('cannabis', 'Cannabis', 3, 0, 1),
	('carokit', 'Body Kit', 3, 0, 1),
	('carotool', 'Tools', 2, 0, 1),
	('clothe', 'Cloth', 1, 0, 1),
	('copper', 'Copper', 1, 0, 1),
	('cutted_wood', 'Cut wood', 1, 0, 1),
	('diamond', 'Diamond', 1, 0, 1),
	('essence', 'Gas', 1, 0, 1),
	('fabric', 'Fabric', 1, 0, 1),
	('fish', 'Fish', 1, 0, 1),
	('fixkit', 'Repair Kit', 3, 0, 1),
	('fixtool', 'Repair Tools', 2, 0, 1),
	('gazbottle', 'Gas Bottle', 2, 0, 1),
	('gold', 'Gold', 1, 0, 1),
	('iron', 'Iron', 1, 0, 1),
	('marijuana', 'Marijuana', 2, 0, 1),
	('medikit', 'Medikit', 2, 0, 1),
	('packaged_chicken', 'Chicken fillet', 1, 0, 1),
	('packaged_plank', 'Packaged wood', 1, 0, 1),
	('petrol', 'Oil', 1, 0, 1),
	('petrol_raffin', 'Processed oil', 1, 0, 1),
	('phone', 'Phone', 1, 0, 1),
	('radio', 'Radio', 1, 0, 1),
	('slaughtered_chicken', 'Slaughtered chicken', 1, 0, 1),
	('spray', 'Spray', 1, 1, 1),
	('spray_remover', 'Spray Remover', 1, 1, 1),
	('stone', 'Stone', 1, 0, 1),
	('washed_stone', 'Washed stone', 1, 0, 1),
	('water', 'Water', 1, 0, 1),
	('wood', 'Wood', 1, 0, 1),
	('wool', 'Wool', 1, 0, 1);

-- Volcando estructura para tabla newsite.job
CREATE TABLE IF NOT EXISTS `job` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.job: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  `enable_billing` int(1) DEFAULT 0,
  `can_rob` int(1) DEFAULT 0,
  `can_handcuff` int(1) DEFAULT 0,
  `can_lockpick_cars` int(1) DEFAULT 0,
  `can_wash_vehicles` int(1) DEFAULT 0,
  `can_repair_vehicles` int(1) DEFAULT 0,
  `can_impound_vehicles` int(1) DEFAULT 0,
  `can_check_identity` int(1) DEFAULT 0,
  `can_check_vehicle_owner` int(1) DEFAULT 0,
  `can_check_driving_license` int(1) DEFAULT 0,
  `can_check_weapon_license` int(1) DEFAULT 0,
  `can_heal` int(1) DEFAULT 0,
  `can_revive` int(1) DEFAULT 0,
  `actions_menu_enabled` int(1) DEFAULT 1,
  `placeable_objects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.jobs: ~17 rows (aproximadamente)
INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `enable_billing`, `can_rob`, `can_handcuff`, `can_lockpick_cars`, `can_wash_vehicles`, `can_repair_vehicles`, `can_impound_vehicles`, `can_check_identity`, `can_check_vehicle_owner`, `can_check_driving_license`, `can_check_weapon_license`, `can_heal`, `can_revive`, `actions_menu_enabled`, `placeable_objects`) VALUES
	('ambulance', 'EMS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('banker', 'Banker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('cardealer', 'Cardealer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('fisherman', 'Fisherman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('fueler', 'Fueler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('lumberjack', 'Lumberjack', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('mechanic', 'Mechanic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('miner', 'Miner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('off_ambulance', 'EMS - Off duty', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('off_mechanic', 'Mechanic - Off duty', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('off_police', 'LSPD - Off duty', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('police', 'LSPD', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('reporter', 'Reporter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('slaughterer', 'Butcher', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('tailor', 'Tailor', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('taxi', 'Taxi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
	('unemployed', 'Unemployed', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Volcando estructura para tabla newsite.jobs_armories
CREATE TABLE IF NOT EXISTS `jobs_armories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weapon` varchar(50) NOT NULL,
  `components` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ammo` int(10) unsigned NOT NULL,
  `tint` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `identifier` varchar(80) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`,`marker_id`,`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.jobs_armories: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.jobs_data
CREATE TABLE IF NOT EXISTS `jobs_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `coords` varchar(300) NOT NULL DEFAULT '',
  `grades_type` varchar(20) DEFAULT NULL,
  `specific_grades` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `min_grade` smallint(6) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `blip_id` int(11) DEFAULT NULL,
  `blip_color` int(11) DEFAULT 0,
  `blip_scale` float DEFAULT 1,
  `label` varchar(50) DEFAULT NULL,
  `marker_type` int(11) DEFAULT 1,
  `marker_scale_x` float DEFAULT 1.5,
  `marker_scale_y` float DEFAULT 1.5,
  `marker_scale_z` float DEFAULT 0.5,
  `marker_color_red` int(3) DEFAULT 150,
  `marker_color_green` int(3) DEFAULT 150,
  `marker_color_blue` int(3) DEFAULT 0,
  `marker_color_alpha` int(3) DEFAULT 50,
  `ped` varchar(50) DEFAULT NULL,
  `ped_heading` float DEFAULT NULL,
  `object` varchar(50) DEFAULT NULL,
  `object_heading` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.jobs_data: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.jobs_garages
CREATE TABLE IF NOT EXISTS `jobs_garages` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(100) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `vehicle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `vehicle_props` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`) USING BTREE,
  KEY `identifier` (`identifier`,`marker_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.jobs_garages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.jobs_shops
CREATE TABLE IF NOT EXISTS `jobs_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marker_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_type` varchar(50) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `marker_id` (`marker_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.jobs_shops: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.jobs_wardrobes
CREATE TABLE IF NOT EXISTS `jobs_wardrobes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(100) NOT NULL,
  `label` varchar(50) NOT NULL,
  `outfit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.jobs_wardrobes: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.job_grades: ~50 rows (aproximadamente)
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
	(2, 'police', 0, 'recruit', 'Recruit', 20, '{}', '{}'),
	(3, 'police', 1, 'officer', 'Officer', 40, '{}', '{}'),
	(4, 'police', 2, 'sergeant', 'Sergeant', 60, '{}', '{}'),
	(5, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
	(6, 'police', 4, 'boss', 'Captain', 100, '{}', '{}'),
	(11, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
	(12, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
	(13, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
	(14, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
	(15, 'lumberjack', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(16, 'fisherman', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(17, 'fueler', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(18, 'reporter', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(19, 'tailor', 0, 'employee', 'Employee', 0, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(20, 'miner', 0, 'employee', 'Employee', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{}'),
	(21, 'slaughterer', 0, 'employee', 'Employee', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}'),
	(22, 'ambulance', 0, 'ambulance', 'Jr. EMT', 20, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(23, 'ambulance', 1, 'doctor', 'EMT', 40, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(24, 'ambulance', 2, 'chief_doctor', 'Sr. EMT', 60, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(25, 'ambulance', 3, 'boss', 'EMT Supervisor', 80, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(26, 'mechanic', 0, 'recrue', 'Recruit', 12, '{}', '{}'),
	(27, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
	(28, 'mechanic', 2, 'experimente', 'Experienced', 36, '{}', '{}'),
	(29, 'mechanic', 3, 'chief', 'Leader', 48, '{}', '{}'),
	(30, 'mechanic', 4, 'boss', 'Boss', 0, '{}', '{}'),
	(31, 'taxi', 0, 'recrue', 'Recruit', 12, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(32, 'taxi', 1, 'novice', 'Cabby', 24, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(33, 'taxi', 2, 'experimente', 'Experienced', 36, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(34, 'taxi', 3, 'uber', 'Uber Cabby', 48, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(35, 'taxi', 4, 'boss', 'Lead Cabby', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(36, 'banker', 0, 'advisor', 'Consultant', 10, '{}', '{}'),
	(37, 'banker', 1, 'banker', 'Banker', 20, '{}', '{}'),
	(38, 'banker', 2, 'business_banker', 'Investment banker', 30, '{}', '{}'),
	(39, 'banker', 3, 'trader', 'Broker', 40, '{}', '{}'),
	(40, 'banker', 4, 'boss', 'Boss', 0, '{}', '{}'),
	(41, 'off_police', 1, 'off_officer', 'Officer', 0, '{}', '{}'),
	(42, 'off_police', 2, 'off_sergeant', 'Sergeant', 0, '{}', '{}'),
	(43, 'off_police', 3, 'off_lieutenant', 'Lieutenant', 0, '{}', '{}'),
	(44, 'off_police', 4, 'off_boss', 'Captain', 0, '{}', '{}'),
	(45, 'off_police', 0, 'off_recruit', 'Recruit', 0, '{}', '{}'),
	(46, 'off_ambulance', 1, 'off_doctor', 'EMT', 0, '{}', '{}'),
	(47, 'off_ambulance', 2, 'off_chief_doctor', 'Sr. EMT', 0, '{}', '{}'),
	(48, 'off_ambulance', 3, 'off_boss', 'EMT Supervisor', 0, '{}', '{}'),
	(49, 'off_ambulance', 0, 'off_ambulance', 'Jr. EMT', 0, '{}', '{}'),
	(50, 'off_mechanic', 1, 'off_novice', 'Novice', 0, '{}', '{}'),
	(51, 'off_mechanic', 2, 'off_experimente', 'Experienced', 0, '{}', '{}'),
	(52, 'off_mechanic', 3, 'off_chief', 'Leader', 0, '{}', '{}'),
	(53, 'off_mechanic', 4, 'off_boss', 'Boss', 0, '{}', '{}'),
	(54, 'off_mechanic', 0, 'off_recrue', 'Recruit', 0, '{}', '{}');

-- Volcando estructura para tabla newsite.keep_bags_retrieval
CREATE TABLE IF NOT EXISTS `keep_bags_retrieval` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `expire_at` datetime NOT NULL,
  `metadata` text DEFAULT NULL,
  `claimed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `characterId` (`characterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.keep_bags_retrieval: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lapraces
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.lapraces: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_coke_labs
CREATE TABLE IF NOT EXISTS `lation_coke_labs` (
  `owner` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `style` text DEFAULT NULL,
  `security` text DEFAULT NULL,
  `passcode` text DEFAULT NULL,
  `locked` varchar(10) NOT NULL DEFAULT 'unlocked',
  `upgrade` longtext DEFAULT NULL,
  `users` longtext DEFAULT NULL,
  `stations` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_coke_labs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_coke_plants
CREATE TABLE IF NOT EXISTS `lation_coke_plants` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT NULL,
  `y` decimal(10,6) DEFAULT NULL,
  `z` decimal(10,6) DEFAULT NULL,
  `hunger` decimal(5,2) DEFAULT NULL,
  `thirst` decimal(5,2) DEFAULT NULL,
  `yield` decimal(5,2) DEFAULT NULL,
  `growth` decimal(5,2) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `bucket` int(11) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_coke_plants: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_coke_players
CREATE TABLE IF NOT EXISTS `lation_coke_players` (
  `identifier` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `exp` int(11) NOT NULL DEFAULT 0,
  `gas_inputs` longtext DEFAULT NULL,
  `cement_inputs` longtext DEFAULT NULL,
  `inside` int(11) NOT NULL DEFAULT 0,
  `leaves` int(11) NOT NULL DEFAULT 0,
  `grown` int(11) NOT NULL DEFAULT 0,
  `cement` int(11) NOT NULL DEFAULT 0,
  `bricks` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_coke_players: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_coke_tables
CREATE TABLE IF NOT EXISTS `lation_coke_tables` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT NULL,
  `y` decimal(10,6) DEFAULT NULL,
  `z` decimal(10,6) DEFAULT NULL,
  `heading` decimal(10,6) DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL DEFAULT 0,
  `purity` int(11) NOT NULL DEFAULT 0,
  `bucket` int(11) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_coke_tables: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_detecting
CREATE TABLE IF NOT EXISTS `lation_detecting` (
  `identifier` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `items_found` int(11) NOT NULL,
  `money_earned` int(11) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_detecting: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_meth_players
CREATE TABLE IF NOT EXISTS `lation_meth_players` (
  `identifier` varchar(255) NOT NULL,
  `ammonia` int(11) DEFAULT NULL,
  `iodine` int(11) DEFAULT NULL,
  `acetone` int(11) DEFAULT NULL,
  `inside` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `exp` int(11) NOT NULL DEFAULT 0,
  `total_produced` int(11) NOT NULL DEFAULT 0,
  `total_supply_runs` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_meth_players: ~0 rows (aproximadamente)
INSERT INTO `lation_meth_players` (`identifier`, `ammonia`, `iodine`, `acetone`, `inside`, `level`, `exp`, `total_produced`, `total_supply_runs`) VALUES
	('char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', 35, 15, 23, 0, 1, 0, 0, 0);

-- Volcando estructura para tabla newsite.lation_meth_tables
CREATE TABLE IF NOT EXISTS `lation_meth_tables` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT NULL,
  `y` decimal(10,6) DEFAULT NULL,
  `z` decimal(10,6) DEFAULT NULL,
  `heading` decimal(10,6) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `heating` tinyint(1) DEFAULT NULL,
  `cooling` tinyint(1) DEFAULT NULL,
  `remaining` int(11) DEFAULT NULL,
  `purity` int(11) DEFAULT NULL,
  `bucket` int(11) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_meth_tables: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_meth_warehouses
CREATE TABLE IF NOT EXISTS `lation_meth_warehouses` (
  `owner` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `style` text DEFAULT NULL,
  `security` text DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `locked` varchar(10) NOT NULL DEFAULT 'unlocked',
  `remaining` int(11) NOT NULL DEFAULT 0,
  `upgrade` text DEFAULT NULL,
  `ammonia` int(11) NOT NULL DEFAULT 0,
  `iodine` int(11) NOT NULL DEFAULT 0,
  `acetone` int(11) NOT NULL DEFAULT 0,
  `stage` int(11) NOT NULL DEFAULT 0,
  `purity` int(11) DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `efficiency` int(11) NOT NULL DEFAULT 0,
  `inputs` longtext DEFAULT NULL,
  `users` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_meth_warehouses: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_mining
CREATE TABLE IF NOT EXISTS `lation_mining` (
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `exp` int(11) NOT NULL DEFAULT 0,
  `mined` int(11) NOT NULL DEFAULT 0,
  `smelted` int(11) NOT NULL DEFAULT 0,
  `earned` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_mining: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_selling
CREATE TABLE IF NOT EXISTS `lation_selling` (
  `identifier` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `rep` int(11) NOT NULL DEFAULT 0,
  `total_sales` int(11) NOT NULL DEFAULT 0,
  `total_earned` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_selling: ~0 rows (aproximadamente)
INSERT INTO `lation_selling` (`identifier`, `level`, `rep`, `total_sales`, `total_earned`) VALUES
	('char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', 1, 0, 0, 0);

-- Volcando estructura para tabla newsite.lation_weed
CREATE TABLE IF NOT EXISTS `lation_weed` (
  `plant_id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT NULL,
  `y` decimal(10,6) DEFAULT NULL,
  `z` decimal(10,6) DEFAULT NULL,
  `strain` varchar(255) DEFAULT NULL,
  `hunger` decimal(5,2) DEFAULT NULL,
  `thirst` decimal(5,2) DEFAULT NULL,
  `quality` decimal(5,2) DEFAULT NULL,
  `growth` decimal(5,2) DEFAULT NULL,
  `props` text NOT NULL,
  `stage` int(11) DEFAULT NULL,
  `bucket` int(11) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`plant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_weed: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_weed_players
CREATE TABLE IF NOT EXISTS `lation_weed_players` (
  `identifier` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `exp` int(11) NOT NULL DEFAULT 0,
  `plants_searched` int(11) NOT NULL DEFAULT 0,
  `plants_grown` int(11) NOT NULL DEFAULT 0,
  `bud_produced` int(11) NOT NULL DEFAULT 0,
  `joints_rolled` int(11) NOT NULL DEFAULT 0,
  `weed_bagged` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_weed_players: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lation_weed_tables
CREATE TABLE IF NOT EXISTS `lation_weed_tables` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT NULL,
  `y` decimal(10,6) DEFAULT NULL,
  `z` decimal(10,6) DEFAULT NULL,
  `heading` decimal(10,6) DEFAULT NULL,
  `bucket` int(11) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lation_weed_tables: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.licenses: ~19 rows (aproximadamente)
INSERT INTO `licenses` (`type`, `label`) VALUES
	('boat', 'Boat License'),
	('dmv', 'Driving Permit'),
	('drive', 'Drivers License'),
	('drive_a', 'A'),
	('drive_b', 'B'),
	('drive_bike', 'Motorcycle License'),
	('drive_c', 'C'),
	('drive_truck', 'Commercial Drivers License'),
	('practical_boat', 'Practical Boat'),
	('practical_helicopter', 'Practical Helicopter'),
	('practical_plane', 'Practical Plane'),
	('theory_a', 'Theory A'),
	('theory_b', 'Theory B'),
	('theory_boat', 'Theory Boat'),
	('theory_c', 'Theory C'),
	('theory_helicopter', 'Theory Helicopter'),
	('theory_plane', 'Theory Plane'),
	('weapon', 'Weapon License'),
	('weed_processing', 'Weed Processing License');

-- Volcando estructura para tabla newsite.lunar_fishing
CREATE TABLE IF NOT EXISTS `lunar_fishing` (
  `user_identifier` varchar(50) NOT NULL,
  `xp` float NOT NULL,
  PRIMARY KEY (`user_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.lunar_fishing: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lunar_illegalbusiness
CREATE TABLE IF NOT EXISTS `lunar_illegalbusiness` (
  `identifier` varchar(46) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  UNIQUE KEY `identifier` (`identifier`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.lunar_illegalbusiness: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lunar_multijob
CREATE TABLE IF NOT EXISTS `lunar_multijob` (
  `identifier` varchar(60) NOT NULL,
  `name` varchar(30) NOT NULL,
  `grade` tinyint(4) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `week` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`,`name`),
  KEY `idx_identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.lunar_multijob: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lunar_multijob_accounts
CREATE TABLE IF NOT EXISTS `lunar_multijob_accounts` (
  `name` varchar(50) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.lunar_multijob_accounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lunar_multijob_bonus
CREATE TABLE IF NOT EXISTS `lunar_multijob_bonus` (
  `identifier` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla newsite.lunar_multijob_bonus: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lunar_multijob_duty
CREATE TABLE IF NOT EXISTS `lunar_multijob_duty` (
  `identifier` varchar(60) NOT NULL,
  `on_duty` tinyint(1) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla newsite.lunar_multijob_duty: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.lunar_multijob_goals
CREATE TABLE IF NOT EXISTS `lunar_multijob_goals` (
  `name` varchar(60) NOT NULL,
  `grade` tinyint(4) NOT NULL,
  `goal` tinyint(4) NOT NULL,
  UNIQUE KEY `Index` (`name`,`grade`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla newsite.lunar_multijob_goals: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.mail_accounts
CREATE TABLE IF NOT EXISTS `mail_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT '0',
  `mail` varchar(50) DEFAULT '0',
  `name` varchar(50) DEFAULT '0',
  `password` varchar(50) DEFAULT '',
  `phone` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.mail_accounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.market_accounts
CREATE TABLE IF NOT EXISTS `market_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `avatar` text NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.market_accounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.market_markets
CREATE TABLE IF NOT EXISTS `market_markets` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `job` text NOT NULL DEFAULT '[]',
  `ratings` text NOT NULL DEFAULT '[]',
  `coords` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.market_markets: ~8 rows (aproximadamente)
INSERT INTO `market_markets` (`id`, `name`, `description`, `job`, `ratings`, `coords`) VALUES
	(1, 'Los Santos Police Department', 'The city police, always willing to help you, let us know if you have any problems in Los Santos.', '["police","sheriff"]', '[]', '{"x":452.1199951171875,"y":-980.5499877929688,"z":30.69000053405761}'),
	(2, 'Pillbox Medical Center', 'If you need a doctor, contact the Los Santos Emergency Center!', '["ambulance"]', '[]', '{"x":335.1199951171875,"y":-584.5499877929688,"z":43.68999862670898}'),
	(3, 'Bean Machine', 'The best coffee shop in the city now with home delivery, order your coffee, cappuccino, with milk, or whatever you want, call us now!', '["beanmachine","deliver"]', '[]', '{"x":280.79998779296877,"y":-963.982421875,"z":29.4146728515625}'),
	(4, 'Jamaican Roast', 'Home delivery, in-store sales, try the best cappuccino in all of Los Santos, Toasts, Meals, Grill, come or order your order!', '["jamaican","deliver"]', '[]', '{"x":273.4681396484375,"y":-832.971435546875,"z":29.3978271484375}'),
	(5, 'Pizza This', 'The best pizzeria in Los Santos, since 1988 we have brought the best Italian pizza to your palate, choose your flavor and contact us!', '["pizzajob","deliver"]', '[]', '{"x":287.73626708984377,"y":-963.96923828125,"z":29.4146728515625}'),
	(6, 'Bennys Original Motor Works', 'The best mechanic company in the city allows you to request home orders or direct contact through Marketplace, get in touch if you need a repair, we are here!', '["mechanic"]', '[]', '{"x":-206.00439453125,"y":-1310.2813720703126,"z":31.2850341796875}'),
	(7, 'Premium Deluxe Motorsport', 'Order your new car, ask for prices and even vehicle delivery, what are you waiting for to receive your new sports carNULL', '["dealership"]', '[]', '{"x":-45.36263656616211,"y":-1107.3099365234376,"z":26.4322509765625}'),
	(8, 'Vanilla Unicorn', 'Come have a beer, a drink or even enjoy the best women/men in the entire city, place your alcohol order or reserve your favorite woman/man!', '["unicornjob"]', '[]', '{"x":128.7956085205078,"y":-1297.265869140625,"z":29.14501953125}');

-- Volcando estructura para tabla newsite.market_messages
CREATE TABLE IF NOT EXISTS `market_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `messages` text NOT NULL,
  `isMarket` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.market_messages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.missions_creator_played_missions
CREATE TABLE IF NOT EXISTS `missions_creator_played_missions` (
  `identifier` varchar(46) NOT NULL,
  `template_id` int(11) NOT NULL,
  `last_played` int(11) NOT NULL,
  `completed` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`identifier`,`template_id`) USING BTREE,
  KEY `fk_mc_played_missions_mc_templates` (`template_id`) USING BTREE,
  CONSTRAINT `fk_mc_played_missions_mc_templates` FOREIGN KEY (`template_id`) REFERENCES `missions_creator_templates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.missions_creator_played_missions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.missions_creator_statistics
CREATE TABLE IF NOT EXISTS `missions_creator_statistics` (
  `template_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0,
  `success_count` int(11) NOT NULL DEFAULT 0,
  `fail_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`template_id`) USING BTREE,
  UNIQUE KEY `template_id` (`template_id`) USING BTREE,
  CONSTRAINT `fk_mc_statistics_mc_templates` FOREIGN KEY (`template_id`) REFERENCES `missions_creator_templates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Keeps track of the missions statistics (likes, dislikes, success/fail count)';

-- Volcando datos para la tabla newsite.missions_creator_statistics: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.missions_creator_templates
CREATE TABLE IF NOT EXISTS `missions_creator_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `description` longtext DEFAULT NULL,
  `options` longtext NOT NULL,
  `stages` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.missions_creator_templates: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.multicharacter_slots
CREATE TABLE IF NOT EXISTS `multicharacter_slots` (
  `identifier` varchar(60) NOT NULL,
  `slots` int(11) NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE,
  KEY `slots` (`slots`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.multicharacter_slots: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `plate` varchar(250) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'vehicle',
  `garage` varchar(200) DEFAULT 'OUT',
  `impound_data` text DEFAULT '',
  `favorite` int(3) NOT NULL DEFAULT 0,
  `stored` tinyint(4) DEFAULT 0,
  `jobVehicle` varchar(50) DEFAULT '',
  `jobGarage` varchar(50) DEFAULT '',
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  `job` varchar(20) NOT NULL DEFAULT 'civ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Volcando datos para la tabla newsite.owned_vehicles: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.ox_doorlock
CREATE TABLE IF NOT EXISTS `ox_doorlock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.ox_doorlock: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.ox_inventory
CREATE TABLE IF NOT EXISTS `ox_inventory` (
  `owner` varchar(60) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  UNIQUE KEY `owner` (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.ox_inventory: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.phone_app_store
CREATE TABLE IF NOT EXISTS `phone_app_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application` varchar(50) DEFAULT '0',
  `ratings` text DEFAULT '[]',
  `downloads` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.phone_app_store: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.phone_backups
CREATE TABLE IF NOT EXISTS `phone_backups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  `owner` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.phone_backups: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.phone_bills
CREATE TABLE IF NOT EXISTS `phone_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(46) NOT NULL DEFAULT '',
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `sender` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.phone_bills: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.phone_blocked_phones
CREATE TABLE IF NOT EXISTS `phone_blocked_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniqueId` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.phone_blocked_phones: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.phone_chatrooms
CREATE TABLE IF NOT EXISTS `phone_chatrooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_code` varchar(10) NOT NULL,
  `room_name` varchar(15) NOT NULL,
  `room_owner_id` int(11) DEFAULT NULL,
  `room_owner_name` varchar(50) DEFAULT NULL,
  `room_members` text DEFAULT '{}',
  `room_pin` varchar(50) DEFAULT NULL,
  `unpaid_balance` decimal(10,2) DEFAULT 0.00,
  `is_masked` tinyint(1) DEFAULT 0,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `room_code` (`room_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.phone_chatrooms: ~3 rows (aproximadamente)
INSERT INTO `phone_chatrooms` (`id`, `room_code`, `room_name`, `room_owner_id`, `room_owner_name`, `room_members`, `room_pin`, `unpaid_balance`, `is_masked`, `is_pinned`, `created`) VALUES
	(1, '411', '411', -1, 'Government', '{}', NULL, 0.00, 0, 1, '2025-02-22 21:11:10'),
	(2, 'lounge', 'The Lounge', -1, 'Government', '{}', NULL, 0.00, 0, 1, '2025-02-22 21:11:10'),
	(3, 'events', 'Events', -1, 'Government', '{}', NULL, 0.00, 0, 1, '2025-02-22 21:11:10');

-- Volcando estructura para tabla newsite.phone_chatroom_messages
CREATE TABLE IF NOT EXISTS `phone_chatroom_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(10) unsigned DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.phone_chatroom_messages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.phone_favorite_contacts
CREATE TABLE IF NOT EXISTS `phone_favorite_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.phone_favorite_contacts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.phone_gallery
CREATE TABLE IF NOT EXISTS `phone_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `content` text NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `data` longtext NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `filter` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.phone_gallery: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL DEFAULT '',
  `number` varchar(50) DEFAULT NULL,
  `messages` longtext DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `unreaded` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.phone_messages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.phone_metadata
CREATE TABLE IF NOT EXISTS `phone_metadata` (
  `identifier` varchar(90) NOT NULL DEFAULT '',
  `metadata` longtext DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT '',
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.phone_metadata: ~0 rows (aproximadamente)
INSERT INTO `phone_metadata` (`identifier`, `metadata`, `phoneNumber`) VALUES
	('char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', '{"metadata":{"battery":99.97699999999989,"faceid":true,"blur_disabled":true,"lockscreen":true,"apps":[{"label":"Phone","hideInSettingsNotifications":true,"blockedJobs":[],"slot":"0:0","image":"img/apps/phone.png","category":"Social","notificationSound":"","job":false,"app":"phone"},{"label":"Messages","job":false,"blockedJobs":[],"app":"messages","category":"Social","image":"img/apps/messages.png","slot":"0:1"},{"job":false,"slot":"0:2","blockedJobs":[],"app":"settings","label":"Settings","category":"Utilities","image":"img/apps/settings.png","blockBadge":true},{"label":"Camera","job":false,"blockedJobs":[],"app":"camera","category":"Creativity","image":"img/apps/camera.png","slot":"0:3"},{"label":"Contacts","job":false,"blockedJobs":[],"app":"contacts","category":"Social","image":"img/apps/contacts.png","slot":"1:0"},{"label":"Mail","job":false,"blockedJobs":[],"app":"mail","category":"Productivity & Finance","image":"img/apps/mail.png","slot":"1:1"},{"label":"Weather","job":false,"blockedJobs":[],"app":"weather","category":"Information & Reading","image":"img/apps/weather.png","slot":"1:2"},{"label":"Calendar","job":false,"blockedJobs":[],"app":"calendar","category":"Productivity & Finance","image":"img/apps/calendar.png","slot":"1:3"},{"label":"Reminders","job":false,"blockedJobs":[],"app":"reminder","category":"Productivity & Finance","image":"img/apps/reminders.png","slot":"1:4"},{"label":"Gallery","job":false,"blockedJobs":[],"app":"gallery","category":"Creativity","image":"img/apps/gallery.png","slot":"1:5"},{"label":"Health","job":false,"blockedJobs":[],"app":"health","category":"Creativity","image":"img/apps/health.png","slot":"1:6"},{"job":false,"slot":"1:7","blockedJobs":[],"app":"notes","hideInSettingsNotifications":true,"category":"Productivity & Finance","image":"img/apps/notes.png","label":"Notes"},{"job":false,"slot":"1:8","blockedJobs":[],"app":"calculator","hideInSettingsNotifications":true,"category":"Utilities","image":"img/apps/calculator.png","label":"Calculator"},{"label":"App Store","job":false,"blockedJobs":[],"app":"store","category":"Utilities","image":"img/apps/store.png","slot":"1:9"},{"label":"Stock","job":false,"blockedJobs":[],"app":"crypto","category":"Productivity & Finance","image":"img/apps/stock.png","slot":"1:10"},{"label":"Clock","job":false,"blockedJobs":[],"app":"clock","category":"Utilities","image":"img/apps/clock.png","slot":"1:11"},{"label":"Home","job":false,"blockedJobs":[],"app":"houses","category":"Utilities","image":"img/apps/houses.png","slot":"1:12"},{"label":"News","job":false,"blockedJobs":[],"app":"weazel","category":"Other","image":"img/apps/news.png","slot":"1:13"},{"app":"map","label":"Maps","blockedJobs":[],"category":"Utilities","image":"img/apps/maps.png","slot":"1:14"},{"label":"Safari","game":{"css":{"border":"none","top":"0","height":"100%","position":"absolute","width":"100%"},"name":"safari","rotate":false,"iframe":"https://yep.com"},"blockedJobs":[],"app":"safari","category":"Utilities","image":"img/apps/safari.png","slot":"1:15"},{"label":"FaceTime","job":false,"blockedJobs":[],"app":"facetime","category":"Social","image":"img/apps/facetime.png","slot":"1:16"}],"steps":0,"Pincode":"1111","first_screen_showed":true},"charinfo":{"firstname":"Yuri","phone":"376507729","lastname":"Orlov"},"uniqueId":810912545,"owneridentifier":"char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf","phoneNumber":"376507729"}', '376507729');

-- Volcando estructura para tabla newsite.phone_notifies
CREATE TABLE IF NOT EXISTS `phone_notifies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) DEFAULT NULL,
  `msg_content` text DEFAULT NULL,
  `msg_head` varchar(50) NOT NULL DEFAULT '',
  `app_name` text DEFAULT NULL,
  `msg_time` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.phone_notifies: ~0 rows (aproximadamente)
INSERT INTO `phone_notifies` (`id`, `phone`, `msg_content`, `msg_head`, `app_name`, `msg_time`) VALUES
	(1, '376507729', 'La contraseña fue cambiada exitosamente', 'Ajustes', 'settings', '2025-02-22 20:13:37');

-- Volcando estructura para tabla newsite.phone_recipes
CREATE TABLE IF NOT EXISTS `phone_recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.phone_recipes: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.phone_yellowpages
CREATE TABLE IF NOT EXISTS `phone_yellowpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `created` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.phone_yellowpages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.player_contacts
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  `display` varchar(50) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `pp` text DEFAULT NULL,
  `isBlocked` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.player_contacts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.player_garages
CREATE TABLE IF NOT EXISTS `player_garages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `coords` text DEFAULT NULL,
  `shell` text DEFAULT NULL,
  `type` varchar(50) DEFAULT 'vehicle',
  `holders` text DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `gang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.player_garages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.player_houses
CREATE TABLE IF NOT EXISTS `player_houses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  `decorateStash` text DEFAULT NULL,
  `charge` text DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL,
  `creditPrice` varchar(50) DEFAULT NULL,
  `console` text DEFAULT NULL,
  `decorateCoords` text DEFAULT NULL,
  `rented` int(11) DEFAULT NULL,
  `rentPrice` int(11) DEFAULT NULL,
  `rentable` int(11) DEFAULT NULL,
  `purchasable` int(11) DEFAULT NULL,
  `vaultCodes` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `house` (`house`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `citizenid` (`citizenid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.player_houses: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.player_mails
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taker` varchar(46) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  `medias` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `identifier` (`taker`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.player_mails: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.player_outfits
CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.player_outfits: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.player_outfit_codes
CREATE TABLE IF NOT EXISTS `player_outfit_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_player_outfit_codes_player_outfits` (`outfitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.player_outfit_codes: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.playlist_mixer
CREATE TABLE IF NOT EXISTS `playlist_mixer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `name` text NOT NULL,
  `real_name` text NOT NULL,
  `time` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `mixer_identifier` text NOT NULL,
  `added_by` text NOT NULL,
  `category` varchar(256) NOT NULL DEFAULT 'null',
  `que` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.playlist_mixer: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.protections
CREATE TABLE IF NOT EXISTS `protections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(64) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.protections: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.qs_billing
CREATE TABLE IF NOT EXISTS `qs_billing` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `receiver_identifier` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `author_identifier` varchar(255) NOT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `society` varchar(255) NOT NULL,
  `society_name` varchar(255) DEFAULT 'none',
  `item` varchar(255) NOT NULL,
  `invoice_value` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `notes` varchar(255) DEFAULT ' ',
  `sent_date` varchar(255) NOT NULL,
  `limit_pay_date` varchar(255) DEFAULT NULL,
  `fees_amount` int(50) DEFAULT 0,
  `paid_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.qs_billing: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.radiocar_music
CREATE TABLE IF NOT EXISTS `radiocar_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  `url` varchar(256) NOT NULL,
  `plate` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.radiocar_music: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.radiocar_owned
CREATE TABLE IF NOT EXISTS `radiocar_owned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spz` varchar(32) NOT NULL,
  `style` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.radiocar_owned: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.radiocar_playlist
CREATE TABLE IF NOT EXISTS `radiocar_playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playlist` text NOT NULL,
  `plate` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.radiocar_playlist: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_gunrange_leaderboard
CREATE TABLE IF NOT EXISTS `rcore_gunrange_leaderboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` text NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `weapon_name` varchar(50) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.rcore_gunrange_leaderboard: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_prison
CREATE TABLE IF NOT EXISTS `rcore_prison` (
  `prisoner_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solitary_time` datetime DEFAULT NULL,
  `jail_time` datetime DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`prisoner_id`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_prison: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_prison_accounts
CREATE TABLE IF NOT EXISTS `rcore_prison_accounts` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` bigint(20) DEFAULT 0,
  `giftstate` tinyint(4) DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`account_id`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_prison_accounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_prison_accounts_log
CREATE TABLE IF NOT EXISTS `rcore_prison_accounts_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_prison_accounts_log: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_prison_coms
CREATE TABLE IF NOT EXISTS `rcore_prison_coms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoneId` bigint(10) DEFAULT NULL,
  `state` enum('IDLE','SWEEPING','RETURN') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `perollAmount` int(10) DEFAULT 0,
  `perollTarget` int(10) DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `zoneId` (`zoneId`) USING BTREE,
  CONSTRAINT `FK_Q27L` FOREIGN KEY (`zoneId`) REFERENCES `rcore_prison_coms_sessions` (`zoneId`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_prison_coms: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_prison_coms_sessions
CREATE TABLE IF NOT EXISTS `rcore_prison_coms_sessions` (
  `zoneId` bigint(10) NOT NULL,
  `verticesTarget` bigint(10) NOT NULL,
  `verticesDone` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`zoneId`),
  KEY `zoneId_index` (`zoneId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_prison_coms_sessions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_prison_logs
CREATE TABLE IF NOT EXISTS `rcore_prison_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charId` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `officer_name` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizen_name` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_prison_logs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_prison_stash
CREATE TABLE IF NOT EXISTS `rcore_prison_stash` (
  `owner` varchar(255) NOT NULL,
  `stash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_prison_stash: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_reports
CREATE TABLE IF NOT EXISTS `rcore_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` text NOT NULL,
  `title` text NOT NULL,
  `state` varchar(20) NOT NULL,
  `tag` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `in_resolve_at` datetime DEFAULT NULL,
  `in_resolve_by` text DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `resolved_by` text DEFAULT NULL,
  `players_in_area` text NOT NULL,
  `chat_room` text NOT NULL,
  `logger` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_reports: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_reports_admin_chat
CREATE TABLE IF NOT EXISTS `rcore_reports_admin_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` text NOT NULL,
  `parentMessageId` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_reports_admin_chat: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_reports_tags
CREATE TABLE IF NOT EXISTS `rcore_reports_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_reports_tags: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_tattoos
CREATE TABLE IF NOT EXISTS `rcore_tattoos` (
  `identifier` varchar(100) NOT NULL,
  `tattoos` longtext DEFAULT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `rcore_tattoos_identifier_uindex` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.rcore_tattoos: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rcore_tattoos_business
CREATE TABLE IF NOT EXISTS `rcore_tattoos_business` (
  `name` varchar(60) NOT NULL,
  `margin` int(11) DEFAULT 20,
  `money` int(11) DEFAULT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.rcore_tattoos_business: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.rented_vehicles: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.rivalries
CREATE TABLE IF NOT EXISTS `rivalries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(32) NOT NULL,
  `attacking_gang_id` int(11) NOT NULL,
  `defending_gang_id` int(11) NOT NULL,
  `funds` int(11) NOT NULL,
  `attacker_sold` int(11) NOT NULL DEFAULT 0,
  `defender_sold` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ends_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rivalries_i_attacking_gang_id` (`attacking_gang_id`),
  KEY `rivalries_i_defending_gang_id` (`defending_gang_id`),
  CONSTRAINT `rivalries_fk_attacking_gang_id` FOREIGN KEY (`attacking_gang_id`) REFERENCES `gangs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `rivalries_fk_defending_gang_id` FOREIGN KEY (`defending_gang_id`) REFERENCES `gangs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.rivalries: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.robberies_creator_cargo_robberies
CREATE TABLE IF NOT EXISTS `robberies_creator_cargo_robberies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `blip_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.robberies_creator_cargo_robberies: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.robberies_creator_heists
CREATE TABLE IF NOT EXISTS `robberies_creator_heists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `minimum_police` int(11) NOT NULL DEFAULT 0,
  `timeout_minutes` int(11) NOT NULL DEFAULT 120,
  `minutes_before_reset` int(11) NOT NULL DEFAULT 60,
  `time_limit_minutes` int(11) NOT NULL DEFAULT 0,
  `stages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.robberies_creator_heists: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.robberies_creator_plannings
CREATE TABLE IF NOT EXISTS `robberies_creator_plannings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cargo_robbery_id` int(11) DEFAULT NULL,
  `minimum_police` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `cargo_robbery_id` (`cargo_robbery_id`) USING BTREE,
  CONSTRAINT `cargo_robbery_id` FOREIGN KEY (`cargo_robbery_id`) REFERENCES `robberies_creator_cargo_robberies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.robberies_creator_plannings: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.society_moneywash: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.sprays
CREATE TABLE IF NOT EXISTS `sprays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(64) DEFAULT NULL,
  `x` float(8,4) NOT NULL,
  `y` float(8,4) NOT NULL,
  `z` float(8,4) NOT NULL,
  `origX` float(8,4) NOT NULL,
  `origY` float(8,4) NOT NULL,
  `origZ` float(8,4) NOT NULL,
  `rx` float(8,4) NOT NULL,
  `ry` float(8,4) NOT NULL,
  `rz` float(8,4) NOT NULL,
  `scale` float(8,4) NOT NULL,
  `text` varchar(32) DEFAULT NULL,
  `image` varchar(64) DEFAULT NULL,
  `imageDict` varchar(64) DEFAULT NULL,
  `font` varchar(32) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `interior` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.sprays: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.tiktok_users
CREATE TABLE IF NOT EXISTS `tiktok_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `pp` text DEFAULT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `bio` text NOT NULL DEFAULT '',
  `birthday` varchar(50) NOT NULL DEFAULT '0',
  `videos` text NOT NULL DEFAULT '{}',
  `followers` text NOT NULL,
  `following` text NOT NULL,
  `liked` text NOT NULL,
  `verified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.tiktok_users: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.tiktok_videos
CREATE TABLE IF NOT EXISTS `tiktok_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.tiktok_videos: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.tinder_accounts
CREATE TABLE IF NOT EXISTS `tinder_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `owner` varchar(70) NOT NULL DEFAULT '0',
  `photos` text DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `interested` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.tinder_accounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.tinder_messages
CREATE TABLE IF NOT EXISTS `tinder_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unread` int(11) NOT NULL DEFAULT 0,
  `sender` int(11) NOT NULL DEFAULT 0,
  `receiver` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.tinder_messages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.tinder_swipers
CREATE TABLE IF NOT EXISTS `tinder_swipers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT 0,
  `targetId` int(11) NOT NULL DEFAULT 0,
  `liked` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.tinder_swipers: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.tuning_upgrades
CREATE TABLE IF NOT EXISTS `tuning_upgrades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `cost` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `zone_name` (`zone`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.tuning_upgrades: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(46) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `phone` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `background` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.twitter_accounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.twitter_follow
CREATE TABLE IF NOT EXISTS `twitter_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follower` int(11) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `updatedDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.twitter_follow: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.twitter_messages
CREATE TABLE IF NOT EXISTS `twitter_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `messages` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.twitter_messages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.twitter_notifications
CREATE TABLE IF NOT EXISTS `twitter_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT 0,
  `targetUserId` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.twitter_notifications: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.twitter_retweets
CREATE TABLE IF NOT EXISTS `twitter_retweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT 0,
  `tweetId` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.twitter_retweets: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `text` text DEFAULT NULL,
  `media` text DEFAULT NULL,
  `likes` text DEFAULT '[]',
  `mentions` text DEFAULT '[]',
  `comments` text DEFAULT '[]',
  `retweets` text DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.twitter_tweets: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.uber_rider_last_transactions
CREATE TABLE IF NOT EXISTS `uber_rider_last_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `target` varchar(80) DEFAULT NULL,
  `targetName` varchar(50) DEFAULT NULL,
  `plate` varchar(80) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.uber_rider_last_transactions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(60) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `gang` varchar(20) DEFAULT 'none',
  `gang_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `position` longtext DEFAULT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) NOT NULL DEFAULT 0,
  `deaths` int(255) NOT NULL DEFAULT 0,
  `ishandcuffed` tinyint(1) NOT NULL DEFAULT 0,
  `injail` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `pincode` int(11) DEFAULT NULL,
  `shell_garage` text DEFAULT '',
  `cryptocurrency` longtext NOT NULL DEFAULT '',
  `crypto_wallet` int(11) DEFAULT 0,
  `inside` varchar(50) DEFAULT '',
  `phone_number` varchar(25) DEFAULT NULL,
  `ganginfo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ganginfo`)),
  `blood_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.users: ~0 rows (aproximadamente)
INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `gang`, `gang_grade`, `loadout`, `metadata`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `status`, `is_dead`, `deaths`, `ishandcuffed`, `injail`, `id`, `disabled`, `last_property`, `created_at`, `last_seen`, `pincode`, `shell_garage`, `cryptocurrency`, `crypto_wallet`, `inside`, `phone_number`, `ganginfo`, `blood_type`) VALUES
	('char1:8aea1ea045b56ecd98d63f338874d06d36bcabdf', '{"black_money":0,"bank":57800,"money":9652}', 'admin', '[{"slot":1,"name":"bread","count":3},{"slot":2,"name":"jacket4","count":1},{"metadata":{"registered":"Yuri Orlov","serial":"363143FPQ230957","ammo":12,"durability":100,"components":[]},"slot":3,"name":"WEAPON_PISTOL","count":1},{"slot":4,"name":"ammo-9","count":88},{"slot":5,"name":"burger","count":8},{"slot":6,"name":"shoes5","count":1},{"slot":7,"name":"jacket1","count":1},{"metadata":{"image":"trash_can","weight":20,"description":"An empty soda can."},"slot":8,"name":"garbage","count":3},{"slot":9,"name":"burger","count":1},{"slot":10,"name":"money","count":9652},{"slot":11,"name":"ls_empty_baggy","count":5},{"slot":12,"name":"trousers5","count":1}]', 'unemployed', 0, 'none', 0, '[]', '{"armor":0,"health":200,"jobDuty":false,"lastPlaytime":17201}', '{"z":23.095947265625,"heading":104.88188934326172,"x":-551.4461669921875,"y":-1007.7494506835938}', 'Yuri', 'Orlov', '11/11/2000', 'm', 180, '{"headOverlays":{"lipstick":{"secondColor":0,"style":0,"opacity":0,"color":0},"sunDamage":{"secondColor":0,"style":0,"opacity":0,"color":0},"blush":{"secondColor":0,"style":0,"opacity":0,"color":0},"beard":{"secondColor":0,"style":0,"opacity":0,"color":0},"moleAndFreckles":{"secondColor":0,"style":0,"opacity":0,"color":0},"blemishes":{"secondColor":0,"style":0,"opacity":0,"color":0},"bodyBlemishes":{"secondColor":0,"style":0,"opacity":0,"color":0},"eyebrows":{"secondColor":0,"style":0,"opacity":0,"color":0},"chestHair":{"secondColor":0,"style":0,"opacity":0,"color":0},"makeUp":{"secondColor":0,"style":0,"opacity":0,"color":0},"ageing":{"secondColor":0,"style":0,"opacity":0,"color":0},"complexion":{"secondColor":0,"style":0,"opacity":0,"color":0}},"props":[{"texture":-1,"prop_id":0,"drawable":-1},{"texture":-1,"prop_id":1,"drawable":-1},{"texture":-1,"prop_id":2,"drawable":-1},{"texture":-1,"prop_id":6,"drawable":-1},{"texture":-1,"prop_id":7,"drawable":-1}],"hair":{"texture":0,"style":0,"highlight":0,"color":0},"eyeColor":0,"faceFeatures":{"noseBoneTwist":0,"nosePeakHigh":0,"chinBoneSize":0,"jawBoneWidth":0,"noseBoneHigh":0,"cheeksWidth":0,"chinHole":0,"nosePeakSize":0,"noseWidth":0,"cheeksBoneWidth":0,"lipsThickness":0,"eyesOpening":0,"nosePeakLowering":0,"neckThickness":0,"jawBoneBackSize":0,"chinBoneLowering":0,"eyeBrownHigh":0,"eyeBrownForward":0,"chinBoneLenght":0,"cheeksBoneHigh":0},"model":"mp_m_freemode_01","headBlend":{"skinSecond":0,"skinThird":0,"skinFirst":0,"thirdMix":0,"shapeMix":0,"skinMix":0,"shapeFirst":0,"shapeThird":0,"shapeSecond":0},"tattoos":[],"components":[{"texture":0,"component_id":0,"drawable":0},{"texture":0,"component_id":1,"drawable":0},{"texture":0,"component_id":2,"drawable":0},{"texture":0,"component_id":3,"drawable":0},{"texture":0,"component_id":4,"drawable":0},{"texture":0,"component_id":5,"drawable":0},{"texture":0,"component_id":6,"drawable":0},{"texture":0,"component_id":7,"drawable":0},{"texture":0,"component_id":8,"drawable":0},{"texture":0,"component_id":9,"drawable":0},{"texture":0,"component_id":10,"drawable":0},{"texture":0,"component_id":11,"drawable":0}]}', '[{"name":"drunk","percent":0.0,"val":0},{"name":"hunger","percent":49.89,"val":498900},{"name":"thirst","percent":49.9175,"val":499175}]', 0, 0, 0, 0, 5, 0, NULL, '2025-02-23 03:10:24', '2025-02-24 22:38:27', NULL, '', '', 0, '', NULL, NULL, 'B+');

-- Volcando estructura para tabla newsite.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.user_licenses: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.vehicles: ~240 rows (aproximadamente)
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 900000, 'super'),
	('Akuma', 'AKUMA', 7500, 'motorcycles'),
	('Alpha', 'alpha', 60000, 'sports'),
	('Ardent', 'ardent', 1150000, 'sportsclassics'),
	('Asea', 'asea', 5500, 'sedans'),
	('Autarch', 'autarch', 1955000, 'super'),
	('Avarus', 'avarus', 18000, 'motorcycles'),
	('Bagger', 'bagger', 13500, 'motorcycles'),
	('Baller', 'baller2', 40000, 'suvs'),
	('Baller Sport', 'baller3', 60000, 'suvs'),
	('Banshee', 'banshee', 70000, 'sports'),
	('Banshee 900R', 'banshee2', 255000, 'super'),
	('Bati 801', 'bati', 12000, 'motorcycles'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles'),
	('Bestia GTS', 'bestiagts', 55000, 'sports'),
	('BF400', 'bf400', 6500, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroad'),
	('Bifta', 'bifta', 12000, 'offroad'),
	('Bison', 'bison', 45000, 'vans'),
	('Blade', 'blade', 15000, 'muscle'),
	('Blazer', 'blazer', 6500, 'offroad'),
	('Blazer Sport', 'blazer4', 8500, 'offroad'),
	('blazer5', 'blazer5', 1755600, 'offroad'),
	('Blista', 'blista', 8000, 'compacts'),
	('BMX (velo)', 'bmx', 160, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans'),
	('Brawler', 'brawler', 45000, 'offroad'),
	('Brioso R/A', 'brioso', 18000, 'compacts'),
	('Btype', 'btype', 62000, 'sportsclassics'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 18000, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
	('Buffalo', 'buffalo', 12000, 'sports'),
	('Buffalo S', 'buffalo2', 20000, 'sports'),
	('Bullet', 'bullet', 90000, 'super'),
	('Burrito', 'burrito3', 19000, 'vans'),
	('Camper', 'camper', 42000, 'vans'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
	('Casco', 'casco', 30000, 'sportsclassics'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs'),
	('Cheetah', 'cheetah', 375000, 'super'),
	('Chimera', 'chimera', 38000, 'motorcycles'),
	('Chino', 'chino', 15000, 'muscle'),
	('Chino Luxe', 'chino2', 19000, 'muscle'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Comet', 'comet2', 65000, 'sports'),
	('Comet 5', 'comet5', 1145000, 'sports'),
	('Contender', 'contender', 70000, 'suvs'),
	('Coquette', 'coquette', 65000, 'sports'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
	('Cyclone', 'cyclone', 1890000, 'super'),
	('Daemon', 'daemon', 11500, 'motorcycles'),
	('Daemon High', 'daemon2', 13500, 'motorcycles'),
	('Defiler', 'defiler', 9800, 'motorcycles'),
	('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
	('Dominator', 'dominator', 35000, 'muscle'),
	('Double T', 'double', 28000, 'motorcycles'),
	('Dubsta', 'dubsta', 45000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
	('Dukes', 'dukes', 28000, 'muscle'),
	('Dune Buggy', 'dune', 8000, 'offroad'),
	('Elegy', 'elegy2', 38500, 'sports'),
	('Emperor', 'emperor', 8500, 'sedans'),
	('Enduro', 'enduro', 5500, 'motorcycles'),
	('Entity XF', 'entityxf', 425000, 'super'),
	('Esskey', 'esskey', 4200, 'motorcycles'),
	('Exemplar', 'exemplar', 32000, 'coupes'),
	('F620', 'f620', 40000, 'coupes'),
	('Faction', 'faction', 20000, 'muscle'),
	('Faction Rider', 'faction2', 30000, 'muscle'),
	('Faction XL', 'faction3', 40000, 'muscle'),
	('Faggio', 'faggio', 1900, 'motorcycles'),
	('Vespa', 'faggio2', 2800, 'motorcycles'),
	('Felon', 'felon', 42000, 'coupes'),
	('Felon GT', 'felon2', 55000, 'coupes'),
	('Feltzer', 'feltzer2', 55000, 'sports'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
	('Fixter (velo)', 'fixter', 225, 'motorcycles'),
	('FMJ', 'fmj', 185000, 'super'),
	('Fhantom', 'fq2', 17000, 'suvs'),
	('Fugitive', 'fugitive', 12000, 'sedans'),
	('Furore GT', 'furoregt', 45000, 'sports'),
	('Fusilade', 'fusilade', 40000, 'sports'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
	('Gauntlet', 'gauntlet', 30000, 'muscle'),
	('Gang Burrito', 'gburrito', 45000, 'vans'),
	('Burrito', 'gburrito2', 29000, 'vans'),
	('Glendale', 'glendale', 6500, 'sedans'),
	('Grabger', 'granger', 50000, 'suvs'),
	('Gresley', 'gresley', 47500, 'suvs'),
	('GT 500', 'gt500', 785000, 'sportsclassics'),
	('Guardian', 'guardian', 45000, 'offroad'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
	('Hermes', 'hermes', 535000, 'muscle'),
	('Hexer', 'hexer', 12000, 'motorcycles'),
	('Hotknife', 'hotknife', 125000, 'muscle'),
	('Huntley S', 'huntley', 40000, 'suvs'),
	('Hustler', 'hustler', 625000, 'muscle'),
	('Infernus', 'infernus', 180000, 'super'),
	('Innovation', 'innovation', 23500, 'motorcycles'),
	('Intruder', 'intruder', 7500, 'sedans'),
	('Issi', 'issi2', 10000, 'compacts'),
	('Jackal', 'jackal', 38000, 'coupes'),
	('Jester', 'jester', 65000, 'sports'),
	('Jester(Racecar)', 'jester2', 135000, 'sports'),
	('Journey', 'journey', 6500, 'vans'),
	('Kamacho', 'kamacho', 345000, 'offroad'),
	('Khamelion', 'khamelion', 38000, 'sports'),
	('Kuruma', 'kuruma', 30000, 'sports'),
	('Landstalker', 'landstalker', 35000, 'suvs'),
	('RE-7B', 'le7b', 325000, 'super'),
	('Lynx', 'lynx', 40000, 'sports'),
	('Mamba', 'mamba', 70000, 'sports'),
	('Manana', 'manana', 12800, 'sportsclassics'),
	('Manchez', 'manchez', 5300, 'motorcycles'),
	('Massacro', 'massacro', 65000, 'sports'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
	('Mesa', 'mesa', 16000, 'suvs'),
	('Mesa Trail', 'mesa3', 40000, 'suvs'),
	('Minivan', 'minivan', 13000, 'vans'),
	('Monroe', 'monroe', 55000, 'sportsclassics'),
	('The Liberator', 'monster', 210000, 'offroad'),
	('Moonbeam', 'moonbeam', 18000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
	('Nemesis', 'nemesis', 5800, 'motorcycles'),
	('Neon', 'neon', 1500000, 'sports'),
	('Nightblade', 'nightblade', 35000, 'motorcycles'),
	('Nightshade', 'nightshade', 65000, 'muscle'),
	('9F', 'ninef', 65000, 'sports'),
	('9F Cabrio', 'ninef2', 80000, 'sports'),
	('Omnis', 'omnis', 35000, 'sports'),
	('Oppressor', 'oppressor', 3524500, 'super'),
	('Oracle XS', 'oracle2', 35000, 'coupes'),
	('Osiris', 'osiris', 160000, 'super'),
	('Panto', 'panto', 10000, 'compacts'),
	('Paradise', 'paradise', 19000, 'vans'),
	('Pariah', 'pariah', 1420000, 'sports'),
	('Patriot', 'patriot', 55000, 'suvs'),
	('PCJ-600', 'pcj', 6200, 'motorcycles'),
	('Penumbra', 'penumbra', 28000, 'sports'),
	('Pfister', 'pfister811', 85000, 'super'),
	('Phoenix', 'phoenix', 12500, 'muscle'),
	('Picador', 'picador', 18000, 'muscle'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics'),
	('Prairie', 'prairie', 12000, 'compacts'),
	('Premier', 'premier', 8000, 'sedans'),
	('Primo Custom', 'primo2', 14000, 'sedans'),
	('X80 Proto', 'prototipo', 2500000, 'super'),
	('Radius', 'radi', 29000, 'suvs'),
	('raiden', 'raiden', 1375000, 'sports'),
	('Rapid GT', 'rapidgt', 35000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
	('Reaper', 'reaper', 150000, 'super'),
	('Rebel', 'rebel2', 35000, 'offroad'),
	('Regina', 'regina', 5000, 'sedans'),
	('Retinue', 'retinue', 615000, 'sportsclassics'),
	('Revolter', 'revolter', 1610000, 'sports'),
	('riata', 'riata', 380000, 'offroad'),
	('Rocoto', 'rocoto', 45000, 'suvs'),
	('Ruffian', 'ruffian', 6800, 'motorcycles'),
	('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
	('Rumpo', 'rumpo', 15000, 'vans'),
	('Rumpo Trail', 'rumpo3', 19500, 'vans'),
	('Sabre Turbo', 'sabregt', 20000, 'muscle'),
	('Sabre GT', 'sabregt2', 25000, 'muscle'),
	('Sanchez', 'sanchez', 5300, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
	('Sanctus', 'sanctus', 25000, 'motorcycles'),
	('Sandking', 'sandking', 55000, 'offroad'),
	('Savestra', 'savestra', 990000, 'sportsclassics'),
	('SC 1', 'sc1', 1603000, 'super'),
	('Schafter', 'schafter2', 25000, 'sedans'),
	('Schafter V12', 'schafter3', 50000, 'sports'),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
	('Seminole', 'seminole', 25000, 'suvs'),
	('Sentinel', 'sentinel', 32000, 'coupes'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes'),
	('Sentinel3', 'sentinel3', 650000, 'sports'),
	('Seven 70', 'seven70', 39500, 'sports'),
	('ETR1', 'sheava', 220000, 'super'),
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
	('Slam Van', 'slamvan3', 11500, 'muscle'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Stinger', 'stinger', 80000, 'sportsclassics'),
	('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
	('Streiter', 'streiter', 500000, 'sports'),
	('Stretch', 'stretch', 90000, 'sedans'),
	('Stromberg', 'stromberg', 3185350, 'sports'),
	('Sultan', 'sultan', 15000, 'sports'),
	('Sultan RS', 'sultanrs', 65000, 'super'),
	('Super Diamond', 'superd', 130000, 'sedans'),
	('Surano', 'surano', 50000, 'sports'),
	('Surfer', 'surfer', 12000, 'vans'),
	('T20', 't20', 300000, 'super'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Tampa', 'tampa', 16000, 'muscle'),
	('Drift Tampa', 'tampa2', 80000, 'sports'),
	('Thrust', 'thrust', 24000, 'motorcycles'),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 60000, 'offroad'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
	('Tropos', 'tropos', 40000, 'sports'),
	('Turismo R', 'turismor', 350000, 'super'),
	('Tyrus', 'tyrus', 600000, 'super'),
	('Vacca', 'vacca', 120000, 'super'),
	('Vader', 'vader', 7200, 'motorcycles'),
	('Verlierer', 'verlierer2', 70000, 'sports'),
	('Vigero', 'vigero', 12500, 'muscle'),
	('Virgo', 'virgo', 14000, 'muscle'),
	('Viseris', 'viseris', 875000, 'sportsclassics'),
	('Visione', 'visione', 2250000, 'super'),
	('Voltic', 'voltic', 90000, 'super'),
	('Voltic 2', 'voltic2', 3830400, 'super'),
	('Voodoo', 'voodoo', 7200, 'muscle'),
	('Vortex', 'vortex', 9800, 'motorcycles'),
	('Warrener', 'warrener', 4000, 'sedans'),
	('Washington', 'washington', 9000, 'sedans'),
	('Windsor', 'windsor', 95000, 'coupes'),
	('Windsor Drop', 'windsor2', 125000, 'coupes'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
	('XLS', 'xls', 32000, 'suvs'),
	('Yosemite', 'yosemite', 485000, 'muscle'),
	('Youga', 'youga', 10800, 'vans'),
	('Youga Luxuary', 'youga2', 14500, 'vans'),
	('Z190', 'z190', 900000, 'sportsclassics'),
	('Zentorno', 'zentorno', 1500000, 'super'),
	('Zion', 'zion', 36000, 'coupes'),
	('Zion Cabrio', 'zion2', 45000, 'coupes'),
	('Zombie', 'zombiea', 9500, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
	('Z-Type', 'ztype', 220000, 'sportsclassics');

-- Volcando estructura para tabla newsite.vehiclesdisplayed
CREATE TABLE IF NOT EXISTS `vehiclesdisplayed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(64) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `job` varchar(64) DEFAULT NULL,
  `extra` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.vehiclesdisplayed: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.vehicles_to_buy
CREATE TABLE IF NOT EXISTS `vehicles_to_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(60) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `vip_price` int(11) DEFAULT NULL,
  `category` varchar(60) DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `instock` int(11) DEFAULT NULL,
  `licensePrice` int(11) DEFAULT NULL,
  `job` varchar(64) NOT NULL DEFAULT 'dealer',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.vehicles_to_buy: ~272 rows (aproximadamente)
INSERT INTO `vehicles_to_buy` (`id`, `model`, `price`, `vip_price`, `category`, `extra`, `instock`, `licensePrice`, `job`) VALUES
	(1, 'adder', 900000, 100, 'super', NULL, 1012, 1000, 'dealer'),
	(2, 'AKUMA', 7500, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(3, 'alpha', 60000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(4, 'ardent', 1150000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(5, 'asea', 5500, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(6, 'autarch', 1955000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(7, 'avarus', 18000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(8, 'bagger', 13500, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(9, 'baller2', 40000, NULL, 'jdm', NULL, NULL, NULL, 'dealer'),
	(10, 'baller3', 60000, NULL, 'drift', NULL, NULL, NULL, 'dealer'),
	(11, 'banshee', 70000, NULL, 'drag', NULL, NULL, NULL, 'dealer'),
	(12, 'banshee2', 255000, NULL, 'trucks', NULL, NULL, NULL, 'dealer'),
	(13, 'bati', 12000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(14, 'bati2', 19000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(15, 'bestiagts', 55000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(16, 'bf400', 6500, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(17, 'bfinjection', 16000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(18, 'bifta', 12000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(19, 'bison', 45000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(20, 'blade', 15000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(21, 'blazer', 496900, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(22, 'blazer4', 8500, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(23, 'blazer5', 1755600, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(24, 'blista', 69420, 35, 'compacts', NULL, NULL, NULL, 'dealer'),
	(25, 'bmx', 160, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(26, 'bobcatxl', 32000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(27, 'brawler', 45000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(28, 'brioso', 18000, NULL, 'compacts', NULL, NULL, NULL, 'dealer'),
	(29, 'btype', 62000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(30, 'btype2', 155000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(31, 'btype3', 85000, NULL, 'sportsclassics', NULL, 0, NULL, 'dealer'),
	(32, 'buccaneer', 18000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(33, 'buccaneer2', 24000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(34, 'buffalo', 12000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(35, 'buffalo2', 20000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(36, 'bullet', 90000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(37, 'burrito3', 19000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(38, 'camper', 42000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(39, 'carbonizzare', 75000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(40, 'carbonrs', 18000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(41, 'casco', 30000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(42, 'cavalcade2', 55000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(43, 'cheetah', 375000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(44, 'chimera', 38000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(45, 'chino', 15000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(46, 'chino2', 19000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(47, 'cliffhanger', 9500, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(48, 'cogcabrio', 55000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(49, 'cognoscenti', 55000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(50, 'comet2', 65000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(51, 'comet5', 1145000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(52, 'contender', 70000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(53, 'coquette', 65000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(54, 'coquette2', 40000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(55, 'coquette3', 55000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(56, 'cruiser', 510, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(57, 'cyclone', 1890000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(58, 'daemon', 11500, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(59, 'daemon2', 13500, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(60, 'defiler', 9800, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(61, 'deluxo', 4721500, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(62, 'dominator', 35000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(63, 'double', 28000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(64, 'dubsta', 45000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(65, 'dubsta2', 60000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(66, 'dubsta3', 120000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(67, 'dukes', 28000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(68, 'dune', 8000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(69, 'elegy2', 38500, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(70, 'emperor', 8500, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(71, 'enduro', 5500, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(72, 'entityxf', 425000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(73, 'esskey', 4200, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(74, 'exemplar', 33000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(75, 'f620', 40000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(76, 'faction', 20000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(77, 'faction2', 30000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(78, 'faction3', 40000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(79, 'faggio', 1900, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(80, 'faggio2', 2800, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(81, 'felon', 42000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(82, 'felon2', 55000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(83, 'feltzer2', 55000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(84, 'feltzer3', 65000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(85, 'fixter', 225, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(86, 'fmj', 185000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(87, 'fq2', 17000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(88, 'fugitive', 12000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(89, 'furoregt', 45000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(90, 'fusilade', 40000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(91, 'gargoyle', 16500, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(92, 'gauntlet', 30000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(93, 'gburrito', 45000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(94, 'gburrito2', 29000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(95, 'glendale', 6500, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(96, 'granger', 50000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(97, 'gresley', 47500, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(98, 'gt500', 785000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(99, 'guardian', 45000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(100, 'hakuchou', 31000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(101, 'hakuchou2', 55000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(102, 'hermes', 535000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(103, 'hexer', 12000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(104, 'hotknife', 125000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(105, 'huntley', 40000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(106, 'hustler', 625000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(107, 'infernus', 180000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(108, 'innovation', 23500, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(109, 'intruder', 7500, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(110, 'issi2', 420, NULL, 'compacts', NULL, NULL, NULL, 'dealer'),
	(111, 'jackal', 38000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(112, 'jester', 65000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(113, 'jester2', 135000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(114, 'journey', 6500, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(115, 'kamacho', 345000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(116, 'khamelion', 38000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(117, 'kuruma', 30000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(118, 'landstalker', 35000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(119, 'le7b', 325000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(120, 'lynx', 40000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(121, 'mamba', 70000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(122, 'manana', 12800, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(123, 'manchez', 5300, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(124, 'massacro', 65000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(125, 'massacro2', 130000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(126, 'mesa', 16000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(127, 'mesa3', 40000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(128, 'minivan', 13000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(129, 'monroe', 55000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(130, 'monster', 210000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(131, 'moonbeam', 18000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(132, 'moonbeam2', 35000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(133, 'nemesis', 5800, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(134, 'neon', 1500000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(135, 'nightblade', 35000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(136, 'nightshade', 65000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(137, 'ninef', 65000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(138, 'ninef2', 80000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(139, 'omnis', 35000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(140, 'oppressor', 3524500, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(141, 'oracle2', 35000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(142, 'osiris', 160000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(143, 'panto', 10000, NULL, 'compacts', NULL, NULL, NULL, 'dealer'),
	(144, 'paradise', 19000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(145, 'pariah', 1420000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(146, 'patriot', 55000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(147, 'pcj', 6200, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(148, 'penumbra', 28000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(149, 'pfister811', 85000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(150, 'phoenix', 12500, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(151, 'picador', 18000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(152, 'pigalle', 20000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(153, 'prairie', 12000, NULL, 'compacts', NULL, NULL, NULL, 'dealer'),
	(154, 'premier', 8000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(155, 'primo2', 14000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(156, 'prototipo', 2500000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(157, 'radi', 29000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(158, 'raiden', 1375000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(159, 'rapidgt', 35000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(160, 'rapidgt2', 45000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(161, 'rapidgt3', 885000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(162, 'reaper', 150000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(163, 'rebel2', 35000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(164, 'regina', 5000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(165, 'retinue', 615000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(166, 'revolter', 1610000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(167, 'riata', 380000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(168, 'rocoto', 45000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(169, 'ruffian', 6800, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(170, 'ruiner2', 5745600, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(171, 'rumpo', 15000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(172, 'rumpo3', 19500, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(173, 'sabregt', 20000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(174, 'sabregt2', 25000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(175, 'sanchez', 5300, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(176, 'sanchez2', 5300, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(177, 'sanctus', 25000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(178, 'sandking', 55000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(179, 'savestra', 990000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(180, 'sc1', 1603000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(181, 'schafter2', 25000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(182, 'schafter3', 50000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(183, 'scorcher', 280, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(184, 'seminole', 25000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(185, 'sentinel', 32000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(186, 'sentinel2', 40000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(187, 'sentinel3', 650000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(188, 'seven70', 39500, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(189, 'sheava', 220000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(190, 'shotaro', 3250000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(191, 'slamvan3', 11500, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(192, 'sovereign', 22000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(193, 'stinger', 80000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(194, 'stingergt', 75000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(195, 'streiter', 500000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(196, 'stretch', 90000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(197, 'stromberg', 3185350, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(198, 'sultan', 15000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(199, 'sultanrs', 65000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(200, 'superd', 130000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(201, 'surano', 50000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(202, 'surfer', 12000, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(203, 't20', 300000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(204, 'tailgater', 30000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(205, 'tampa', 16000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(206, 'tampa2', 80000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(207, 'thrust', 24000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(208, 'tribike3', 520, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(209, 'trophytruck', 60000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(210, 'trophytruck2', 80000, NULL, 'offroad', NULL, NULL, NULL, 'dealer'),
	(211, 'tropos', 40000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(212, 'turismor', 350000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(213, 'tyrus', 600000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(214, 'vacca', 120000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(215, 'vader', 7200, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(216, 'verlierer2', 70000, NULL, 'sports', NULL, NULL, NULL, 'dealer'),
	(217, 'vigero', 12500, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(218, 'virgo', 14000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(219, 'viseris', 875000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(220, 'visione', 2250000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(221, 'voltic', 90000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(222, 'voltic2', 3830400, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(223, 'voodoo', 7200, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(224, 'vortex', 9800, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(225, 'warrener', 4000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(226, 'washington', 9000, NULL, 'sedans', NULL, NULL, NULL, 'dealer'),
	(227, 'windsor', 95000, NULL, 'coupes', NULL, 101, NULL, 'dealer'),
	(228, 'windsor2', 125000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(229, 'wolfsbane', 9000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(230, 'xls', 32000, NULL, 'suvs', NULL, NULL, NULL, 'dealer'),
	(231, 'yosemite', 485000, NULL, 'muscle', NULL, NULL, NULL, 'dealer'),
	(232, 'youga', 10800, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(233, 'youga2', 14500, NULL, 'vans', NULL, NULL, NULL, 'dealer'),
	(234, 'z190', 900000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(235, 'zentorno', 1500000, NULL, 'super', NULL, NULL, NULL, 'dealer'),
	(236, 'zion', 36000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(237, 'zion2', 45000, NULL, 'coupes', NULL, NULL, NULL, 'dealer'),
	(238, 'zombiea', 9500, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(239, 'zombieb', 12000, NULL, 'motorcycles', NULL, NULL, NULL, 'dealer'),
	(240, 'ztype', 220000, NULL, 'sportsclassics', NULL, NULL, NULL, 'dealer'),
	(242, 'velum2', 450000, NULL, 'small_plane', NULL, NULL, NULL, 'planedealer'),
	(243, 'velum', 425000, NULL, 'small_plane', NULL, NULL, NULL, 'planedealer'),
	(244, 'stunt', 250000, NULL, 'small_plane', NULL, NULL, NULL, 'planedealer'),
	(245, 'seabreeze', 1130500, NULL, 'small_plane', NULL, NULL, NULL, 'planedealer'),
	(246, 'mammatus', 300000, NULL, 'small_plane', NULL, NULL, NULL, 'planedealer'),
	(247, 'luxor2', 1500000, NULL, 'small_plane', NULL, NULL, NULL, 'planedealer'),
	(248, 'luxor', 1500000, NULL, 'small_plane', NULL, NULL, NULL, 'planedealer'),
	(249, 'duster', 275000, NULL, 'small_plane', NULL, NULL, NULL, 'planedealer'),
	(251, 'frogger', 1300000, NULL, 'heli', NULL, NULL, NULL, 'planedealer'),
	(252, 'frogger2', 1300000, NULL, 'heli', NULL, NULL, NULL, 'planedealer'),
	(253, 'havok', 2300900, NULL, 'heli', NULL, NULL, NULL, 'planedealer'),
	(254, 'maverick', 780000, NULL, 'heli', NULL, NULL, NULL, 'planedealer'),
	(255, 'seasparrow', 1815000, NULL, 'heli', NULL, NULL, NULL, 'planedealer'),
	(256, 'supervolito', 2113000, NULL, 'heli', NULL, NULL, NULL, 'planedealer'),
	(257, 'supervolito2', 2113000, NULL, 'heli', NULL, NULL, NULL, 'planedealer'),
	(258, 'swift', 1500000, NULL, 'heli', NULL, NULL, NULL, 'planedealer'),
	(259, 'swift2', 5150000, NULL, 'heli', NULL, NULL, NULL, 'planedealer'),
	(260, 'volatus', 2295000, NULL, 'heli', NULL, NULL, NULL, 'planedealer'),
	(262, 'dinghy', 166250, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(263, 'dinghy2', 176250, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(264, 'dinghy3', 186250, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(265, 'dinghy4', 196250, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(266, 'jetmax', 299000, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(267, 'marquis', 413990, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(268, 'speeder', 325000, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(269, 'speeder2', 335000, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(270, 'toro', 1750000, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(271, 'tug', 1250000, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(272, 'seashark', 16899, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(273, 'seashark2', 17899, NULL, 'boats', NULL, NULL, NULL, 'boatdealer'),
	(274, 'submersible', 5000000, NULL, 'marines', NULL, NULL, NULL, 'boatdealer'),
	(275, 'submersible2', 6000000, NULL, 'marines', NULL, NULL, NULL, 'boatdealer');

-- Volcando estructura para tabla newsite.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.vehicle_categories: ~11 rows (aproximadamente)
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'Coupés'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans');

-- Volcando estructura para tabla newsite.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.vehicle_sold: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.vehicle_tuning
CREATE TABLE IF NOT EXISTS `vehicle_tuning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(32) NOT NULL,
  `mods` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `nitrous` int(3) DEFAULT 0,
  `hasNitrous` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.vehicle_tuning: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.wasabi_adminmenu_bans
CREATE TABLE IF NOT EXISTS `wasabi_adminmenu_bans` (
  `BannedBy` varchar(40) DEFAULT NULL,
  `BannedPlayer` varchar(40) DEFAULT NULL,
  `BannedLicense` varchar(50) DEFAULT NULL,
  `BannedIP` varchar(25) DEFAULT NULL,
  `BannedDiscord` varchar(40) DEFAULT NULL,
  `BannedReason` varchar(100) DEFAULT NULL,
  `BannedTime` varchar(10) DEFAULT NULL,
  `Time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.wasabi_adminmenu_bans: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.wasabi_evidence
CREATE TABLE IF NOT EXISTS `wasabi_evidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.wasabi_evidence: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.wasabi_fingerprints
CREATE TABLE IF NOT EXISTS `wasabi_fingerprints` (
  `identifier` varchar(100) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.wasabi_fingerprints: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.wasabi_manual_prints
CREATE TABLE IF NOT EXISTS `wasabi_manual_prints` (
  `identifier` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Volcando datos para la tabla newsite.wasabi_manual_prints: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.weazel
CREATE TABLE IF NOT EXISTS `weazel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(46) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla newsite.weazel: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.whatsapp_accounts
CREATE TABLE IF NOT EXISTS `whatsapp_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `avatar` text NOT NULL DEFAULT '',
  `bio` varchar(50) NOT NULL DEFAULT '',
  `group_creator` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `hide_receipts` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.whatsapp_accounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.whatsapp_call_history
CREATE TABLE IF NOT EXISTS `whatsapp_call_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caller` int(11) NOT NULL DEFAULT 0,
  `calledId` int(11) DEFAULT NULL,
  `time` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.whatsapp_call_history: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.whatsapp_call_history_users
CREATE TABLE IF NOT EXISTS `whatsapp_call_history_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT 0,
  `callId` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.whatsapp_call_history_users: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.whatsapp_chats
CREATE TABLE IF NOT EXISTS `whatsapp_chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL DEFAULT 0,
  `receiver` int(11) NOT NULL DEFAULT 0,
  `wallpaper` text DEFAULT NULL,
  `isGroup` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.whatsapp_chats: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.whatsapp_group_admins
CREATE TABLE IF NOT EXISTS `whatsapp_group_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT 0,
  `groupId` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.whatsapp_group_admins: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.whatsapp_group_members
CREATE TABLE IF NOT EXISTS `whatsapp_group_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT 0,
  `groupId` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.whatsapp_group_members: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.whatsapp_status
CREATE TABLE IF NOT EXISTS `whatsapp_status` (
  `userId` int(11) NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla newsite.whatsapp_status: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.whitelist
CREATE TABLE IF NOT EXISTS `whitelist` (
  `identifier` varchar(60) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.whitelist: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.wsb_cctvcameras
CREATE TABLE IF NOT EXISTS `wsb_cctvcameras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.wsb_cctvcameras: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.wsb_speedtraps
CREATE TABLE IF NOT EXISTS `wsb_speedtraps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.wsb_speedtraps: ~0 rows (aproximadamente)

-- Volcando estructura para tabla newsite.zsx_multicharacter_slots
CREATE TABLE IF NOT EXISTS `zsx_multicharacter_slots` (
  `identifier` varchar(255) NOT NULL,
  `amount` int(1) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

-- Volcando datos para la tabla newsite.zsx_multicharacter_slots: ~0 rows (aproximadamente)
INSERT INTO `zsx_multicharacter_slots` (`identifier`, `amount`) VALUES
	('license:8aea1ea045b56ecd98d63f338874d06d36bcabdf', 1);

-- Volcando estructura para disparador newsite.instagram_decrement_comment_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `instagram_decrement_comment_count` AFTER DELETE ON `instagram_post_comments` FOR EACH ROW BEGIN
    UPDATE instagram_posts SET commentCount = commentCount + 1 WHERE id = OLD.postId;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador newsite.instagram_increment_comment_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `instagram_increment_comment_count` AFTER INSERT ON `instagram_post_comments` FOR EACH ROW BEGIN
    UPDATE instagram_posts SET commentCount = commentCount + 1 WHERE id = NEW.postId;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
