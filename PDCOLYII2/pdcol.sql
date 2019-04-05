-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-03-2019 a las 01:32:38
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `pdcol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `documento` varchar(20) NOT NULL,
  `idtipodocumento` int(11) NOT NULL,
  `primernombre` varchar(20) NOT NULL,
  `segundonombre` varchar(20) DEFAULT NULL,
  `primerapellido` varchar(20) NOT NULL,
  `segundoapellido` varchar(20) DEFAULT NULL,
  `fichasena` decimal(10,0) NOT NULL,
  `direccioncasa` varchar(50) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `telefonocasa` decimal(10,0) DEFAULT NULL,
  `celular` decimal(10,0) DEFAULT NULL,
  `idestado` int(11) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`documento`, `idtipodocumento`, `primernombre`, `segundonombre`, `primerapellido`, `segundoapellido`, `fichasena`, `direccioncasa`, `email`, `telefonocasa`, `celular`, `idestado`, `descripcion`) VALUES
('1022935', 2, 'b', 'g', 'm', 'kjh', '10346', 'cal124', 'a@7', '123457', '54322', 2, 'N/A'),
('1022936', 3, 'c', 'h', 'n', 'kjh', '10347', 'cal125', 'a@8', '123458', '54323', 1, 'N/A'),
('1022937', 4, 'a', 'f', 'k', 'lkj', '10348', 'cal126', 'a@9', '123459', '54324', 1, 'N/A'),
('1022938', 1, 'b', 'g', 'm', 'kjh', '10349', 'cal127', 'a@10', '123460', '54325', 1, 'N/A'),
('1022940', 3, 'a', 'f', 'k', 'lkj', '10351', 'cal129', 'a@12', '123462', '54327', 1, 'N/A'),
('1022941', 4, 'b', 'g', 'm', 'kjh', '10352', 'cal130', 'a@13', '123463', '54328', 1, 'N/A'),
('1022942', 1, 'c', 'h', 'n', 'kjh', '10353', 'cal131', 'a@14', '123464', '54329', 1, 'N/A'),
('1022944', 3, 'b', 'g', 'm', 'kjh', '10355', 'cal133', 'a@16', '123466', '54331', 1, 'N/A'),
('1022946', 1, 'a', 'f', 'k', 'lkj', '10357', 'cal135', 'a@18', '123468', '54333', 1, 'N/A'),
('1022947', 2, 'b', 'g', 'm', 'kjh', '10358', 'cal136', 'a@19', '123469', '54334', 1, 'N/A'),
('1022948', 3, 'c', 'h', 'n', 'kjh', '10359', 'cal137', 'a@20', '123470', '54335', 1, 'N/A'),
('1022949', 4, 'a', 'f', 'k', 'lkj', '10360', 'cal138', 'a@21', '123471', '54336', 1, 'N/A'),
('1022950', 1, 'b', 'g', 'm', 'kjh', '10361', 'cal139', 'a@22', '123472', '54337', 1, 'N/A'),
('1022951', 2, 'c', 'h', 'n', 'kjh', '10362', 'cal140', 'a@23', '123473', '54338', 1, 'N/A'),
('1022952', 3, 'a', 'f', 'k', 'lkj', '10363', 'cal141', 'a@24', '123474', '54339', 1, 'N/A'),
('1022953', 4, 'b', 'g', 'm', 'kjh', '10364', 'cal142', 'a@25', '123475', '54340', 1, 'N/A'),
('1022954', 1, 'c', 'h', 'n', 'kjh', '10365', 'cal143', 'a@26', '123476', '54341', 1, 'N/A'),
('1022956475', 1, 'bbbbb', 'bbbbbbb', 'bbbbb', 'bbbbb', '1234565643', 'call 84sur#77-66', 'dfgdf@etrery.com', '3172646', '9999999999', 0, 'na');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupos`
--

CREATE TABLE IF NOT EXISTS `cupos` (
  `idcupo` int(11) NOT NULL AUTO_INCREMENT,
  `numeroparqueo` decimal(20,0) NOT NULL,
  `idestado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcupo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `cupos`
--

INSERT INTO `cupos` (`idcupo`, `numeroparqueo`, `idestado`) VALUES
(1, '1', NULL),
(2, '2', NULL),
(3, '3', NULL),
(4, '4', NULL),
(5, '5', NULL),
(6, '6', NULL),
(7, '7', NULL),
(8, '8', NULL),
(9, '9', NULL),
(10, '10', NULL),
(11, '11', NULL),
(12, '12', NULL),
(13, '13', NULL),
(14, '14', NULL),
(15, '15', NULL),
(16, '16', NULL),
(17, '17', NULL),
(18, '18', NULL),
(19, '19', NULL),
(20, '20', NULL),
(21, '21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE IF NOT EXISTS `perfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id`, `nombre_perfil`) VALUES
(1, 'Administrador'),
(2, 'Operador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE IF NOT EXISTS `tipodocumento` (
  `idtipodocumento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`idtipodocumento`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`idtipodocumento`, `nombre`) VALUES
(1, 'CC'),
(2, 'TI'),
(3, 'CE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipovehivulo`
--

CREATE TABLE IF NOT EXISTS `tipovehivulo` (
  `idtipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipovehivulo`
--

INSERT INTO `tipovehivulo` (`idtipo`, `nombre`) VALUES
(1, 'Bicicleta'),
(2, 'Motocicleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `perfil_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `perfil_usuario`) VALUES
(2, 'caesor', 'KS2AM7ND1uuOJGEkcpEPIbzzqFZ4HbPj', '$2y$13$o5wanM0e/axk7rFnmBRsjehxB.rpTmgDEZPZv0mAGRMavyoMqGK1W', 'w40wlMRfHcaknu-5dvcfdBBd4S2FrRq-_1550254909', 'caesor_14@hotmail.com', 10, 1550251212, 1550254909, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(250) NOT NULL,
  `authKey` varchar(250) NOT NULL,
  `accessToken` varchar(250) NOT NULL,
  `activate` tinyint(1) NOT NULL DEFAULT '0',
  `verification_code` varchar(250) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `documento` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `authKey`, `accessToken`, `activate`, `verification_code`, `role`, `documento`) VALUES
(1, 'geandrade', 'gusangad@gmail.com', 'ag.IgFXSzYquE', '775cc25f724070d53d3ab21671c564eefccd230969ffca34a516053b5bdf91b8471559993674f97ae3c92e261bdfb37989426500e9efff9518612d07b1a4bc0f9055674c8220eba722ef12ce3d609b7c9e4f3f7ef156bc8f0344de6b9ff25fcf711eed86', '4653644cd98e7fdee77afa072bc382747146f2e076ae063705c87b16ca5ffc38820f657908a46376080bc10a4fc05ce279bebfd97081b69be2150ed59b1782724632df1ebf43d086a2152185dc449ed8f9ade43ae3ebdf6748eb292ce458912481eed04b', 1, '', 2, ''),
(8, 'ecaicedo', 'caesor_14@hotmail.com', 'agLqfH5vahux.', '32f61f72e5a8832241150deb20d869683fcf62773a94a5c2fd040f1623eb4a2f9af503c9fcde26b007626faf956c7954538a12891d86140b7f2d2c87653b07d77a7c8fa78c8c51b5454748dc8278f2b7ffbd5a1468f0fbcd79ceb28f1e035bf6d26b82fe', '93b203330ba49a80f7fc0393137809363bd26a160be7d0ff4f53189db3e2fecc22602e48598974cde5089b06b0bb41c1874c50d8068876e8f82b6dcd1be1f2233996d1c610e6c5715a9c9ce2d476f1d35a3ebf1188a18368297b3a64fb686ef1c944fbdb', 1, '', 2, ''),
(9, 'hruiz', 'administrador@sionwebsites.com', 'agOpLu04eNpQs', 'ff8505cb80941c4accba2c3c6fa1015f2536677dda150a542a09b59ed0d02618ba35179e72f355cce5c7ac6dbf7ea83faca2350d883f1f920fe3e28bec6989c4fc7cb2e9ecea27c6866d951777b2d8a7aba59c24aee29d585b45a600706a75e8b73cc4bc', 'de4960489f7b0548c78f7f8722116ab35c1d9296301fd3fd8cf2d885ea646e08483f224230110ef19fc49fe01115b1ca82b02f5c9d7087631003b4a9a52471db2aae7bc5593e7e22ef9046c098909f5930ea259b724ac4501c8c2745e85b0b2694853dcf', 1, '1fb3d441', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE IF NOT EXISTS `vehiculo` (
  `serialvehiculo` varchar(20) NOT NULL,
  `idtipovehiculo` int(11) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `modelo` decimal(10,0) NOT NULL,
  `color` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `fechaini` date NOT NULL,
  `fechafin` date NOT NULL,
  `idcupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`serialvehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`serialvehiculo`, `idtipovehiculo`, `documento`, `modelo`, `color`, `marca`, `fechaini`, `fechafin`, `idcupo`) VALUES
('1224445', 1, '1022956475', '98', 'negro', 'mvw', '2019-03-03', '2019-03-17', 10),
('abc125', 1, '1022936', '2000', 'negro', 'zuzu', '2019-08-05', '2019-09-05', 3),
('abc126', 2, '1022937', '2001', 'negro', 'vmw', '2019-08-06', '2019-09-06', 4),
('abc127', 1, '1022938', '2002', 'negro', 'honda', '2019-08-07', '2019-09-07', 5),
('abc128', 2, '1022939', '2003', 'rojo', 'kawa', '2019-08-08', '2019-09-08', 6),
('abc129', 1, '1022940', '2004', 'rojo', 'zuzu', '2019-08-09', '2019-09-09', 7),
('abc130', 2, '1022941', '2005', 'rojo', 'vmw', '2019-08-10', '2019-09-10', 8),
('abc131', 1, '1022942', '2006', 'rojo', 'honda', '2019-08-11', '2019-09-11', 9),
('abc132', 1, '1022943', '2007', 'rojo', 'kawa', '2019-08-12', '2019-09-12', 10),
('abc133', 1, '1022944', '2008', 'rojo', 'zuzu', '2019-08-13', '2019-09-13', 11),
('abc134', 1, '1022945', '2009', 'rojo', 'vmw', '2019-08-14', '2019-09-14', 12),
('abc135', 1, '1022946', '2010', 'rojo', 'honda', '2019-08-15', '2019-09-15', 13),
('abc136', 1, '1022947', '2011', 'verde', 'kawa', '2019-08-16', '2019-09-16', 14),
('abc137', 2, '1022948', '2012', 'verde', 'zuzu', '2019-08-17', '2019-09-17', 15),
('abc138', 2, '1022949', '2013', 'verde', 'vmw', '2019-08-18', '2019-09-18', 16),
('abc139', 1, '1022950', '2014', 'verde', 'honda', '2019-08-19', '2019-09-19', 17),
('abc140', 1, '1022951', '2015', 'verde', 'kawa', '2019-08-20', '2019-09-20', 18),
('abc141', 1, '1022952', '2016', 'verde', 'zuzu', '2019-08-21', '2019-09-21', 19),
('abc142', 1, '1022953', '2017', 'verde', 'vmw', '2019-08-22', '2019-09-22', 20),
('abc143', 1, '1022954', '2018', 'azul', 'honda', '2019-08-23', '2019-09-23', 21),
('cbas12345 asd', 1, '1022950', '1998', 'negro', 'djcd', '2019-03-03', '2019-03-17', 19),
('cbas1234ASAAS', 2, '121212121212', '98', 'negro', 'mvw', '2019-03-31', '2019-03-31', 19);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `perfilesyii` FOREIGN KEY (`id`) REFERENCES `perfiles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
