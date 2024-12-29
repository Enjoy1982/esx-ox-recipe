-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2024 a las 02:20:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gotham_v1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('society_cardealer', 'Concessionnaire', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_cardealer', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('unemployed', 'Unemployed', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('weapon', 'Weapon License');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lunar_fishing`
--

CREATE TABLE `lunar_fishing` (
  `user_identifier` varchar(50) NOT NULL,
  `xp` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multicharacter_slots`
--

CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(60) NOT NULL,
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ox_doorlock`
--

CREATE TABLE `ox_doorlock` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ox_doorlock`
--

INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
(1, 'community_mrpd 1', '{\"coords\":{\"x\":434.7478942871094,\"y\":-981.916748046875,\"z\":30.83926963806152},\"groups\":{\"police\":0,\"offpolice\":0},\"maxDistance\":2.5,\"state\":0,\"doors\":[{\"coords\":{\"x\":434.7478942871094,\"y\":-980.618408203125,\"z\":30.83926963806152},\"model\":-1215222675,\"heading\":270},{\"coords\":{\"x\":434.7478942871094,\"y\":-983.215087890625,\"z\":30.83926963806152},\"model\":320433149,\"heading\":270}],\"hideUi\":false}'),
(2, 'community_mrpd 2', '{\"coords\":{\"x\":468.6697998046875,\"y\":-1014.4520263671875,\"z\":26.53623962402343},\"groups\":{\"police\":0},\"maxDistance\":2.5,\"state\":1,\"doors\":[{\"coords\":{\"x\":469.9679870605469,\"y\":-1014.4520263671875,\"z\":26.53623962402343},\"model\":-2023754432,\"heading\":180},{\"coords\":{\"x\":467.3716125488281,\"y\":-1014.4520263671875,\"z\":26.53623962402343},\"model\":-2023754432,\"heading\":0}],\"hideUi\":false}'),
(3, 'community_mrpd 3', '{\"coords\":{\"x\":463.4783020019531,\"y\":-1003.5380249023438,\"z\":25.00598907470703},\"model\":-1033001619,\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(4, 'community_mrpd 4', '{\"coords\":{\"x\":488.8948059082031,\"y\":-1017.2100219726563,\"z\":27.14863014221191},\"auto\":true,\"lockSound\":\"button-remote\",\"groups\":{\"police\":0},\"heading\":90,\"maxDistance\":5,\"state\":1,\"model\":-1603817716,\"hideUi\":false}'),
(5, 'community_mrpd 5', '{\"coords\":{\"x\":431.4056091308594,\"y\":-1001.1690063476563,\"z\":26.71261024475097},\"auto\":true,\"lockSound\":\"button-remote\",\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":5,\"state\":1,\"model\":-190780785,\"hideUi\":false}'),
(6, 'community_mrpd 6', '{\"coords\":{\"x\":436.223388671875,\"y\":-1001.1690063476563,\"z\":26.71261024475097},\"auto\":true,\"lockSound\":\"button-remote\",\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":5,\"state\":1,\"model\":-190780785,\"hideUi\":false}'),
(7, 'community_mrpd 7', '{\"coords\":{\"x\":450.10418701171877,\"y\":-985.7384033203125,\"z\":30.83930969238281},\"model\":1557126584,\"groups\":{\"police\":0,\"offpolice\":0},\"heading\":90,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(8, 'community_mrpd 8', '{\"coords\":{\"x\":464.15838623046877,\"y\":-1011.260009765625,\"z\":33.01121139526367},\"model\":507213820,\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(9, 'community_mrpd 9', '{\"coords\":{\"x\":461.2864990234375,\"y\":-985.3206176757813,\"z\":30.83926963806152},\"model\":749848321,\"groups\":{\"police\":0},\"heading\":90,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(10, 'community_mrpd 10', '{\"coords\":{\"x\":446.57281494140627,\"y\":-980.0106201171875,\"z\":30.83930969238281},\"model\":-1320876379,\"groups\":{\"police\":0},\"heading\":180,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(11, 'community_mrpd 11', '{\"coords\":{\"x\":453.09381103515627,\"y\":-983.2293701171875,\"z\":30.83926963806152},\"model\":-1033001619,\"groups\":{\"police\":0},\"heading\":91,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(12, 'community_mrpd 12', '{\"coords\":{\"x\":464.36138916015627,\"y\":-984.677978515625,\"z\":43.83443832397461},\"model\":-340230128,\"groups\":{\"police\":0},\"heading\":90,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(13, 'community_mrpd 13', '{\"coords\":{\"x\":442.6625061035156,\"y\":-988.2412719726563,\"z\":26.81977081298828},\"model\":-131296141,\"groups\":{\"police\":0},\"heading\":179,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(14, 'community_mrpd 14', '{\"coords\":{\"x\":471.3153991699219,\"y\":-986.1090698242188,\"z\":25.05794906616211},\"model\":-131296141,\"groups\":{\"police\":0},\"heading\":270,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(15, 'community_mrpd 15', '{\"coords\":{\"x\":467.5935974121094,\"y\":-977.9932861328125,\"z\":25.05794906616211},\"model\":-131296141,\"groups\":{\"police\":0},\"heading\":180,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(16, 'community_mrpd 16', '{\"coords\":{\"x\":463.6145935058594,\"y\":-980.5814208984375,\"z\":25.05794906616211},\"model\":-131296141,\"groups\":{\"police\":0},\"heading\":90,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(17, 'community_mrpd 17', '{\"coords\":{\"x\":464.5701904296875,\"y\":-992.6641235351563,\"z\":25.0644302368164},\"model\":631614199,\"lockSound\":\"metal-locker\",\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":2,\"state\":1,\"unlockSound\":\"metallic-creak\",\"hideUi\":false}'),
(18, 'community_mrpd 18', '{\"coords\":{\"x\":461.8064880371094,\"y\":-994.4086303710938,\"z\":25.0644302368164},\"model\":631614199,\"lockSound\":\"metal-locker\",\"groups\":{\"police\":0},\"heading\":270,\"maxDistance\":2,\"state\":1,\"unlockSound\":\"metallic-creak\",\"hideUi\":false}'),
(19, 'community_mrpd 19', '{\"coords\":{\"x\":461.8064880371094,\"y\":-997.6583862304688,\"z\":25.0644302368164},\"model\":631614199,\"lockSound\":\"metal-locker\",\"groups\":{\"police\":0},\"heading\":90,\"maxDistance\":2,\"state\":1,\"unlockSound\":\"metallic-creak\",\"hideUi\":false}'),
(20, 'community_mrpd 20', '{\"coords\":{\"x\":461.8064880371094,\"y\":-1001.302001953125,\"z\":25.0644302368164},\"model\":631614199,\"lockSound\":\"metal-locker\",\"groups\":{\"police\":0},\"heading\":90,\"maxDistance\":2,\"state\":1,\"unlockSound\":\"metallic-creak\",\"hideUi\":false}'),
(21, 'community_mrpd 21', '{\"coords\":{\"x\":467.19219970703127,\"y\":-996.4594116210938,\"z\":25.00598907470703},\"model\":-1033001619,\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(22, 'community_mrpd 22', '{\"coords\":{\"x\":471.4754943847656,\"y\":-996.4594116210938,\"z\":25.00598907470703},\"model\":-1033001619,\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(23, 'community_mrpd 23', '{\"coords\":{\"x\":475.7543029785156,\"y\":-996.4594116210938,\"z\":25.00598907470703},\"model\":-1033001619,\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(24, 'community_mrpd 24', '{\"coords\":{\"x\":480.03009033203127,\"y\":-996.4594116210938,\"z\":25.00598907470703},\"model\":-1033001619,\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(25, 'community_mrpd 25', '{\"coords\":{\"x\":468.4872131347656,\"y\":-1003.5479736328125,\"z\":25.01313972473144},\"model\":-1033001619,\"groups\":{\"police\":0},\"heading\":180,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(26, 'community_mrpd 26', '{\"coords\":{\"x\":471.4747009277344,\"y\":-1003.5380249023438,\"z\":25.01222991943359},\"model\":-1033001619,\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(27, 'community_mrpd 27', '{\"coords\":{\"x\":477.0495910644531,\"y\":-1003.552001953125,\"z\":25.01203918457031},\"auto\":false,\"groups\":{\"police\":0},\"heading\":179,\"lockpick\":false,\"maxDistance\":2,\"state\":1,\"model\":-1033001619,\"hideUi\":false}'),
(28, 'community_mrpd 28', '{\"coords\":{\"x\":480.03009033203127,\"y\":-1003.5380249023438,\"z\":25.00598907470703},\"model\":-1033001619,\"groups\":{\"police\":0},\"heading\":0,\"maxDistance\":2,\"state\":1,\"hideUi\":false}'),
(29, 'community_mrpd 29', '{\"coords\":{\"x\":444.7078857421875,\"y\":-989.4453735351563,\"z\":30.83930969238281},\"groups\":{\"police\":0},\"maxDistance\":2.5,\"state\":1,\"doors\":[{\"coords\":{\"x\":443.4078063964844,\"y\":-989.4453735351563,\"z\":30.83930969238281},\"model\":185711165,\"heading\":180},{\"coords\":{\"x\":446.00799560546877,\"y\":-989.4453735351563,\"z\":30.83930969238281},\"model\":185711165,\"heading\":0}],\"hideUi\":false}'),
(30, 'community_mrpd 30', '{\"coords\":{\"x\":445.9197998046875,\"y\":-999.0016479492188,\"z\":30.7890396118164},\"groups\":{\"police\":0},\"maxDistance\":2.5,\"state\":1,\"doors\":[{\"coords\":{\"x\":447.2184143066406,\"y\":-999.0023193359375,\"z\":30.78941917419433},\"model\":-1033001619,\"heading\":180},{\"coords\":{\"x\":444.6211853027344,\"y\":-999.0009765625,\"z\":30.78866004943847},\"model\":-1033001619,\"heading\":0}],\"hideUi\":false}'),
(31, 'community_mrpd 31', '{\"coords\":{\"x\":445.9298400878906,\"y\":-997.044677734375,\"z\":30.84351921081543},\"groups\":{\"police\":0},\"maxDistance\":2.5,\"state\":0,\"doors\":[{\"coords\":{\"x\":444.62939453125,\"y\":-997.044677734375,\"z\":30.84351921081543},\"model\":-2023754432,\"heading\":0},{\"coords\":{\"x\":447.23028564453127,\"y\":-997.044677734375,\"z\":30.84351921081543},\"model\":-2023754432,\"heading\":180}],\"hideUi\":false}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ox_inventory`
--

CREATE TABLE `ox_inventory` (
  `owner` varchar(60) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_outfit_codes`
--

CREATE TABLE `player_outfit_codes` (
  `id` int(11) NOT NULL,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `identifier` varchar(60) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `position` longtext DEFAULT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `metadata`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `disabled`) VALUES
('8aea1ea045b56ecd98d63f338874d06d36bcabdf', '{\"bank\":50000,\"black_money\":0,\"money\":0}', 'admin', '[]', 'unemployed', 0, '[]', '{\"health\":200,\"lastPlaytime\":183,\"jobDuty\":false,\"armor\":0}', '{\"x\":223.60879516601563,\"heading\":39.68503952026367,\"z\":30.2908935546875,\"y\":-864.2241821289063}', NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indices de la tabla `lunar_fishing`
--
ALTER TABLE `lunar_fishing`
  ADD PRIMARY KEY (`user_identifier`);

--
-- Indices de la tabla `multicharacter_slots`
--
ALTER TABLE `multicharacter_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE,
  ADD KEY `slots` (`slots`) USING BTREE;

--
-- Indices de la tabla `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indices de la tabla `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ox_inventory`
--
ALTER TABLE `ox_inventory`
  ADD UNIQUE KEY `owner` (`owner`,`name`);

--
-- Indices de la tabla `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indices de la tabla `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_player_outfit_codes_player_outfits` (`outfitid`);

--
-- Indices de la tabla `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indices de la tabla `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
