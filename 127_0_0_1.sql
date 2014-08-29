-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-08-2014 a las 01:01:15
-- Versión del servidor: 5.5.34
-- Versión de PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Base de datos: `fifa`
--
CREATE DATABASE IF NOT EXISTS `fifa` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fifa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE IF NOT EXISTS `ciudad` (
  `idciudad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `continente`
--

CREATE TABLE IF NOT EXISTS `continente` (
  `idcontinente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcontinente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `continente`
--

INSERT INTO `continente` (`idcontinente`, `nombre`) VALUES
(1, 'mexico'),
(2, 'asia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE IF NOT EXISTS `entrenador` (
  `identrenador` int(11) NOT NULL AUTO_INCREMENT,
  `idpais` int(11) NOT NULL,
  PRIMARY KEY (`identrenador`),
  KEY `fk1Entrenador_idx` (`idpais`),
  KEY `fk2Entrenador_idx` (`identrenador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE IF NOT EXISTS `equipo` (
  `idequipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idpais` int(11) NOT NULL,
  `escudo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idequipo`),
  KEY `fk1Pais_idx` (`idpais`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`idequipo`, `nombre`, `idpais`, `escudo`) VALUES
(3, 'Brasil', 2, '1071647_482270195187492_2016594555_o.jpg'),
(4, 'Brasil', 2, '1071647_482270195187492_2016594555_o.jpg'),
(5, 'juan', 2, '1071647_482270195187492_2016594555_o.jpg'),
(8, 'juan', 2, '1044293_547721491949056_12451500_n.jpg'),
(9, '', 2, '1044293_547721491949056_12451500_n.jpg'),
(11, 'asd5445', 2, '1044293_547721491949056_12451500_n.jpg'),
(12, 'sds543', 2, '1071647_482270195187492_2016594555_o.jpg'),
(13, 'sds543', 2, '1071647_482270195187492_2016594555_o.jpg'),
(14, 'jua54545', 2, '1071647_482270195187492_2016594555_o.jpg'),
(16, 'zsasjdkas45', 2, '326182_2121272228321_1476633754_o.jpg'),
(17, 'dasda6', 2, '326182_2121272228321_1476633754_o.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadio`
--

CREATE TABLE IF NOT EXISTS `estadio` (
  `idestadio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idciudad` int(11) NOT NULL,
  PRIMARY KEY (`idestadio`),
  KEY `fkEstadio_idx` (`idciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `goles_jugador`
--

CREATE TABLE IF NOT EXISTS `goles_jugador` (
  `idresultado` int(11) NOT NULL AUTO_INCREMENT,
  `minutogol` time DEFAULT NULL,
  `idjuego` int(11) NOT NULL,
  `idjugador` int(11) NOT NULL,
  PRIMARY KEY (`idresultado`),
  KEY `fk_resultado_1_idx` (`idjuego`),
  KEY `fk_golesJugador_1_idx` (`idjugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integrante`
--

CREATE TABLE IF NOT EXISTS `integrante` (
  `idintegrante` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `estatura` float DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `idequipo` int(11) NOT NULL,
  PRIMARY KEY (`idintegrante`),
  KEY `fkIntegrante_idx` (`idequipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';

--
-- Volcado de datos para la tabla `integrante`
--

INSERT INTO `integrante` (`idintegrante`, `nombre`, `apellido`, `peso`, `estatura`, `foto`, `edad`, `idequipo`) VALUES
(0, 'juaj', 'sjasjakj', 4, 45, '326182_2121272228321_1476633754_o.jpg', 45, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE IF NOT EXISTS `juego` (
  `idjuego` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `idequipolocal` int(11) NOT NULL,
  `idequipovisitante` int(11) NOT NULL,
  `idestadio` int(11) NOT NULL,
  PRIMARY KEY (`idjuego`),
  KEY `fk1Juego_idx` (`idestadio`),
  KEY `fk2Juego_idx` (`idequipolocal`),
  KEY `fk3Juego_idx` (`idequipovisitante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE IF NOT EXISTS `jugador` (
  `idjugador` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `idintegrante` int(11) NOT NULL,
  `idposicion` int(11) NOT NULL,
  PRIMARY KEY (`idjugador`),
  KEY `fk2Jugador_idx` (`idposicion`),
  KEY `fk1Jugador` (`idintegrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE IF NOT EXISTS `pais` (
  `idpais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `bandera` varchar(45) DEFAULT NULL,
  `idcontinente` int(11) NOT NULL,
  PRIMARY KEY (`idpais`),
  KEY `fkContinente_idx` (`idcontinente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`idpais`, `nombre`, `bandera`, `idcontinente`) VALUES
(2, 'japon', 'olis.jpg', 1),
(15, 'juan', '1016125_655221394506419_162081605_n.jpg', 2),
(16, '56565', '326182_2121272228321_1476633754_o.jpg', 2),
(17, '56565', '326182_2121272228321_1476633754_o.jpg', 2),
(18, '15451', '326182_2121272228321_1476633754_o.jpg', 1),
(19, '15451', '326182_2121272228321_1476633754_o.jpg', 1),
(20, 'zcxzxcz4455', '326182_2121272228321_1476633754_o.jpg', 1),
(21, 'zcxzxcz4455', '326182_2121272228321_1476633754_o.jpg', 1),
(22, '15154', '326182_2121272228321_1476633754_o.jpg', 1),
(23, '54545', '326182_2121272228321_1476633754_o.jpg', 1),
(24, '54545', '326182_2121272228321_1476633754_o.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posision`
--

CREATE TABLE IF NOT EXISTS `posision` (
  `idposision` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `abreviatura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idposision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas_jugador`
--

CREATE TABLE IF NOT EXISTS `tarjetas_jugador` (
  `idtarjetajugador` int(11) NOT NULL AUTO_INCREMENT,
  `minutotarjeta` time NOT NULL,
  `idjuego` int(11) NOT NULL,
  `idjugador` int(11) NOT NULL,
  `tipotarjeta` varchar(10) NOT NULL,
  PRIMARY KEY (`idtarjetajugador`),
  KEY `fk_resultado_1_idx` (`idjuego`),
  KEY `fk_golesJugador_1_idx` (`idjugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `rol` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `email`, `password`, `rol`) VALUES
(1, 'lara@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `fk1Entrenador` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2Entrenador` FOREIGN KEY (`identrenador`) REFERENCES `integrante` (`idintegrante`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `fk1Equipo` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estadio`
--
ALTER TABLE `estadio`
  ADD CONSTRAINT `fkEstadio` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `goles_jugador`
--
ALTER TABLE `goles_jugador`
  ADD CONSTRAINT `fk_golesJugador_1` FOREIGN KEY (`idjugador`) REFERENCES `jugador` (`idjugador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_resultado_1` FOREIGN KEY (`idjuego`) REFERENCES `juego` (`idjuego`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `integrante`
--
ALTER TABLE `integrante`
  ADD CONSTRAINT `fkIntegrante` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `fk1Juego` FOREIGN KEY (`idestadio`) REFERENCES `estadio` (`idestadio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2Juego` FOREIGN KEY (`idequipolocal`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk3Juego` FOREIGN KEY (`idequipovisitante`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `fk1Jugador` FOREIGN KEY (`idintegrante`) REFERENCES `integrante` (`idintegrante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2Jugador` FOREIGN KEY (`idposicion`) REFERENCES `posision` (`idposision`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pais`
--
ALTER TABLE `pais`
  ADD CONSTRAINT `fkPais` FOREIGN KEY (`idcontinente`) REFERENCES `continente` (`idcontinente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tarjetas_jugador`
--
ALTER TABLE `tarjetas_jugador`
  ADD CONSTRAINT `fk_golesJugador_10` FOREIGN KEY (`idjugador`) REFERENCES `jugador` (`idjugador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_resultado_10` FOREIGN KEY (`idjuego`) REFERENCES `juego` (`idjuego`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `fifa2014`
--
CREATE DATABASE IF NOT EXISTS `fifa2014` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `fifa2014`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE IF NOT EXISTS `ciudad` (
  `idciudad` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE IF NOT EXISTS `entrenador` (
  `identrenador` int(11) NOT NULL AUTO_INCREMENT,
  `idpais` int(11) NOT NULL,
  PRIMARY KEY (`identrenador`),
  KEY `fk1Entrenador_idx` (`idpais`),
  KEY `fk2Entrenador_idx` (`identrenador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadio`
--

CREATE TABLE IF NOT EXISTS `estadio` (
  `idestadio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `idciudad` int(11) NOT NULL,
  PRIMARY KEY (`idestadio`),
  KEY `fkEstadio_idx` (`idciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `goles_jugador`
--

CREATE TABLE IF NOT EXISTS `goles_jugador` (
  `idresultado` int(11) NOT NULL AUTO_INCREMENT,
  `minutogol` time DEFAULT NULL,
  `idjuego` int(11) NOT NULL,
  `idjugador` int(11) NOT NULL,
  PRIMARY KEY (`idresultado`),
  KEY `fk_resultado_1_idx` (`idjuego`),
  KEY `fk_golesJugador_1_idx` (`idjugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE IF NOT EXISTS `juego` (
  `idjuego` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `idequipolocal` int(11) NOT NULL,
  `idequipovisitante` int(11) NOT NULL,
  `idestadio` int(11) NOT NULL,
  PRIMARY KEY (`idjuego`),
  KEY `fk1Juego_idx` (`idestadio`),
  KEY `fk2Juego_idx` (`idequipolocal`),
  KEY `fk3Juego_idx` (`idequipovisitante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='	' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE IF NOT EXISTS `pais` (
  `idpais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `bandera` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `idcontinente` int(11) NOT NULL,
  PRIMARY KEY (`idpais`),
  KEY `fkContinente_idx` (`idcontinente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas_jugador`
--

CREATE TABLE IF NOT EXISTS `tarjetas_jugador` (
  `idtarjetajugador` int(11) NOT NULL AUTO_INCREMENT,
  `minutotarjeta` time NOT NULL,
  `idjuego` int(11) NOT NULL,
  `idjugador` int(11) NOT NULL,
  `tipotarjeta` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`idtarjetajugador`),
  KEY `fk_resultado_1_idx` (`idjuego`),
  KEY `fk_golesJugador_1_idx` (`idjugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `fk1Entrenador` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2Entrenador` FOREIGN KEY (`identrenador`) REFERENCES `integrante` (`idintegrante`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estadio`
--
ALTER TABLE `estadio`
  ADD CONSTRAINT `fkEstadio` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `goles_jugador`
--
ALTER TABLE `goles_jugador`
  ADD CONSTRAINT `fk_golesJugador_1` FOREIGN KEY (`idjugador`) REFERENCES `jugador` (`idjugador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_resultado_1` FOREIGN KEY (`idjuego`) REFERENCES `juego` (`idjuego`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `fk1Juego` FOREIGN KEY (`idestadio`) REFERENCES `estadio` (`idestadio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2Juego` FOREIGN KEY (`idequipolocal`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk3Juego` FOREIGN KEY (`idequipovisitante`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pais`
--
ALTER TABLE `pais`
  ADD CONSTRAINT `fkPais` FOREIGN KEY (`idcontinente`) REFERENCES `continente` (`idcontinente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tarjetas_jugador`
--
ALTER TABLE `tarjetas_jugador`
  ADD CONSTRAINT `fk_golesJugador_10` FOREIGN KEY (`idjugador`) REFERENCES `jugador` (`idjugador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_resultado_10` FOREIGN KEY (`idjuego`) REFERENCES `juego` (`idjuego`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `fifa20142014`
--
CREATE DATABASE IF NOT EXISTS `fifa20142014` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fifa20142014`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `continente`
--

CREATE TABLE IF NOT EXISTS `continente` (
  `idcontinente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcontinente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE IF NOT EXISTS `equipo` (
  `idequipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idpais` int(11) NOT NULL,
  `escudo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idequipo`),
  KEY `fk1Pais_idx` (`idpais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integrante`
--

CREATE TABLE IF NOT EXISTS `integrante` (
  `idintegrante` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `estatura` float DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `idequipo` int(11) NOT NULL,
  PRIMARY KEY (`idintegrante`),
  KEY `fkIntegrante_idx` (`idequipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE IF NOT EXISTS `jugador` (
  `idjugador` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `idintegrante` int(11) NOT NULL,
  `idposicion` int(11) NOT NULL,
  PRIMARY KEY (`idjugador`),
  KEY `fk2Jugador_idx` (`idposicion`),
  KEY `fk1Jugador` (`idintegrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posision`
--

CREATE TABLE IF NOT EXISTS `posision` (
  `idposision` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `abreviatura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idposision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `fk1Equipo` FOREIGN KEY (`idpais`) REFERENCES `fifa2014`.`pais` (`idpais`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `integrante`
--
ALTER TABLE `integrante`
  ADD CONSTRAINT `fkIntegrante` FOREIGN KEY (`idequipo`) REFERENCES `fifa2014`.`equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `fk1Jugador` FOREIGN KEY (`idintegrante`) REFERENCES `fifa2014`.`integrante` (`idintegrante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2Jugador` FOREIGN KEY (`idposicion`) REFERENCES `fifa2014`.`posision` (`idposision`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `mundial2014`
--
CREATE DATABASE IF NOT EXISTS `mundial2014` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `mundial2014`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE IF NOT EXISTS `ciudad` (
  `idciudad` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `continente`
--

CREATE TABLE IF NOT EXISTS `continente` (
  `idcontinente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcontinente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE IF NOT EXISTS `entrenador` (
  `identrenador` int(11) NOT NULL AUTO_INCREMENT,
  `idpais` int(11) NOT NULL,
  PRIMARY KEY (`identrenador`),
  KEY `fk1Entrenador_idx` (`idpais`),
  KEY `fk2Entrenador_idx` (`identrenador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE IF NOT EXISTS `equipo` (
  `idequipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `idpais` int(11) NOT NULL,
  `escudo` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idequipo`),
  KEY `fk1Pais_idx` (`idpais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadio`
--

CREATE TABLE IF NOT EXISTS `estadio` (
  `idestadio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `idciudad` int(11) NOT NULL,
  PRIMARY KEY (`idestadio`),
  KEY `fkEstadio_idx` (`idciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `goles_jugador`
--

CREATE TABLE IF NOT EXISTS `goles_jugador` (
  `idresultado` int(11) NOT NULL AUTO_INCREMENT,
  `minutogol` time DEFAULT NULL,
  `idjuego` int(11) NOT NULL,
  `idjugador` int(11) NOT NULL,
  PRIMARY KEY (`idresultado`),
  KEY `fk_resultado_1_idx` (`idjuego`),
  KEY `fk_golesJugador_1_idx` (`idjugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integrante`
--

CREATE TABLE IF NOT EXISTS `integrante` (
  `idintegrante` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `estatura` float DEFAULT NULL,
  `foto` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `idequipo` int(11) NOT NULL,
  PRIMARY KEY (`idintegrante`),
  KEY `fkIntegrante_idx` (`idequipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='	';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE IF NOT EXISTS `juego` (
  `idjuego` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `idequipolocal` int(11) NOT NULL,
  `idequipovisitante` int(11) NOT NULL,
  `idestadio` int(11) NOT NULL,
  PRIMARY KEY (`idjuego`),
  KEY `fk1Juego_idx` (`idestadio`),
  KEY `fk2Juego_idx` (`idequipolocal`),
  KEY `fk3Juego_idx` (`idequipovisitante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='	' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE IF NOT EXISTS `jugador` (
  `idjugador` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `idintegrante` int(11) NOT NULL,
  `idposicion` int(11) NOT NULL,
  PRIMARY KEY (`idjugador`),
  KEY `fk2Jugador_idx` (`idposicion`),
  KEY `fk1Jugador` (`idintegrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE IF NOT EXISTS `pais` (
  `idpais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `bandera` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `idcontinente` int(11) NOT NULL,
  PRIMARY KEY (`idpais`),
  KEY `fkContinente_idx` (`idcontinente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posision`
--

CREATE TABLE IF NOT EXISTS `posision` (
  `idposision` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `abreviatura` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idposision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas_jugador`
--

CREATE TABLE IF NOT EXISTS `tarjetas_jugador` (
  `idtarjetajugador` int(11) NOT NULL AUTO_INCREMENT,
  `minutotarjeta` time NOT NULL,
  `idjuego` int(11) NOT NULL,
  `idjugador` int(11) NOT NULL,
  `tipotarjeta` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`idtarjetajugador`),
  KEY `fk_resultado_1_idx` (`idjuego`),
  KEY `fk_golesJugador_1_idx` (`idjugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `fk1Entrenador` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2Entrenador` FOREIGN KEY (`identrenador`) REFERENCES `integrante` (`idintegrante`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `fk1Equipo` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estadio`
--
ALTER TABLE `estadio`
  ADD CONSTRAINT `fkEstadio` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `goles_jugador`
--
ALTER TABLE `goles_jugador`
  ADD CONSTRAINT `fk_golesJugador_1` FOREIGN KEY (`idjugador`) REFERENCES `jugador` (`idjugador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_resultado_1` FOREIGN KEY (`idjuego`) REFERENCES `juego` (`idjuego`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `integrante`
--
ALTER TABLE `integrante`
  ADD CONSTRAINT `fkIntegrante` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `fk1Juego` FOREIGN KEY (`idestadio`) REFERENCES `estadio` (`idestadio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2Juego` FOREIGN KEY (`idequipolocal`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk3Juego` FOREIGN KEY (`idequipovisitante`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `fk1Jugador` FOREIGN KEY (`idintegrante`) REFERENCES `integrante` (`idintegrante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2Jugador` FOREIGN KEY (`idposicion`) REFERENCES `posision` (`idposision`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pais`
--
ALTER TABLE `pais`
  ADD CONSTRAINT `fkPais` FOREIGN KEY (`idcontinente`) REFERENCES `continente` (`idcontinente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tarjetas_jugador`
--
ALTER TABLE `tarjetas_jugador`
  ADD CONSTRAINT `fk_golesJugador_10` FOREIGN KEY (`idjugador`) REFERENCES `jugador` (`idjugador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_resultado_10` FOREIGN KEY (`idjuego`) REFERENCES `juego` (`idjuego`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'fifa', 'ciudad', 'nombre', '', '', '_', ''),
(2, 'fifa', 'estadio', 'nombre', '', '', '_', ''),
(3, 'fifa', 'integrante', 'edad', '', '', '_', ''),
(4, 'revista', 'autor', 'id_autor', '', '', '_', ''),
(5, 'revista', 'articulo', 'introduccion', '', '', '_', ''),
(6, 'revista', 'articulo', 'abstrac', '', '', '_', ''),
(7, 'revista', 'revista', 'fecha', '', '', '_', ''),
(8, 'revista', 'articulo', 'fecha_creacion', '', '', '_', ''),
(9, 'fifa', 'usuarios', 'id_usuario', '', '', '_', ''),
(10, 'fifa', 'usuarios', 'email', '', '', '_', ''),
(11, 'fifa', 'usuarios', 'password', '', '', '_', ''),
(12, 'fifa', 'usuarios', 'rol', '', '', '_', ''),
(17, 'revista', 'usuarios', 'email', '', '', '_', ''),
(16, 'revista', 'usuarios', 'id_usuario', '', '', '_', ''),
(18, 'revista', 'usuarios', 'password', '', '', '_', ''),
(19, 'revista', 'usuarios', 'rol', '', '', '_', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"revista","table":"contenido_extra"},{"db":"revista","table":"indice_articulo"},{"db":"revista","table":"articulo_autor"},{"db":"revista","table":"autor"},{"db":"revista","table":"indice"},{"db":"revista","table":"tipo_contenido"},{"db":"revista","table":"revista"},{"db":"revista","table":"status"},{"db":"revista","table":"usuarios"},{"db":"revista","table":"articulo"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-07-15 01:50:15', '{"lang":"es"}');
--
-- Base de datos: `proyrevista`
--
CREATE DATABASE IF NOT EXISTS `proyrevista` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `proyrevista`;
--
-- Base de datos: `revista`
--
CREATE DATABASE IF NOT EXISTS `revista` DEFAULT CHARACTER SET utf8 COLLATE utf8_slovenian_ci;
USE `revista`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  `resumen` longtext,
  `abstrac` longtext,
  `introduccion` longtext,
  `metodologia` longtext,
  `contenido` longtext,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `archivo_pdf` varchar(100) DEFAULT NULL,
  `id_status` int(11) NOT NULL,
  `conclusiones` longtext,
  `agradecimientos` longtext,
  `referencias` longtext,
  `id_indice_articulo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_articulo`),
  KEY `fk_status_articulo_idx` (`id_status`),
  KEY `idx_articulo` (`id_indice_articulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id_articulo`, `nombre`, `resumen`, `abstrac`, `introduccion`, `metodologia`, `contenido`, `fecha_creacion`, `archivo_pdf`, `id_status`, `conclusiones`, `agradecimientos`, `referencias`, `id_indice_articulo`) VALUES
(1, 'f<p>dddddddddddddddddddddd ddddd<br></p>', '<p>ffffffffffffff fffffffffffff<br></p>', '<p>ssssssssssssssss sssssssss<br></p>', '<p>ddddddddddddddd dddddddddd<br></p>', '<p>ssssssssssssssssss ddddddddddd<br></p>', '<p>dddddddddd sssssssssssss<br></p>', '2014-08-22 05:00:00', 'Calendario Escolar Ago-Dic 2014.pdf', 1, '<p>dddddddddddddddddddd ffffffffffffff<br></p>', '<p>ssssssssssssssssssss ddddddddddddd<br></p>', '<p>dddddddddddd ssssssssssssssssssss<br></p>', NULL),
(2, '<p>Primera</p>', '<p>kskasjdk</p>', '<p>dkdjkasjdkja</p>', '<p>dkjfkdjfsd</p>', '<p>jdfkjfksjfk</p>', '<p>ksjfkjdkjsf</p>', '2014-08-02 05:00:00', 'Practica de particiones.pdf', 1, '<p>fjdkdsjfksjdf</p>', '<p>fdjksjfksjfksd</p>', '<p>dfkfjksjfkd</p>', NULL),
(3, '<p>Segunda</p>', '<p>dkasdjkasjd</p>', '<p>djksjdkasd</p>', '<p>djkajdkasd</p>', '<p>dfjksjdkasjdka</p>', '<p>dksjdkajasda</p>', '2014-08-06 05:00:00', NULL, 3, '<p>daksjdkasdds</p>', '<p>sdjaksjdkasd</p>', '<p>daskdjkasjdka</p>', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_autor`
--

CREATE TABLE IF NOT EXISTS `articulo_autor` (
  `id_articulo_autor` int(11) NOT NULL AUTO_INCREMENT,
  `id_articulo` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  PRIMARY KEY (`id_articulo_autor`),
  KEY `fk_articulo_idx` (`id_autor`),
  KEY `fk_autor__idx` (`id_articulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `articulo_autor`
--

INSERT INTO `articulo_autor` (`id_articulo_autor`, `id_articulo`, `id_autor`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE IF NOT EXISTS `autor` (
  `id_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id_autor`, `nombre`, `apellidos`, `email`) VALUES
(1, 'Ulises', 'gomez', 'gomez@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_extra`
--

CREATE TABLE IF NOT EXISTS `contenido_extra` (
  `id_contenido_extra` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `archivo_pdf` varchar(100) DEFAULT NULL,
  `id_tipo_contenido` int(11) DEFAULT NULL,
  `id_indice_articulo` int(11) DEFAULT NULL,
  `contenido` longtext NOT NULL,
  PRIMARY KEY (`id_contenido_extra`),
  KEY `idx_contenido_extra` (`id_tipo_contenido`),
  KEY `idx_contenido_extra_0` (`id_indice_articulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `contenido_extra`
--

INSERT INTO `contenido_extra` (`id_contenido_extra`, `nombre`, `archivo_pdf`, `id_tipo_contenido`, `id_indice_articulo`, `contenido`) VALUES
(1, 'Primera', NULL, 1, 2, 'El cielo de cae'),
(2, 'Primera', 'documentacion_certificaciÃ³n_microsoft.pdf', 1, NULL, '<p>sajdkaskdkajsdk</p>'),
(3, 'juan', 'documentacion_certificaciÃ³n_microsoft.pdf', 2, NULL, '<p>sajska</p>'),
(4, 'olis', 'Reporte de prÃ¡ctica 5.pdf', 2, NULL, '<p>djskjd</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indice`
--

CREATE TABLE IF NOT EXISTS `indice` (
  `id_indice` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(500) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `id_revista` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_indice`),
  KEY `fk_revista_idx` (`id_revista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `indice`
--

INSERT INTO `indice` (`id_indice`, `titulo`, `numero`, `id_revista`) VALUES
(1, 'Lo de hoy', 1, 1),
(2, 'Lo de syer', 2, 1),
(3, 'numero 1', 1, 2),
(4, 'Segunda', 3, 2),
(5, 'segunda', 3, 1),
(6, 'Experimento', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indice_articulo`
--

CREATE TABLE IF NOT EXISTS `indice_articulo` (
  `id_indice_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `id_indice` int(11) NOT NULL,
  `numero` float NOT NULL,
  PRIMARY KEY (`id_indice_articulo`),
  KEY `fk_indice_idx` (`id_indice`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `indice_articulo`
--

INSERT INTO `indice_articulo` (`id_indice_articulo`, `id_indice`, `numero`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revista`
--

CREATE TABLE IF NOT EXISTS `revista` (
  `id_revista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  `portada` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `volumen` varchar(45) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `subtitulo` varchar(200) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `directorio` longtext,
  `editorial` longtext,
  `id_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_revista`),
  KEY `fk_status_revista_idx` (`id_status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `revista`
--

INSERT INTO `revista` (`id_revista`, `nombre`, `portada`, `fecha`, `volumen`, `titulo`, `subtitulo`, `numero`, `clave`, `directorio`, `editorial`, `id_status`) VALUES
(1, 'Coloquio', '', '2014-08-05', '1', 'innovando', 'inovando hoy', 3, '112ewe', 'Olis', 'holis', 1),
(2, 'Primera', 'Primera_326182_2121272228321_1476633754_o.jpg', '2014-08-02', '10', 'Primera', 'Primera1', 10, 'C101010', '<p>Primera Primera</p>', '<p>Primera</p>', 3),
(3, 'Tercera', 'Tercera_woody.jpg', '2014-08-07', '5', 'campo', 'ter', 5, 'dasd121', '<p>sdhjasgda&nbsp;&nbsp;&nbsp;&nbsp;</p>', '<p>dhjshdjash</p>', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id_status`, `status`) VALUES
(1, 'Recibido'),
(2, 'En revición'),
(3, 'Aprobado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_contenido`
--

CREATE TABLE IF NOT EXISTS `tipo_contenido` (
  `id_tipo_contenido` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_contenido`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipo_contenido`
--

INSERT INTO `tipo_contenido` (`id_tipo_contenido`, `tipo`) VALUES
(1, 'Entrevista'),
(2, 'Lince noticias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `rol` varchar(25) COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `email`, `password`, `rol`) VALUES
(1, 'lara@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(2, 'angel@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(3, 'grimaldo@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'supervisor'),
(4, 'industrial', '97b28f377abda9bccb35251e478d0059', 'admin');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `fk_articulo_indice_articulo_1` FOREIGN KEY (`id_indice_articulo`) REFERENCES `indice_articulo` (`id_indice_articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_status_articulo` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `articulo_autor`
--
ALTER TABLE `articulo_autor`
  ADD CONSTRAINT `fk_articulo_autor` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_autor_articulo` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id_articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `contenido_extra`
--
ALTER TABLE `contenido_extra`
  ADD CONSTRAINT `fk_contenido_extra` FOREIGN KEY (`id_tipo_contenido`) REFERENCES `tipo_contenido` (`id_tipo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contenido_extra_1` FOREIGN KEY (`id_indice_articulo`) REFERENCES `indice_articulo` (`id_indice_articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `indice`
--
ALTER TABLE `indice`
  ADD CONSTRAINT `fk_revista` FOREIGN KEY (`id_revista`) REFERENCES `revista` (`id_revista`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `indice_articulo`
--
ALTER TABLE `indice_articulo`
  ADD CONSTRAINT `fk_indice` FOREIGN KEY (`id_indice`) REFERENCES `indice` (`id_indice`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `revista`
--
ALTER TABLE `revista`
  ADD CONSTRAINT `fk_status_revista` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;
--
-- Base de datos: `tienda`
--
CREATE DATABASE IF NOT EXISTS `tienda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `action_recorder`
--

CREATE TABLE IF NOT EXISTS `action_recorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_action_recorder_module` (`module`),
  KEY `idx_action_recorder_user_id` (`user_id`),
  KEY `idx_action_recorder_identifier` (`identifier`),
  KEY `idx_action_recorder_date_added` (`date_added`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `action_recorder`
--

INSERT INTO `action_recorder` (`id`, `module`, `user_id`, `user_name`, `identifier`, `success`, `date_added`) VALUES
(1, 'ar_admin_login', 1, 'juan420', '', '1', '2014-08-27 17:23:19'),
(2, 'ar_admin_login', 0, 'juan420', '', '0', '2014-08-27 18:21:21'),
(3, 'ar_admin_login', 0, 'juan420', '', '0', '2014-08-27 18:21:31'),
(4, 'ar_admin_login', 1, 'juan420', '', '1', '2014-08-27 18:21:36'),
(5, 'ar_admin_login', 1, 'juan420', '', '1', '2014-08-27 22:06:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address_book`
--

CREATE TABLE IF NOT EXISTS `address_book` (
  `address_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_book_id`),
  KEY `idx_address_book_customers_id` (`customers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `customers_id`, `entry_gender`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`) VALUES
(1, 1, 'm', '', 'Daniel', 'Cruz', 'Caballo blanco 17', 'Cantar', '38600', 'Celaya', 'Guanajuato', 138, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address_format`
--

CREATE TABLE IF NOT EXISTS `address_format` (
  `address_format_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_format` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address_summary` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`address_format_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `address_format`
--

INSERT INTO `address_format` (`address_format_id`, `address_format`, `address_summary`) VALUES
(1, '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', '$city / $country'),
(2, '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country', '$city, $state / $country'),
(3, '$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country', '$state / $country'),
(4, '$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country', '$postcode / $country'),
(5, '$firstname $lastname$cr$streets$cr$postcode $city$cr$country', '$city / $country');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrators`
--

CREATE TABLE IF NOT EXISTS `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `administrators`
--

INSERT INTO `administrators` (`id`, `user_name`, `user_password`) VALUES
(1, 'juan420', '$P$D041zVrM9obUDi5nGttnoGjHh1t6MI/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banners_html_text` text COLLATE utf8_unicode_ci,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`banners_id`),
  KEY `idx_banners_group` (`banners_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`) VALUES
(1, 'osCommerce', 'http://www.oscommerce.com', 'banners/oscommerce.gif', 'footer', '', 0, NULL, NULL, '2014-08-25 17:51:17', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners_history`
--

CREATE TABLE IF NOT EXISTS `banners_history` (
  `banners_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL,
  PRIMARY KEY (`banners_history_id`),
  KEY `idx_banners_history_banners_id` (`banners_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `banners_history`
--

INSERT INTO `banners_history` (`banners_history_id`, `banners_id`, `banners_shown`, `banners_clicked`, `banners_history_date`) VALUES
(1, 1, 1, 0, '2014-08-25 17:54:40'),
(2, 1, 89, 0, '2014-08-27 17:22:16'),
(3, 1, 8, 0, '2014-08-29 17:20:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `parent_id`, `sort_order`, `date_added`, `last_modified`) VALUES
(1, 'category_hardware.gif', 0, 1, '2014-08-25 17:51:17', NULL),
(2, 'category_software.gif', 0, 2, '2014-08-25 17:51:17', NULL),
(3, 'category_dvd_movies.gif', 0, 3, '2014-08-25 17:51:17', NULL),
(4, 'subcategory_graphic_cards.gif', 1, 0, '2014-08-25 17:51:17', NULL),
(5, 'subcategory_printers.gif', 1, 0, '2014-08-25 17:51:17', NULL),
(6, 'subcategory_monitors.gif', 1, 0, '2014-08-25 17:51:17', NULL),
(7, 'subcategory_speakers.gif', 1, 0, '2014-08-25 17:51:17', NULL),
(8, 'subcategory_keyboards.gif', 1, 0, '2014-08-25 17:51:17', NULL),
(9, 'subcategory_mice.gif', 1, 0, '2014-08-25 17:51:17', NULL),
(10, 'subcategory_action.gif', 3, 0, '2014-08-25 17:51:17', NULL),
(11, 'subcategory_science_fiction.gif', 3, 0, '2014-08-25 17:51:17', NULL),
(12, 'subcategory_comedy.gif', 3, 0, '2014-08-25 17:51:17', NULL),
(13, 'subcategory_cartoons.gif', 3, 0, '2014-08-25 17:51:17', NULL),
(14, 'subcategory_thriller.gif', 3, 0, '2014-08-25 17:51:17', NULL),
(15, 'subcategory_drama.gif', 3, 0, '2014-08-25 17:51:17', NULL),
(16, 'subcategory_memory.gif', 1, 0, '2014-08-25 17:51:17', NULL),
(17, 'subcategory_cdrom_drives.gif', 1, 0, '2014-08-25 17:51:17', NULL),
(18, 'subcategory_simulation.gif', 2, 0, '2014-08-25 17:51:17', NULL),
(19, 'subcategory_action_games.gif', 2, 0, '2014-08-25 17:51:17', NULL),
(20, 'subcategory_strategy.gif', 2, 0, '2014-08-25 17:51:17', NULL),
(21, 'category_gadgets.png', 0, 4, '2014-08-25 17:51:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories_description`
--

CREATE TABLE IF NOT EXISTS `categories_description` (
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`categories_id`,`language_id`),
  KEY `idx_categories_name` (`categories_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categories_description`
--

INSERT INTO `categories_description` (`categories_id`, `language_id`, `categories_name`) VALUES
(10, 1, 'Action'),
(10, 2, 'Action'),
(19, 1, 'Action'),
(19, 2, 'Action'),
(13, 1, 'Cartoons'),
(13, 2, 'Cartoons'),
(17, 1, 'CDROM Drives'),
(17, 2, 'CDROM Drives'),
(12, 1, 'Comedy'),
(12, 2, 'Comedy'),
(15, 1, 'Drama'),
(15, 2, 'Drama'),
(3, 1, 'DVD Movies'),
(3, 2, 'DVD Movies'),
(21, 1, 'Gadgets'),
(21, 2, 'Gadgets'),
(4, 1, 'Graphics Cards'),
(4, 2, 'Graphics Cards'),
(1, 1, 'Hardware'),
(1, 2, 'Hardware'),
(8, 1, 'Keyboards'),
(8, 2, 'Keyboards'),
(16, 1, 'Memory'),
(16, 2, 'Memory'),
(9, 1, 'Mice'),
(9, 2, 'Mice'),
(6, 1, 'Monitors'),
(6, 2, 'Monitors'),
(5, 1, 'Printers'),
(5, 2, 'Printers'),
(11, 1, 'Science Fiction'),
(11, 2, 'Science Fiction'),
(18, 1, 'Simulation'),
(18, 2, 'Simulation'),
(2, 1, 'Software'),
(2, 2, 'Software'),
(7, 1, 'Speakers'),
(7, 2, 'Speakers'),
(20, 1, 'Strategy'),
(20, 2, 'Strategy'),
(14, 1, 'Thriller'),
(14, 2, 'Thriller');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_value` text COLLATE utf8_unicode_ci NOT NULL,
  `configuration_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `use_function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=278 ;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(1, 'Store Name', 'STORE_NAME', 'Store Groot', 'The name of my store', 1, 1, NULL, '2014-08-25 17:51:17', NULL, NULL),
(2, 'Store Owner', 'STORE_OWNER', 'Store Groot', 'The name of my store owner', 1, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(3, 'E-Mail Address', 'STORE_OWNER_EMAIL_ADDRESS', 'lara_zero16@hotmailcom', 'The e-mail address of my store owner', 1, 3, NULL, '2014-08-25 17:51:17', NULL, NULL),
(4, 'E-Mail From', 'EMAIL_FROM', '"Store Groot" <lara_zero16@hotmailcom>', 'The e-mail address used in (sent) e-mails', 1, 4, NULL, '2014-08-25 17:51:17', NULL, NULL),
(5, 'Country', 'STORE_COUNTRY', '223', 'The country my store is located in <br /><br /><strong>Note: Please remember to update the store zone.</strong>', 1, 6, NULL, '2014-08-25 17:51:17', 'tep_get_country_name', 'tep_cfg_pull_down_country_list('),
(6, 'Zone', 'STORE_ZONE', '18', 'The zone my store is located in', 1, 7, NULL, '2014-08-25 17:51:17', 'tep_cfg_get_zone_name', 'tep_cfg_pull_down_zone_list('),
(7, 'Expected Sort Order', 'EXPECTED_PRODUCTS_SORT', 'desc', 'This is the sort order used in the expected products box.', 1, 8, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''asc'', ''desc''), '),
(8, 'Expected Sort Field', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', 'The column to sort by in the expected products box.', 1, 9, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''products_name'', ''date_expected''), '),
(9, 'Switch To Default Language Currency', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Automatically switch to the language''s currency when it is changed', 1, 10, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(10, 'Send Extra Order Emails To', 'SEND_EXTRA_ORDER_EMAILS_TO', '', 'Send extra order emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 1, 11, NULL, '2014-08-25 17:51:17', NULL, NULL),
(11, 'Use Search-Engine Safe URLs', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Use search-engine safe urls for all site links', 1, 12, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(12, 'Display Cart After Adding Product', 'DISPLAY_CART', 'true', 'Display the shopping cart after adding a product (or return back to their origin)', 1, 14, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(13, 'Allow Guest To Tell A Friend', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'false', 'Allow guests to tell a friend about a product', 1, 15, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(14, 'Default Search Operator', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Default search operators', 1, 17, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''and'', ''or''), '),
(15, 'Store Address and Phone', 'STORE_NAME_ADDRESS', 'Store Name\nAddress\nCountry\nPhone', 'This is the Store Name, Address and Phone used on printable documents and displayed online', 1, 18, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_textarea('),
(16, 'Show Category Counts', 'SHOW_COUNTS', 'true', 'Count recursively how many products are in each category', 1, 19, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(17, 'Tax Decimal Places', 'TAX_DECIMAL_PLACES', '0', 'Pad the tax value this amount of decimal places', 1, 20, NULL, '2014-08-25 17:51:17', NULL, NULL),
(18, 'Display Prices with Tax', 'DISPLAY_PRICE_WITH_TAX', 'false', 'Display prices with tax included (true) or add the tax at the end (false)', 1, 21, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(19, 'First Name', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Minimum length of first name', 2, 1, NULL, '2014-08-25 17:51:17', NULL, NULL),
(20, 'Last Name', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Minimum length of last name', 2, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(21, 'Date of Birth', 'ENTRY_DOB_MIN_LENGTH', '10', 'Minimum length of date of birth', 2, 3, NULL, '2014-08-25 17:51:17', NULL, NULL),
(22, 'E-Mail Address', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Minimum length of e-mail address', 2, 4, NULL, '2014-08-25 17:51:17', NULL, NULL),
(23, 'Street Address', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '5', 'Minimum length of street address', 2, 5, NULL, '2014-08-25 17:51:17', NULL, NULL),
(24, 'Company', 'ENTRY_COMPANY_MIN_LENGTH', '2', 'Minimum length of company name', 2, 6, NULL, '2014-08-25 17:51:17', NULL, NULL),
(25, 'Post Code', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Minimum length of post code', 2, 7, NULL, '2014-08-25 17:51:17', NULL, NULL),
(26, 'City', 'ENTRY_CITY_MIN_LENGTH', '3', 'Minimum length of city', 2, 8, NULL, '2014-08-25 17:51:17', NULL, NULL),
(27, 'State', 'ENTRY_STATE_MIN_LENGTH', '2', 'Minimum length of state', 2, 9, NULL, '2014-08-25 17:51:17', NULL, NULL),
(28, 'Telephone Number', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Minimum length of telephone number', 2, 10, NULL, '2014-08-25 17:51:17', NULL, NULL),
(29, 'Password', 'ENTRY_PASSWORD_MIN_LENGTH', '5', 'Minimum length of password', 2, 11, NULL, '2014-08-25 17:51:17', NULL, NULL),
(30, 'Credit Card Owner Name', 'CC_OWNER_MIN_LENGTH', '3', 'Minimum length of credit card owner name', 2, 12, NULL, '2014-08-25 17:51:17', NULL, NULL),
(31, 'Credit Card Number', 'CC_NUMBER_MIN_LENGTH', '10', 'Minimum length of credit card number', 2, 13, NULL, '2014-08-25 17:51:17', NULL, NULL),
(32, 'Review Text', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Minimum length of review text', 2, 14, NULL, '2014-08-25 17:51:17', NULL, NULL),
(33, 'Best Sellers', 'MIN_DISPLAY_BESTSELLERS', '1', 'Minimum number of best sellers to display', 2, 15, NULL, '2014-08-25 17:51:17', NULL, NULL),
(34, 'Also Purchased', 'MIN_DISPLAY_ALSO_PURCHASED', '1', 'Minimum number of products to display in the ''This Customer Also Purchased'' box', 2, 16, NULL, '2014-08-25 17:51:17', NULL, NULL),
(35, 'Address Book Entries', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Maximum address book entries a customer is allowed to have', 3, 1, NULL, '2014-08-25 17:51:17', NULL, NULL),
(36, 'Search Results', 'MAX_DISPLAY_SEARCH_RESULTS', '20', 'Amount of products to list', 3, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(37, 'Page Links', 'MAX_DISPLAY_PAGE_LINKS', '5', 'Number of ''number'' links use for page-sets', 3, 3, NULL, '2014-08-25 17:51:17', NULL, NULL),
(38, 'Special Products', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '9', 'Maximum number of products on special to display', 3, 4, NULL, '2014-08-25 17:51:17', NULL, NULL),
(39, 'New Products Module', 'MAX_DISPLAY_NEW_PRODUCTS', '9', 'Maximum number of new products to display in a category', 3, 5, NULL, '2014-08-25 17:51:17', NULL, NULL),
(40, 'Products Expected', 'MAX_DISPLAY_UPCOMING_PRODUCTS', '10', 'Maximum number of products expected to display', 3, 6, NULL, '2014-08-25 17:51:17', NULL, NULL),
(41, 'Manufacturers List', 'MAX_DISPLAY_MANUFACTURERS_IN_A_LIST', '0', 'Used in manufacturers box; when the number of manufacturers exceeds this number, a drop-down list will be displayed instead of the default list', 3, 7, NULL, '2014-08-25 17:51:17', NULL, NULL),
(42, 'Manufacturers Select Size', 'MAX_MANUFACTURERS_LIST', '1', 'Used in manufacturers box; when this value is ''1'' the classic drop-down list will be used for the manufacturers box. Otherwise, a list-box with the specified number of rows will be displayed.', 3, 7, NULL, '2014-08-25 17:51:17', NULL, NULL),
(43, 'Length of Manufacturers Name', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '15', 'Used in manufacturers box; maximum length of manufacturers name to display', 3, 8, NULL, '2014-08-25 17:51:17', NULL, NULL),
(44, 'New Reviews', 'MAX_DISPLAY_NEW_REVIEWS', '6', 'Maximum number of new reviews to display', 3, 9, NULL, '2014-08-25 17:51:17', NULL, NULL),
(45, 'Selection of Random Reviews', 'MAX_RANDOM_SELECT_REVIEWS', '10', 'How many records to select from to choose one random product review', 3, 10, NULL, '2014-08-25 17:51:17', NULL, NULL),
(46, 'Selection of Random New Products', 'MAX_RANDOM_SELECT_NEW', '10', 'How many records to select from to choose one random new product to display', 3, 11, NULL, '2014-08-25 17:51:17', NULL, NULL),
(47, 'Selection of Products on Special', 'MAX_RANDOM_SELECT_SPECIALS', '10', 'How many records to select from to choose one random product special to display', 3, 12, NULL, '2014-08-25 17:51:17', NULL, NULL),
(48, 'Categories To List Per Row', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'How many categories to list per row', 3, 13, NULL, '2014-08-25 17:51:17', NULL, NULL),
(49, 'New Products Listing', 'MAX_DISPLAY_PRODUCTS_NEW', '10', 'Maximum number of new products to display in new products page', 3, 14, NULL, '2014-08-25 17:51:17', NULL, NULL),
(50, 'Best Sellers', 'MAX_DISPLAY_BESTSELLERS', '10', 'Maximum number of best sellers to display', 3, 15, NULL, '2014-08-25 17:51:17', NULL, NULL),
(51, 'Also Purchased', 'MAX_DISPLAY_ALSO_PURCHASED', '6', 'Maximum number of products to display in the ''This Customer Also Purchased'' box', 3, 16, NULL, '2014-08-25 17:51:17', NULL, NULL),
(52, 'Customer Order History Box', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', 'Maximum number of products to display in the customer order history box', 3, 17, NULL, '2014-08-25 17:51:17', NULL, NULL),
(53, 'Order History', 'MAX_DISPLAY_ORDER_HISTORY', '10', 'Maximum number of orders to display in the order history page', 3, 18, NULL, '2014-08-25 17:51:17', NULL, NULL),
(54, 'Product Quantities In Shopping Cart', 'MAX_QTY_IN_CART', '99', 'Maximum number of product quantities that can be added to the shopping cart (0 for no limit)', 3, 19, NULL, '2014-08-25 17:51:17', NULL, NULL),
(55, 'Small Image Width', 'SMALL_IMAGE_WIDTH', '100', 'The pixel width of small images', 4, 1, NULL, '2014-08-25 17:51:17', NULL, NULL),
(56, 'Small Image Height', 'SMALL_IMAGE_HEIGHT', '80', 'The pixel height of small images', 4, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(57, 'Heading Image Width', 'HEADING_IMAGE_WIDTH', '57', 'The pixel width of heading images', 4, 3, NULL, '2014-08-25 17:51:17', NULL, NULL),
(58, 'Heading Image Height', 'HEADING_IMAGE_HEIGHT', '40', 'The pixel height of heading images', 4, 4, NULL, '2014-08-25 17:51:17', NULL, NULL),
(59, 'Subcategory Image Width', 'SUBCATEGORY_IMAGE_WIDTH', '100', 'The pixel width of subcategory images', 4, 5, NULL, '2014-08-25 17:51:17', NULL, NULL),
(60, 'Subcategory Image Height', 'SUBCATEGORY_IMAGE_HEIGHT', '57', 'The pixel height of subcategory images', 4, 6, NULL, '2014-08-25 17:51:17', NULL, NULL),
(61, 'Calculate Image Size', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', 'Calculate the size of images?', 4, 7, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(62, 'Image Required', 'IMAGE_REQUIRED', 'true', 'Enable to display broken images. Good for development.', 4, 8, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(63, 'Gender', 'ACCOUNT_GENDER', 'true', 'Display gender in the customers account', 5, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(64, 'Date of Birth', 'ACCOUNT_DOB', 'true', 'Display date of birth in the customers account', 5, 2, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(65, 'Company', 'ACCOUNT_COMPANY', 'true', 'Display company in the customers account', 5, 3, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(66, 'Suburb', 'ACCOUNT_SUBURB', 'true', 'Display suburb in the customers account', 5, 4, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(67, 'State', 'ACCOUNT_STATE', 'true', 'Display state in the customers account', 5, 5, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(68, 'Installed Modules', 'MODULE_PAYMENT_INSTALLED', 'cod.php;paypal_express.php;paypal_standard.php', 'List of payment module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: cod.php;paypal_express.php)', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(69, 'Installed Modules', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php', 'List of order_total module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(70, 'Installed Modules', 'MODULE_SHIPPING_INSTALLED', 'flat.php', 'List of shipping module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ups.php;flat.php;item.php)', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(71, 'Installed Modules', 'MODULE_ACTION_RECORDER_INSTALLED', 'ar_admin_login.php;ar_contact_us.php;ar_reset_password.php;ar_tell_a_friend.php', 'List of action recorder module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(72, 'Installed Modules', 'MODULE_SOCIAL_BOOKMARKS_INSTALLED', 'sb_email.php;sb_facebook.php;sb_google_plus_share.php;sb_pinterest.php;sb_twitter.php', 'List of social bookmark module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(73, 'Enable Cash On Delivery Module', 'MODULE_PAYMENT_COD_STATUS', 'True', 'Do you want to accept Cash On Delevery payments?', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(74, 'Payment Zone', 'MODULE_PAYMENT_COD_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2014-08-25 17:51:17', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(75, 'Sort order of display.', 'MODULE_PAYMENT_COD_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(76, 'Set Order Status', 'MODULE_PAYMENT_COD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2014-08-25 17:51:17', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(77, 'Enable Flat Shipping', 'MODULE_SHIPPING_FLAT_STATUS', 'True', 'Do you want to offer flat rate shipping?', 6, 0, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(78, 'Shipping Cost', 'MODULE_SHIPPING_FLAT_COST', '0.0', 'The shipping cost for all orders using this shipping method.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(79, 'Tax Class', 'MODULE_SHIPPING_FLAT_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2014-08-25 17:51:17', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes('),
(80, 'Shipping Zone', 'MODULE_SHIPPING_FLAT_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2014-08-25 17:51:17', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(81, 'Sort Order', 'MODULE_SHIPPING_FLAT_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(82, 'Default Currency', 'DEFAULT_CURRENCY', 'USD', 'Default Currency', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(83, 'Default Language', 'DEFAULT_LANGUAGE', 'es', 'Default Language', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(84, 'Default Order Status For New Orders', 'DEFAULT_ORDERS_STATUS_ID', '1', 'When a new order is created, this order status will be assigned to it.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(85, 'Display Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', 'Do you want to display the order shipping cost?', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(86, 'Sort Order', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '2', 'Sort order of display.', 6, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(87, 'Allow Free Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING', 'false', 'Do you want to allow free shipping?', 6, 3, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(88, 'Free Shipping For Orders Over', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER', '50', 'Provide free shipping for orders over the set amount.', 6, 4, NULL, '2014-08-25 17:51:17', 'currencies->format', NULL),
(89, 'Provide Free Shipping For Orders Made', 'MODULE_ORDER_TOTAL_SHIPPING_DESTINATION', 'national', 'Provide free shipping for orders sent to the set destination.', 6, 5, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''national'', ''international'', ''both''), '),
(90, 'Display Sub-Total', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', 'Do you want to display the order sub-total cost?', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(91, 'Sort Order', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '1', 'Sort order of display.', 6, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(92, 'Display Tax', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', 'Do you want to display the order tax value?', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(93, 'Sort Order', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '3', 'Sort order of display.', 6, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(94, 'Display Total', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', 'Do you want to display the total order value?', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(95, 'Sort Order', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '4', 'Sort order of display.', 6, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(96, 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_CONTACT_US_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(97, 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_TELL_A_FRIEND_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(98, 'Allowed Minutes', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_MINUTES', '5', 'Number of minutes to allow login attempts to occur.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(99, 'Allowed Attempts', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_ATTEMPTS', '3', 'Number of login attempts to allow within the specified period.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(100, 'Allowed Minutes', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_MINUTES', '5', 'Number of minutes to allow password resets to occur.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(101, 'Allowed Attempts', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_ATTEMPTS', '1', 'Number of password reset attempts to allow within the specified period.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(102, 'Enable E-Mail Module', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS', 'True', 'Do you want to allow products to be shared through e-mail?', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(103, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(104, 'Enable Google+ Share Module', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_STATUS', 'True', 'Do you want to allow products to be shared through Google+?', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(105, 'Annotation', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ANNOTATION', 'None', 'The annotation to display next to the button.', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''Inline'', ''Bubble'', ''Vertical-Bubble'', ''None''), '),
(106, 'Width', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_WIDTH', '', 'The maximum width of the button.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(107, 'Height', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_HEIGHT', '15', 'Sets the height of the button.', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''15'', ''20'', ''24'', ''60''), '),
(108, 'Alignment', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ALIGN', 'Left', 'The alignment of the button assets.', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''Left'', ''Right''), '),
(109, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_SORT_ORDER', '20', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(110, 'Enable Facebook Module', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_STATUS', 'True', 'Do you want to allow products to be shared through Facebook?', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(111, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_SORT_ORDER', '30', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(112, 'Enable Twitter Module', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_STATUS', 'True', 'Do you want to allow products to be shared through Twitter?', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(113, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_SORT_ORDER', '40', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(114, 'Enable Pinterest Module', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_STATUS', 'True', 'Do you want to allow Pinterest Button?', 6, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(115, 'Layout Position', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_BUTTON_COUNT_POSITION', 'None', 'Horizontal or Vertical or None', 6, 2, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''Horizontal'', ''Vertical'', ''None''), '),
(116, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:17', NULL, NULL),
(117, 'Country of Origin', 'SHIPPING_ORIGIN_COUNTRY', '223', 'Select the country of origin to be used in shipping quotes.', 7, 1, NULL, '2014-08-25 17:51:17', 'tep_get_country_name', 'tep_cfg_pull_down_country_list('),
(118, 'Postal Code', 'SHIPPING_ORIGIN_ZIP', 'NONE', 'Enter the Postal Code (ZIP) of the Store to be used in shipping quotes.', 7, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(119, 'Enter the Maximum Package Weight you will ship', 'SHIPPING_MAX_WEIGHT', '50', 'Carriers have a max weight limit for a single package. This is a common one for all.', 7, 3, NULL, '2014-08-25 17:51:17', NULL, NULL),
(120, 'Package Tare weight.', 'SHIPPING_BOX_WEIGHT', '3', 'What is the weight of typical packaging of small to medium packages?', 7, 4, NULL, '2014-08-25 17:51:17', NULL, NULL),
(121, 'Larger packages - percentage increase.', 'SHIPPING_BOX_PADDING', '10', 'For 10% enter 10', 7, 5, NULL, '2014-08-25 17:51:17', NULL, NULL),
(122, 'Display Product Image', 'PRODUCT_LIST_IMAGE', '1', 'Do you want to display the Product Image?', 8, 1, NULL, '2014-08-25 17:51:17', NULL, NULL),
(123, 'Display Product Manufacturer Name', 'PRODUCT_LIST_MANUFACTURER', '0', 'Do you want to display the Product Manufacturer Name?', 8, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(124, 'Display Product Model', 'PRODUCT_LIST_MODEL', '0', 'Do you want to display the Product Model?', 8, 3, NULL, '2014-08-25 17:51:17', NULL, NULL),
(125, 'Display Product Name', 'PRODUCT_LIST_NAME', '2', 'Do you want to display the Product Name?', 8, 4, NULL, '2014-08-25 17:51:17', NULL, NULL),
(126, 'Display Product Price', 'PRODUCT_LIST_PRICE', '3', 'Do you want to display the Product Price', 8, 5, NULL, '2014-08-25 17:51:17', NULL, NULL),
(127, 'Display Product Quantity', 'PRODUCT_LIST_QUANTITY', '0', 'Do you want to display the Product Quantity?', 8, 6, NULL, '2014-08-25 17:51:17', NULL, NULL),
(128, 'Display Product Weight', 'PRODUCT_LIST_WEIGHT', '0', 'Do you want to display the Product Weight?', 8, 7, NULL, '2014-08-25 17:51:17', NULL, NULL),
(129, 'Display Buy Now column', 'PRODUCT_LIST_BUY_NOW', '4', 'Do you want to display the Buy Now column?', 8, 8, NULL, '2014-08-25 17:51:17', NULL, NULL),
(130, 'Display Category/Manufacturer Filter (0=disable; 1=enable)', 'PRODUCT_LIST_FILTER', '1', 'Do you want to display the Category/Manufacturer Filter?', 8, 9, NULL, '2014-08-25 17:51:17', NULL, NULL),
(131, 'Location of Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 'PREV_NEXT_BAR_LOCATION', '2', 'Sets the location of the Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 8, 10, NULL, '2014-08-25 17:51:17', NULL, NULL),
(132, 'Check stock level', 'STOCK_CHECK', 'true', 'Check to see if sufficent stock is available', 9, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(133, 'Subtract stock', 'STOCK_LIMITED', 'true', 'Subtract product in stock by product orders', 9, 2, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(134, 'Allow Checkout', 'STOCK_ALLOW_CHECKOUT', 'true', 'Allow customer to checkout even if there is insufficient stock', 9, 3, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(135, 'Mark product out of stock', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', 'Display something on screen so customer can see which product has insufficient stock', 9, 4, NULL, '2014-08-25 17:51:17', NULL, NULL),
(136, 'Stock Re-order level', 'STOCK_REORDER_LEVEL', '5', 'Define when stock needs to be re-ordered', 9, 5, NULL, '2014-08-25 17:51:17', NULL, NULL),
(137, 'Store Page Parse Time', 'STORE_PAGE_PARSE_TIME', 'false', 'Store the time it takes to parse a page', 10, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(138, 'Log Destination', 'STORE_PAGE_PARSE_TIME_LOG', '/var/log/www/tep/page_parse_time.log', 'Directory and filename of the page parse time log', 10, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(139, 'Log Date Format', 'STORE_PARSE_DATE_TIME_FORMAT', '%d/%m/%Y %H:%M:%S', 'The date format', 10, 3, NULL, '2014-08-25 17:51:17', NULL, NULL),
(140, 'Display The Page Parse Time', 'DISPLAY_PAGE_PARSE_TIME', 'true', 'Display the page parse time (store page parse time must be enabled)', 10, 4, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(141, 'Store Database Queries', 'STORE_DB_TRANSACTIONS', 'false', 'Store the database queries in the page parse time log', 10, 5, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(142, 'Use Cache', 'USE_CACHE', 'false', 'Use caching features', 11, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(143, 'Cache Directory', 'DIR_FS_CACHE', 'C:/xampp/htdocs/tienda/catalog/includes/work/', 'The directory where the cached files are saved', 11, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(144, 'E-Mail Transport Method', 'EMAIL_TRANSPORT', 'sendmail', 'Defines if this server uses a local connection to sendmail or uses an SMTP connection via TCP/IP. Servers running on Windows and MacOS should change this setting to SMTP.', 12, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''sendmail'', ''smtp''),'),
(145, 'E-Mail Linefeeds', 'EMAIL_LINEFEED', 'LF', 'Defines the character sequence used to separate mail headers.', 12, 2, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''LF'', ''CRLF''),'),
(146, 'Use MIME HTML When Sending Emails', 'EMAIL_USE_HTML', 'false', 'Send e-mails in HTML format', 12, 3, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(147, 'Verify E-Mail Addresses Through DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', 'Verify e-mail address through a DNS server', 12, 4, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(148, 'Send E-Mails', 'SEND_EMAILS', 'true', 'Send out e-mails', 12, 5, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(149, 'Enable download', 'DOWNLOAD_ENABLED', 'false', 'Enable the products download functions.', 13, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(150, 'Download by redirect', 'DOWNLOAD_BY_REDIRECT', 'false', 'Use browser redirection for download. Disable on non-Unix systems.', 13, 2, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(151, 'Expiry delay (days)', 'DOWNLOAD_MAX_DAYS', '7', 'Set number of days before the download link expires. 0 means no limit.', 13, 3, NULL, '2014-08-25 17:51:17', NULL, ''),
(152, 'Maximum number of downloads', 'DOWNLOAD_MAX_COUNT', '5', 'Set the maximum number of downloads. 0 means no download authorized.', 13, 4, NULL, '2014-08-25 17:51:17', NULL, ''),
(153, 'Enable GZip Compression', 'GZIP_COMPRESSION', 'false', 'Enable HTTP GZip compression.', 14, 1, NULL, '2014-08-25 17:51:17', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(154, 'Compression Level', 'GZIP_LEVEL', '5', 'Use this compression level 0-9 (0 = minimum, 9 = maximum).', 14, 2, NULL, '2014-08-25 17:51:17', NULL, NULL),
(155, 'Session Directory', 'SESSION_WRITE_DIRECTORY', 'C:/xampp/htdocs/tienda/catalog/includes/work/', 'If sessions are file based, store them in this directory.', 15, 1, NULL, '2014-08-25 17:51:17', NULL, NULL),
(156, 'Force Cookie Use', 'SESSION_FORCE_COOKIE_USE', 'False', 'Force the use of sessions when cookies are only enabled.', 15, 2, NULL, '2014-08-25 17:51:18', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(157, 'Check SSL Session ID', 'SESSION_CHECK_SSL_SESSION_ID', 'False', 'Validate the SSL_SESSION_ID on every secure HTTPS page request.', 15, 3, NULL, '2014-08-25 17:51:18', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(158, 'Check User Agent', 'SESSION_CHECK_USER_AGENT', 'False', 'Validate the clients browser user agent on every page request.', 15, 4, NULL, '2014-08-25 17:51:18', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(159, 'Check IP Address', 'SESSION_CHECK_IP_ADDRESS', 'False', 'Validate the clients IP address on every page request.', 15, 5, NULL, '2014-08-25 17:51:18', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(160, 'Prevent Spider Sessions', 'SESSION_BLOCK_SPIDERS', 'True', 'Prevent known spiders from starting a session.', 15, 6, NULL, '2014-08-25 17:51:18', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(161, 'Recreate Session', 'SESSION_RECREATE', 'True', 'Recreate the session to generate a new session ID when the customer logs on or creates an account (PHP >=4.1 needed).', 15, 7, NULL, '2014-08-25 17:51:18', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(162, 'Last Update Check Time', 'LAST_UPDATE_CHECK_TIME', '', 'Last time a check for new versions of osCommerce was run', 6, 0, NULL, '2014-08-25 17:51:18', NULL, NULL),
(163, 'Enable PayPal Express Checkout', 'MODULE_PAYMENT_PAYPAL_EXPRESS_STATUS', 'True', 'Do you want to accept PayPal Express Checkout payments?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(164, 'Seller Account', 'MODULE_PAYMENT_PAYPAL_EXPRESS_SELLER_ACCOUNT', 'lara_zero16@hotmailcom', 'The email address of the seller account if no API credentials has been setup.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(165, 'API Username', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_USERNAME', '', 'The username to use for the PayPal API service', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(166, 'API Password', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_PASSWORD', '', 'The password to use for the PayPal API service', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(167, 'API Signature', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_SIGNATURE', '', 'The signature to use for the PayPal API service', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(168, 'Transaction Server', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTION_SERVER', 'Live', 'Use the live or testing (sandbox) gateway server to process transactions?', 6, 0, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Live'', ''Sandbox''), '),
(169, 'Transaction Method', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTION_METHOD', 'Sale', 'The processing method to use for each transaction.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Sale''), '),
(170, 'PayPal Account Optional', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ACCOUNT_OPTIONAL', 'False', 'This must also be enabled in your PayPal account, in Profile > Website Payment Preferences.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(171, 'PayPal Instant Update', 'MODULE_PAYMENT_PAYPAL_EXPRESS_INSTANT_UPDATE', 'True', 'Support PayPal shipping and tax calculations on the PayPal.com site during Express Checkout.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(172, 'PayPal Checkout Image', 'MODULE_PAYMENT_PAYPAL_EXPRESS_CHECKOUT_IMAGE', 'Static', 'Use static or dynamic Express Checkout image buttons. Dynamic images are used with PayPal campaigns.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Static'', ''Dynamic''), '),
(173, 'Debug E-Mail Address', 'MODULE_PAYMENT_PAYPAL_EXPRESS_DEBUG_EMAIL', '', 'All parameters of an invalid transaction will be sent to this email address.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(174, 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2014-08-25 17:51:19', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(175, 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_EXPRESS_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(176, 'Set Order Status', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2014-08-25 17:51:19', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(177, 'PayPal Transactions Order Status Level', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTIONS_ORDER_STATUS_ID', '4', 'Include PayPal transaction information in this order status level', 6, 0, NULL, '2014-08-25 17:51:19', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(178, 'cURL Program Location', 'MODULE_PAYMENT_PAYPAL_EXPRESS_CURL', '/usr/bin/curl', 'The location to the cURL program application.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(179, 'Installed Modules', 'MODULE_HEADER_TAGS_INSTALLED', 'ht_canonical.php;ht_manufacturer_title.php;ht_category_title.php;ht_product_title.php;ht_robot_noindex.php', 'List of header tag module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(180, 'Enable Category Title Module', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_STATUS', 'True', 'Do you want to allow category titles to be added to the page title?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(181, 'Sort Order', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(182, 'Enable Manufacturer Title Module', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_STATUS', 'True', 'Do you want to allow manufacturer titles to be added to the page title?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(183, 'Sort Order', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(184, 'Enable Product Title Module', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_STATUS', 'True', 'Do you want to allow product titles to be added to the page title?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(185, 'Sort Order', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(186, 'Enable Canonical Module', 'MODULE_HEADER_TAGS_CANONICAL_STATUS', 'True', 'Do you want to enable the Canonical module?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(187, 'Sort Order', 'MODULE_HEADER_TAGS_CANONICAL_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(188, 'Enable Robot NoIndex Module', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_STATUS', 'True', 'Do you want to enable the Robot NoIndex module?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(189, 'Pages', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_PAGES', 'account.php;account_edit.php;account_history.php;account_history_info.php;account_newsletters.php;account_notifications.php;account_password.php;address_book.php;address_book_process.php;checkout_confirmation.php;checkout_payment.php;checkout_payment_address.php;checkout_process.php;checkout_shipping.php;checkout_shipping_address.php;checkout_success.php;cookie_usage.php;create_account.php;create_account_success.php;login.php;logoff.php;password_forgotten.php;password_reset.php;product_reviews_write.php;shopping_cart.php;ssl_check.php;tell_a_friend.php', 'The pages to add the meta robot noindex tag to.', 6, 0, NULL, '2014-08-25 17:51:19', 'ht_robot_noindex_show_pages', 'ht_robot_noindex_edit_pages('),
(190, 'Sort Order', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(191, 'Installed Modules', 'MODULE_ADMIN_DASHBOARD_INSTALLED', 'd_total_revenue.php;d_total_customers.php;d_orders.php;d_customers.php;d_admin_logins.php;d_security_checks.php;d_latest_news.php;d_latest_addons.php;d_partner_news.php;d_version_check.php;d_reviews.php', 'List of Administration Tool Dashboard module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(192, 'Enable Administrator Logins Module', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_STATUS', 'True', 'Do you want to show the latest administrator logins on the dashboard?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(193, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(194, 'Enable Customers Module', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_STATUS', 'True', 'Do you want to show the newest customers on the dashboard?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(195, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(196, 'Enable Latest Add-Ons Module', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_STATUS', 'True', 'Do you want to show the latest osCommerce Add-Ons on the dashboard?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(197, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_SORT_ORDER', '800', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(198, 'Enable Latest News Module', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_STATUS', 'True', 'Do you want to show the latest osCommerce News on the dashboard?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(199, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_SORT_ORDER', '700', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(200, 'Enable Orders Module', 'MODULE_ADMIN_DASHBOARD_ORDERS_STATUS', 'True', 'Do you want to show the latest orders on the dashboard?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(201, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_ORDERS_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(202, 'Enable Security Checks Module', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_STATUS', 'True', 'Do you want to run the security checks for this installation?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(203, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_SORT_ORDER', '600', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(204, 'Enable Total Customers Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_STATUS', 'True', 'Do you want to show the total customers chart on the dashboard?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(205, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(206, 'Enable Total Revenue Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_STATUS', 'True', 'Do you want to show the total revenue chart on the dashboard?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(207, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(208, 'Enable Version Check Module', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_STATUS', 'True', 'Do you want to show the version check results on the dashboard?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(209, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_SORT_ORDER', '900', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(210, 'Enable Latest Reviews Module', 'MODULE_ADMIN_DASHBOARD_REVIEWS_STATUS', 'True', 'Do you want to show the latest reviews on the dashboard?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(211, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_REVIEWS_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(212, 'Enable Partner News Module', 'MODULE_ADMIN_DASHBOARD_PARTNER_NEWS_STATUS', 'True', 'Do you want to show the latest osCommerce Partner News on the dashboard?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(213, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_PARTNER_NEWS_SORT_ORDER', '820', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(214, 'Installed Modules', 'MODULE_BOXES_INSTALLED', 'bm_categories.php;bm_manufacturers.php;bm_search.php;bm_whats_new.php;bm_information.php;bm_shopping_cart.php;bm_manufacturer_info.php;bm_order_history.php;bm_best_sellers.php;bm_product_notifications.php;bm_product_social_bookmarks.php;bm_specials.php;bm_reviews.php;bm_languages.php;bm_currencies.php', 'List of box module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(215, 'Enable Best Sellers Module', 'MODULE_BOXES_BEST_SELLERS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(216, 'Content Placement', 'MODULE_BOXES_BEST_SELLERS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(217, 'Sort Order', 'MODULE_BOXES_BEST_SELLERS_SORT_ORDER', '5030', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(218, 'Enable Categories Module', 'MODULE_BOXES_CATEGORIES_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(219, 'Content Placement', 'MODULE_BOXES_CATEGORIES_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(220, 'Sort Order', 'MODULE_BOXES_CATEGORIES_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(221, 'Enable Currencies Module', 'MODULE_BOXES_CURRENCIES_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(222, 'Content Placement', 'MODULE_BOXES_CURRENCIES_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(223, 'Sort Order', 'MODULE_BOXES_CURRENCIES_SORT_ORDER', '5090', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(224, 'Enable Information Module', 'MODULE_BOXES_INFORMATION_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(225, 'Content Placement', 'MODULE_BOXES_INFORMATION_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(226, 'Sort Order', 'MODULE_BOXES_INFORMATION_SORT_ORDER', '1050', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(227, 'Enable Languages Module', 'MODULE_BOXES_LANGUAGES_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(228, 'Content Placement', 'MODULE_BOXES_LANGUAGES_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(229, 'Sort Order', 'MODULE_BOXES_LANGUAGES_SORT_ORDER', '5080', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(230, 'Enable Manufacturer Info Module', 'MODULE_BOXES_MANUFACTURER_INFO_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(231, 'Content Placement', 'MODULE_BOXES_MANUFACTURER_INFO_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(232, 'Sort Order', 'MODULE_BOXES_MANUFACTURER_INFO_SORT_ORDER', '5010', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(233, 'Enable Manufacturers Module', 'MODULE_BOXES_MANUFACTURERS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(234, 'Content Placement', 'MODULE_BOXES_MANUFACTURERS_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(235, 'Sort Order', 'MODULE_BOXES_MANUFACTURERS_SORT_ORDER', '1020', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(236, 'Enable Order History Module', 'MODULE_BOXES_ORDER_HISTORY_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(237, 'Content Placement', 'MODULE_BOXES_ORDER_HISTORY_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(238, 'Sort Order', 'MODULE_BOXES_ORDER_HISTORY_SORT_ORDER', '5020', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(239, 'Enable Product Notifications Module', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(240, 'Content Placement', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(241, 'Sort Order', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_SORT_ORDER', '5040', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(242, 'Enable Product Social Bookmarks Module', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(243, 'Content Placement', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), ');
INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(244, 'Sort Order', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_SORT_ORDER', '5050', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(245, 'Enable Reviews Module', 'MODULE_BOXES_REVIEWS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(246, 'Content Placement', 'MODULE_BOXES_REVIEWS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(247, 'Sort Order', 'MODULE_BOXES_REVIEWS_SORT_ORDER', '5070', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(248, 'Enable Search Module', 'MODULE_BOXES_SEARCH_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(249, 'Content Placement', 'MODULE_BOXES_SEARCH_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(250, 'Sort Order', 'MODULE_BOXES_SEARCH_SORT_ORDER', '1030', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(251, 'Enable Shopping Cart Module', 'MODULE_BOXES_SHOPPING_CART_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(252, 'Content Placement', 'MODULE_BOXES_SHOPPING_CART_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(253, 'Sort Order', 'MODULE_BOXES_SHOPPING_CART_SORT_ORDER', '5000', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(254, 'Enable Specials Module', 'MODULE_BOXES_SPECIALS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(255, 'Content Placement', 'MODULE_BOXES_SPECIALS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(256, 'Sort Order', 'MODULE_BOXES_SPECIALS_SORT_ORDER', '5060', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(257, 'Enable What''s New Module', 'MODULE_BOXES_WHATS_NEW_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(258, 'Content Placement', 'MODULE_BOXES_WHATS_NEW_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2014-08-25 17:51:19', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(259, 'Sort Order', 'MODULE_BOXES_WHATS_NEW_SORT_ORDER', '1040', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(260, 'Installed Template Block Groups', 'TEMPLATE_BLOCK_GROUPS', 'boxes;header_tags', 'This is automatically updated. No need to edit.', 6, 0, NULL, '2014-08-25 17:51:19', NULL, NULL),
(261, 'Enable PayPal Website Payments Standard', 'MODULE_PAYMENT_PAYPAL_STANDARD_STATUS', 'True', 'Do you want to accept PayPal Website Payments Standard payments?', 6, 3, NULL, '2014-08-27 17:24:55', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(262, 'E-Mail Address', 'MODULE_PAYMENT_PAYPAL_STANDARD_ID', 'lara_zero16@hotmail.com', 'The PayPal seller e-mail address to accept payments for', 6, 4, NULL, '2014-08-27 17:24:55', NULL, NULL),
(263, 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_STANDARD_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2014-08-27 17:24:55', NULL, NULL),
(264, 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_STANDARD_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2014-08-27 17:24:55', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(265, 'Set Preparing Order Status', 'MODULE_PAYMENT_PAYPAL_STANDARD_PREPARE_ORDER_STATUS_ID', '5', 'Set the status of prepared orders made with this payment module to this value', 6, 0, NULL, '2014-08-27 17:24:55', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(266, 'Set PayPal Acknowledged Order Status', 'MODULE_PAYMENT_PAYPAL_STANDARD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2014-08-27 17:24:55', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(267, 'Gateway Server', 'MODULE_PAYMENT_PAYPAL_STANDARD_GATEWAY_SERVER', 'Live', 'Use the testing (sandbox) or live gateway server for transactions?', 6, 6, NULL, '2014-08-27 17:24:55', NULL, 'tep_cfg_select_option(array(''Live'', ''Sandbox''), '),
(268, 'Transaction Method', 'MODULE_PAYMENT_PAYPAL_STANDARD_TRANSACTION_METHOD', 'Sale', 'The processing method to use for each transaction.', 6, 0, NULL, '2014-08-27 17:24:55', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Sale''), '),
(269, 'Page Style', 'MODULE_PAYMENT_PAYPAL_STANDARD_PAGE_STYLE', '', 'The page style to use for the transaction procedure (defined at your PayPal Profile page)', 6, 4, NULL, '2014-08-27 17:24:55', NULL, NULL),
(270, 'Debug E-Mail Address', 'MODULE_PAYMENT_PAYPAL_STANDARD_DEBUG_EMAIL', '', 'All parameters of an Invalid IPN notification will be sent to this email address if one is entered.', 6, 4, NULL, '2014-08-27 17:24:55', NULL, NULL),
(271, 'Enable Encrypted Web Payments', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_STATUS', 'False', 'Do you want to enable Encrypted Web Payments?', 6, 3, NULL, '2014-08-27 17:24:55', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(272, 'Your Private Key', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_PRIVATE_KEY', '', 'The location of your Private Key to use for signing the data. (*.pem)', 6, 4, NULL, '2014-08-27 17:24:55', NULL, NULL),
(273, 'Your Public Certificate', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_PUBLIC_KEY', '', 'The location of your Public Certificate to use for signing the data. (*.pem)', 6, 4, NULL, '2014-08-27 17:24:55', NULL, NULL),
(274, 'PayPals Public Certificate', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_PAYPAL_KEY', '', 'The location of the PayPal Public Certificate for encrypting the data.', 6, 4, NULL, '2014-08-27 17:24:55', NULL, NULL),
(275, 'Your PayPal Public Certificate ID', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_CERT_ID', '', 'The Certificate ID to use from your PayPal Encrypted Payment Settings Profile.', 6, 4, NULL, '2014-08-27 17:24:55', NULL, NULL),
(276, 'Working Directory', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_WORKING_DIRECTORY', '', 'The working directory to use for temporary files. (trailing slash needed)', 6, 4, NULL, '2014-08-27 17:24:55', NULL, NULL),
(277, 'OpenSSL Location', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_OPENSSL', '/usr/bin/openssl', 'The location of the openssl binary file.', 6, 4, NULL, '2014-08-27 17:24:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration_group`
--

CREATE TABLE IF NOT EXISTS `configuration_group` (
  `configuration_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_group_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_group_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `visible` int(1) DEFAULT '1',
  PRIMARY KEY (`configuration_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `configuration_group`
--

INSERT INTO `configuration_group` (`configuration_group_id`, `configuration_group_title`, `configuration_group_description`, `sort_order`, `visible`) VALUES
(1, 'My Store', 'General information about my store', 1, 1),
(2, 'Minimum Values', 'The minimum values for functions / data', 2, 1),
(3, 'Maximum Values', 'The maximum values for functions / data', 3, 1),
(4, 'Images', 'Image parameters', 4, 1),
(5, 'Customer Details', 'Customer account configuration', 5, 1),
(6, 'Module Options', 'Hidden from configuration', 6, 0),
(7, 'Shipping/Packaging', 'Shipping options available at my store', 7, 1),
(8, 'Product Listing', 'Product Listing    configuration options', 8, 1),
(9, 'Stock', 'Stock configuration options', 9, 1),
(10, 'Logging', 'Logging configuration options', 10, 1),
(11, 'Cache', 'Caching configuration options', 11, 1),
(12, 'E-Mail Options', 'General setting for E-Mail transport and HTML E-Mails', 12, 1),
(13, 'Download', 'Downloadable products options', 13, 1),
(14, 'GZip Compression', 'GZip compression options', 14, 1),
(15, 'Sessions', 'Session options', 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `startdate` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `counter` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `counter`
--

INSERT INTO `counter` (`startdate`, `counter`) VALUES
('20140825', 97);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `counter_history`
--

CREATE TABLE IF NOT EXISTS `counter_history` (
  `month` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `counter` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `countries_id` int(11) NOT NULL AUTO_INCREMENT,
  `countries_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL,
  PRIMARY KEY (`countries_id`),
  KEY `IDX_COUNTRIES_NAME` (`countries_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=240 ;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 5),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 5),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'Korea, Democratic People''s Republic of', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 4),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 3),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 2),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(236, 'Yugoslavia', 'YU', 'YUG', 1),
(237, 'Zaire', 'ZR', 'ZAR', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `currencies_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`currencies_id`),
  KEY `idx_currencies_code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(1, 'U.S. Dollar', 'USD', '$', '', '.', ',', '2', 1.00000000, '2014-08-25 17:51:18'),
(2, 'Euro', 'EUR', '', '€', '.', ',', '2', 1.00000000, '2014-08-25 17:51:18'),
(3, 'Mexican Peso', 'MXN', '$', '', '.', ',', '2', 12.00000000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customers_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_dob` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customers_email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customers_newsletter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customers_id`),
  KEY `idx_customers_email_address` (`customers_email_address`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_gender`, `customers_firstname`, `customers_lastname`, `customers_dob`, `customers_email_address`, `customers_default_address_id`, `customers_telephone`, `customers_fax`, `customers_password`, `customers_newsletter`) VALUES
(1, 'm', 'Daniel', 'Cruz', '1993-09-17 00:00:00', 'danielcruzglz@hotmail.com', 1, '4611256532', '', '$P$Dqu7DmUvxFFLIvi6nXFFf4kroHC7UU0', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_basket`
--

CREATE TABLE IF NOT EXISTS `customers_basket` (
  `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,4) DEFAULT NULL,
  `customers_basket_date_added` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customers_basket_id`),
  KEY `idx_customers_basket_customers_id` (`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_basket_attributes`
--

CREATE TABLE IF NOT EXISTS `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_value_id` int(11) NOT NULL,
  PRIMARY KEY (`customers_basket_attributes_id`),
  KEY `idx_customers_basket_att_customers_id` (`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_info`
--

CREATE TABLE IF NOT EXISTS `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0',
  `password_reset_key` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_date` datetime DEFAULT NULL,
  PRIMARY KEY (`customers_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`, `password_reset_key`, `password_reset_date`) VALUES
(1, '2014-08-27 18:47:32', 3, '2014-08-27 17:45:36', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geo_zones`
--

CREATE TABLE IF NOT EXISTS `geo_zones` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `geo_zones`
--

INSERT INTO `geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'Florida', 'Florida local sales tax zone', NULL, '2014-08-25 17:51:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `languages_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `directory` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  PRIMARY KEY (`languages_id`),
  KEY `IDX_LANGUAGES_NAME` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`) VALUES
(1, 'English', 'en', 'icon.gif', 'english', 1),
(2, 'Español', 'es', 'icon.gif', 'espanol', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manufacturers`
--

CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturers_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`),
  KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturers_id`, `manufacturers_name`, `manufacturers_image`, `date_added`, `last_modified`) VALUES
(1, 'Matrox', 'manufacturer_matrox.gif', '2014-08-25 17:51:18', NULL),
(2, 'Microsoft', 'manufacturer_microsoft.gif', '2014-08-25 17:51:18', NULL),
(3, 'Warner', 'manufacturer_warner.gif', '2014-08-25 17:51:18', NULL),
(4, 'Fox', 'manufacturer_fox.gif', '2014-08-25 17:51:18', NULL),
(5, 'Logitech', 'manufacturer_logitech.gif', '2014-08-25 17:51:18', NULL),
(6, 'Canon', 'manufacturer_canon.gif', '2014-08-25 17:51:18', NULL),
(7, 'Sierra', 'manufacturer_sierra.gif', '2014-08-25 17:51:18', NULL),
(8, 'GT Interactive', 'manufacturer_gt_interactive.gif', '2014-08-25 17:51:18', NULL),
(9, 'Hewlett Packard', 'manufacturer_hewlett_packard.gif', '2014-08-25 17:51:18', NULL),
(10, 'Samsung', 'manufacturer_samsung.png', '2014-08-25 17:51:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manufacturers_info`
--

CREATE TABLE IF NOT EXISTS `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`,`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `manufacturers_info`
--

INSERT INTO `manufacturers_info` (`manufacturers_id`, `languages_id`, `manufacturers_url`, `url_clicked`, `date_last_click`) VALUES
(1, 1, 'http://www.matrox.com', 0, NULL),
(1, 2, 'http://www.matrox.com', 0, NULL),
(2, 1, 'http://www.microsoft.com', 0, NULL),
(2, 2, 'http://www.microsoft.com', 0, NULL),
(3, 1, 'http://www.warner.com', 0, NULL),
(3, 2, 'http://www.warner.com', 0, NULL),
(4, 1, 'http://www.fox.com', 0, NULL),
(4, 2, 'http://www.fox.com', 0, NULL),
(5, 1, 'http://www.logitech.com', 0, NULL),
(5, 2, 'http://www.logitech.com', 0, NULL),
(6, 1, 'http://www.canon.com', 0, NULL),
(6, 2, 'http://www.canon.com', 0, NULL),
(7, 1, 'http://www.sierra.com', 0, NULL),
(7, 2, 'http://www.sierra.com', 0, NULL),
(8, 1, 'http://www.infogrames.com', 0, NULL),
(8, 2, 'http://www.infogrames.com', 0, NULL),
(9, 1, 'http://www.hewlettpackard.com', 0, NULL),
(9, 2, 'http://www.hewlettpackard.com', 0, NULL),
(10, 1, 'http://www.samsung.com', 0, NULL),
(10, 2, 'http://www.samsung.com', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletters`
--

CREATE TABLE IF NOT EXISTS `newsletters` (
  `newsletters_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0',
  PRIMARY KEY (`newsletters_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(5) NOT NULL,
  `delivery_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(5) NOT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `idx_orders_customers_id` (`customers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`orders_id`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `customers_email_address`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_status`, `orders_date_finished`, `currency`, `currency_value`) VALUES
(1, 1, 'Daniel Cruz', '', 'Caballo blanco 17', 'Cantar', 'Celaya', '38600', 'Guanajuato', 'Mexico', '4611256532', 'danielcruzglz@hotmail.com', 1, 'Daniel Cruz', '', 'Caballo blanco 17', 'Cantar', 'Celaya', '38600', 'Guanajuato', 'Mexico', 1, 'Daniel Cruz', '', 'Caballo blanco 17', 'Cantar', 'Celaya', '38600', 'Guanajuato', 'Mexico', 1, 'Cash on Delivery', '', '', '', '', NULL, '2014-08-27 18:06:49', 1, NULL, 'USD', '1.000000'),
(2, 1, 'Daniel Cruz', '', 'Caballo blanco 17', 'Cantar', 'Celaya', '38600', 'Guanajuato', 'Mexico', '4611256532', 'danielcruzglz@hotmail.com', 1, 'Daniel Cruz', '', 'Caballo blanco 17', 'Cantar', 'Celaya', '38600', 'Guanajuato', 'Mexico', 1, 'Daniel Cruz', '', 'Caballo blanco 17', 'Cantar', 'Celaya', '38600', 'Guanajuato', 'Mexico', 1, 'PayPal (including Credit and Debit Cards)', '', '', '', '', NULL, '2014-08-27 18:07:40', 5, NULL, 'USD', '1.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products`
--

CREATE TABLE IF NOT EXISTS `orders_products` (
  `orders_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `products_tax` decimal(7,4) NOT NULL,
  `products_quantity` int(2) NOT NULL,
  PRIMARY KEY (`orders_products_id`),
  KEY `idx_orders_products_orders_id` (`orders_id`),
  KEY `idx_orders_products_products_id` (`products_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(1, 1, 29, 'a21', 'sam', '0.1000', '0.1000', '0.0000', 1),
(2, 2, 29, 'a21', 'sam', '0.1000', '0.1000', '0.0000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products_attributes`
--

CREATE TABLE IF NOT EXISTS `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`orders_products_attributes_id`),
  KEY `idx_orders_products_att_orders_id` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products_download`
--

CREATE TABLE IF NOT EXISTS `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT '0',
  `download_count` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orders_products_download_id`),
  KEY `idx_orders_products_download_orders_id` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_status`
--

CREATE TABLE IF NOT EXISTS `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `public_flag` int(11) DEFAULT '1',
  `downloads_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`orders_status_id`,`language_id`),
  KEY `idx_orders_status_name` (`orders_status_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `language_id`, `orders_status_name`, `public_flag`, `downloads_flag`) VALUES
(1, 1, 'Pending', 1, 0),
(1, 2, 'Pending', 1, 0),
(2, 1, 'Processing', 1, 1),
(2, 2, 'Processing', 1, 0),
(3, 1, 'Delivered', 1, 1),
(3, 2, 'Delivered', 1, 0),
(4, 1, 'PayPal [Transactions]', 0, 0),
(4, 2, 'PayPal [Transactions]', 1, 0),
(5, 1, 'Preparing [PayPal Standard]', 0, 0),
(5, 2, 'Preparing [PayPal Standard]', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_status_history`
--

CREATE TABLE IF NOT EXISTS `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`orders_status_history_id`),
  KEY `idx_orders_status_history_orders_id` (`orders_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 1, '2014-08-27 18:06:49', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_total`
--

CREATE TABLE IF NOT EXISTS `orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`orders_total_id`),
  KEY `idx_orders_total_orders_id` (`orders_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `orders_total`
--

INSERT INTO `orders_total` (`orders_total_id`, `orders_id`, `title`, `text`, `value`, `class`, `sort_order`) VALUES
(1, 1, 'Sub-Total:', '$0.10', '0.1000', 'ot_subtotal', 1),
(2, 1, 'Flat Rate (Best Way):', '$5.00', '5.0000', 'ot_shipping', 2),
(3, 1, 'Total:', '<strong>$5.10</strong>', '5.1000', 'ot_total', 4),
(4, 2, 'Sub-Total:', '$0.10', '0.1000', 'ot_subtotal', 1),
(5, 2, 'Flat Rate (Best Way):', '$5.00', '5.0000', 'ot_shipping', 2),
(6, 2, 'Total:', '<strong>$5.10</strong>', '5.1000', 'ot_total', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` decimal(5,2) NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`products_id`),
  KEY `idx_products_model` (`products_model`),
  KEY `idx_products_date_added` (`products_date_added`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`) VALUES
(1, 32, 'MG200MMS', 'matrox/mg200mms.gif', '299.9900', '2014-08-25 17:51:18', NULL, NULL, '23.00', 1, 1, 1, 0),
(2, 32, 'MG400-32MB', 'matrox/mg400-32mb.gif', '499.9900', '2014-08-25 17:51:18', NULL, NULL, '23.00', 1, 1, 1, 0),
(3, 2, 'MSIMPRO', 'microsoft/msimpro.gif', '49.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(4, 13, 'DVD-RPMK', 'dvd/replacement_killers.gif', '42.0000', '2014-08-25 17:51:18', NULL, NULL, '23.00', 1, 1, 2, 0),
(5, 17, 'DVD-BLDRNDC', 'dvd/blade_runner.gif', '35.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(6, 10, 'DVD-MATR', 'dvd/the_matrix.gif', '39.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(7, 10, 'DVD-YGEM', 'dvd/youve_got_mail.gif', '34.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(8, 10, 'DVD-ABUG', 'dvd/a_bugs_life.gif', '35.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(9, 10, 'DVD-UNSG', 'dvd/under_siege.gif', '29.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(10, 10, 'DVD-UNSG2', 'dvd/under_siege2.gif', '29.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(11, 10, 'DVD-FDBL', 'dvd/fire_down_below.gif', '29.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(12, 10, 'DVD-DHWV', 'dvd/die_hard_3.gif', '39.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 4, 0),
(13, 10, 'DVD-LTWP', 'dvd/lethal_weapon.gif', '34.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(14, 10, 'DVD-REDC', 'dvd/red_corner.gif', '32.0000', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(15, 10, 'DVD-FRAN', 'dvd/frantic.gif', '35.0000', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(16, 10, 'DVD-CUFI', 'dvd/courage_under_fire.gif', '38.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 4, 0),
(17, 10, 'DVD-SPEED', 'dvd/speed.gif', '39.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 4, 0),
(18, 10, 'DVD-SPEED2', 'dvd/speed_2.gif', '42.0000', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 4, 0),
(19, 10, 'DVD-TSAB', 'dvd/theres_something_about_mary.gif', '49.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 4, 0),
(20, 10, 'DVD-BELOVED', 'dvd/beloved.gif', '54.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 3, 0),
(21, 16, 'PC-SWAT3', 'sierra/swat_3.gif', '79.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 7, 0),
(22, 13, 'PC-UNTM', 'gt_interactive/unreal_tournament.gif', '89.9900', '2014-08-25 17:51:18', NULL, NULL, '7.00', 1, 1, 8, 0),
(23, 16, 'PC-TWOF', 'gt_interactive/wheel_of_time.gif', '99.9900', '2014-08-25 17:51:18', NULL, NULL, '10.00', 1, 1, 8, 0),
(24, 17, 'PC-DISC', 'gt_interactive/disciples.gif', '90.0000', '2014-08-25 17:51:18', NULL, NULL, '8.00', 1, 1, 8, 0),
(25, 16, 'MSINTKB', 'microsoft/intkeyboardps2.gif', '69.9900', '2014-08-25 17:51:18', '2014-08-27 18:46:13', NULL, '8.00', 1, 1, 2, 0),
(26, 10, 'MSIMEXP', 'microsoft/imexplorer.gif', '64.9500', '2014-08-25 17:51:18', NULL, NULL, '8.00', 1, 1, 2, 0),
(27, 8, 'HPLJ1100XI', 'hewlett_packard/lj1100xi.gif', '499.9900', '2014-08-25 17:51:18', NULL, NULL, '45.00', 1, 1, 9, 0),
(28, 100, 'GT-P1000', 'samsung/galaxy_tab.gif', '749.9900', '2014-08-25 17:51:18', NULL, NULL, '1.00', 1, 1, 10, 0),
(29, 0, 'a21', '1044293_547721491949056_12451500_n.jpg', '0.1000', '2014-08-27 18:01:24', NULL, NULL, '0.00', 1, 1, 10, 1),
(30, 5, 'as12', '326182_2121272228321_1476633754_o.jpg', '0.1000', '2014-08-27 18:15:44', NULL, NULL, '0.00', 1, 1, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_attributes`
--

CREATE TABLE IF NOT EXISTS `products_attributes` (
  `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`products_attributes_id`),
  KEY `idx_products_attributes_products_id` (`products_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`) VALUES
(1, 1, 4, 1, '0.0000', '+'),
(2, 1, 4, 2, '50.0000', '+'),
(3, 1, 4, 3, '70.0000', '+'),
(4, 1, 3, 5, '0.0000', '+'),
(5, 1, 3, 6, '100.0000', '+'),
(6, 2, 4, 3, '10.0000', '-'),
(7, 2, 4, 4, '0.0000', '+'),
(8, 2, 3, 6, '0.0000', '+'),
(9, 2, 3, 7, '120.0000', '+'),
(10, 26, 3, 8, '0.0000', '+'),
(11, 26, 3, 9, '6.0000', '+'),
(26, 22, 5, 10, '0.0000', '+'),
(27, 22, 5, 13, '0.0000', '+'),
(28, 28, 1, 5, '0.1000', '+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_attributes_download`
--

CREATE TABLE IF NOT EXISTS `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT '0',
  `products_attributes_maxcount` int(2) DEFAULT '0',
  PRIMARY KEY (`products_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products_attributes_download`
--

INSERT INTO `products_attributes_download` (`products_attributes_id`, `products_attributes_filename`, `products_attributes_maxdays`, `products_attributes_maxcount`) VALUES
(26, 'unreal.zip', 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_description`
--

CREATE TABLE IF NOT EXISTS `products_description` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8_unicode_ci,
  `products_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_viewed` int(5) DEFAULT '0',
  PRIMARY KEY (`products_id`,`language_id`),
  KEY `products_name` (`products_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(1, 1, 'Matrox G200 MMS', 'Reinforcing its position as a multi-monitor trailblazer, Matrox Graphics Inc. has once again developed the most flexible and highly advanced solution in the industry. Introducing the new Matrox G200 Multi-Monitor Series; the first graphics card ever to support up to four DVI digital flat panel displays on a single 8&quot; PCI board.<br /><br />With continuing demand for digital flat panels in the financial workplace, the Matrox G200 MMS is the ultimate in flexible solutions. The Matrox G200 MMS also supports the new digital video interface (DVI) created by the Digital Display Working Group (DDWG) designed to ease the adoption of digital flat panels. Other configurations include composite video capture ability and onboard TV tuner, making the Matrox G200 MMS the complete solution for business needs.<br /><br />Based on the award-winning MGA-G200 graphics chip, the Matrox G200 Multi-Monitor Series provides superior 2D/3D graphics acceleration to meet the demanding needs of business applications such as real-time stock quotes (Versus), live video feeds (Reuters &amp; Bloombergs), multiple windows applications, word processing, spreadsheets and CAD.', 'www.matrox.com/mga/products/g200_mms/home.cfm', 0),
(1, 2, 'Matrox G200 MMS', 'Reinforcing its position as a multi-monitor trailblazer, Matrox Graphics Inc. has once again developed the most flexible and highly advanced solution in the industry. Introducing the new Matrox G200 Multi-Monitor Series; the first graphics card ever to support up to four DVI digital flat panel displays on a single 8&quot; PCI board.<br /><br />With continuing demand for digital flat panels in the financial workplace, the Matrox G200 MMS is the ultimate in flexible solutions. The Matrox G200 MMS also supports the new digital video interface (DVI) created by the Digital Display Working Group (DDWG) designed to ease the adoption of digital flat panels. Other configurations include composite video capture ability and onboard TV tuner, making the Matrox G200 MMS the complete solution for business needs.<br /><br />Based on the award-winning MGA-G200 graphics chip, the Matrox G200 Multi-Monitor Series provides superior 2D/3D graphics acceleration to meet the demanding needs of business applications such as real-time stock quotes (Versus), live video feeds (Reuters &amp; Bloombergs), multiple windows applications, word processing, spreadsheets and CAD.', 'www.matrox.com/mga/products/g200_mms/home.cfm', 0),
(2, 1, 'Matrox G400 32MB', '<strong>Dramatically Different High Performance Graphics</strong><br /><br />Introducing the Millennium G400 Series - a dramatically different, high performance graphics experience. Armed with the industry''s fastest graphics chip, the Millennium G400 Series takes explosive acceleration two steps further by adding unprecedented image quality, along with the most versatile display options for all your 3D, 2D and DVD applications. As the most powerful and innovative tools in your PC''s arsenal, the Millennium G400 Series will not only change the way you see graphics, but will revolutionize the way you use your computer.<br /><br /><strong>Key features:</strong><ul><li>New Matrox G400 256-bit DualBus graphics chip</li><li>Explosive 3D, 2D and DVD performance</li><li>DualHead Display</li><li>Superior DVD and TV output</li><li>3D Environment-Mapped Bump Mapping</li><li>Vibrant Color Quality rendering </li><li>UltraSharp DAC of up to 360 MHz</li><li>3D Rendering Array Processor</li><li>Support for 16 or 32 MB of memory</li></ul>', 'www.matrox.com/mga/products/mill_g400/home.htm', 0),
(2, 2, 'Matrox G400 32MB', '<strong>Dramatically Different High Performance Graphics</strong><br /><br />Introducing the Millennium G400 Series - a dramatically different, high performance graphics experience. Armed with the industry''s fastest graphics chip, the Millennium G400 Series takes explosive acceleration two steps further by adding unprecedented image quality, along with the most versatile display options for all your 3D, 2D and DVD applications. As the most powerful and innovative tools in your PC''s arsenal, the Millennium G400 Series will not only change the way you see graphics, but will revolutionize the way you use your computer.<br /><br /><strong>Key features:</strong><ul><li>New Matrox G400 256-bit DualBus graphics chip</li><li>Explosive 3D, 2D and DVD performance</li><li>DualHead Display</li><li>Superior DVD and TV output</li><li>3D Environment-Mapped Bump Mapping</li><li>Vibrant Color Quality rendering </li><li>UltraSharp DAC of up to 360 MHz</li><li>3D Rendering Array Processor</li><li>Support for 16 or 32 MB of memory</li></ul>', 'www.matrox.com/mga/products/mill_g400/home.htm', 0),
(3, 1, 'Microsoft IntelliMouse Pro', 'Every element of IntelliMouse Pro - from its unique arched shape to the texture of the rubber grip around its base - is the product of extensive customer and ergonomic research. Microsoft''s popular wheel control, which now allows zooming and universal scrolling functions, gives IntelliMouse Pro outstanding comfort and efficiency.', 'www.microsoft.com/hardware/mouse/intellimouse.asp', 0),
(3, 2, 'Microsoft IntelliMouse Pro', 'Every element of IntelliMouse Pro - from its unique arched shape to the texture of the rubber grip around its base - is the product of extensive customer and ergonomic research. Microsoft''s popular wheel control, which now allows zooming and universal scrolling functions, gives IntelliMouse Pro outstanding comfort and efficiency.', 'www.microsoft.com/hardware/mouse/intellimouse.asp', 0),
(4, 1, 'The Replacement Killers', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br />Languages: English, Deutsch.<br />Subtitles: English, Deutsch, Spanish.<br />Audio: Dolby Surround 5.1.<br />Picture Format: 16:9 Wide-Screen.<br />Length: (approx) 80 minutes.<br />Other: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.replacement-killers.com', 0),
(4, 2, 'The Replacement Killers', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br />Languages: English, Deutsch.<br />Subtitles: English, Deutsch, Spanish.<br />Audio: Dolby Surround 5.1.<br />Picture Format: 16:9 Wide-Screen.<br />Length: (approx) 80 minutes.<br />Other: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.replacement-killers.com', 0),
(5, 1, 'Blade Runner - Director''s Cut', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br />Languages: English, Deutsch.<br />Subtitles: English, Deutsch, Spanish.<br />Audio: Dolby Surround 5.1.<br />Picture Format: 16:9 Wide-Screen.<br />Length: (approx) 112 minutes.<br />Other: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.bladerunner.com', 0),
(5, 2, 'Blade Runner - Director''s Cut', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br />Languages: English, Deutsch.<br />Subtitles: English, Deutsch, Spanish.<br />Audio: Dolby Surround 5.1.<br />Picture Format: 16:9 Wide-Screen.<br />Length: (approx) 112 minutes.<br />Other: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.bladerunner.com', 0),
(6, 1, 'The Matrix', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch.\r<br />\nAudio: Dolby Surround.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 131 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Making Of.', 'www.thematrix.com', 0),
(6, 2, 'The Matrix', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch.\r<br />\nAudio: Dolby Surround.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 131 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Making Of.', 'www.thematrix.com', 0),
(7, 1, 'You''ve Got Mail', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch, Spanish.\r<br />\nSubtitles: English, Deutsch, Spanish, French, Nordic, Polish.\r<br />\nAudio: Dolby Digital 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 115 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.youvegotmail.com', 0),
(7, 2, 'You''ve Got Mail', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch, Spanish.\r<br />\nSubtitles: English, Deutsch, Spanish, French, Nordic, Polish.\r<br />\nAudio: Dolby Digital 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 115 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.youvegotmail.com', 0),
(8, 1, 'A Bug''s Life', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Digital 5.1 / Dobly Surround Stereo.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 91 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.abugslife.com', 0),
(8, 2, 'A Bug''s Life', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Digital 5.1 / Dobly Surround Stereo.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 91 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.abugslife.com', 0),
(9, 1, 'Under Siege', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 98 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(9, 2, 'Under Siege', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 98 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(10, 1, 'Under Siege 2 - Dark Territory', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 98 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(10, 2, 'Under Siege 2 - Dark Territory', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 98 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(11, 1, 'Fire Down Below', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 100 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(11, 2, 'Fire Down Below', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 100 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(12, 1, 'Die Hard With A Vengeance', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 122 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(12, 2, 'Die Hard With A Vengeance', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 122 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(13, 1, 'Lethal Weapon', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 100 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(13, 2, 'Lethal Weapon', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 100 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(14, 1, 'Red Corner', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 117 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(14, 2, 'Red Corner', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 117 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(15, 1, 'Frantic', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 115 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(15, 2, 'Frantic', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 115 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(16, 1, 'Courage Under Fire', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 112 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(16, 2, 'Courage Under Fire', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 112 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(17, 1, 'Speed', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 112 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(17, 2, 'Speed', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 112 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(18, 1, 'Speed 2: Cruise Control', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 120 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(18, 2, 'Speed 2: Cruise Control', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 120 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(19, 1, 'There''s Something About Mary', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 114 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(19, 2, 'There''s Something About Mary', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 114 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(20, 1, 'Beloved', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 164 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(20, 2, 'Beloved', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 164 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(21, 1, 'SWAT 3: Close Quarters Battle', '<strong>Windows 95/98</strong><br /><br />211 in progress with shots fired. Officer down. Armed suspects with hostages. Respond Code 3! Los Angles, 2005, In the next seven days, representatives from every nation around the world will converge on Las Angles to witness the signing of the United Nations Nuclear Abolishment Treaty. The protection of these dignitaries falls on the shoulders of one organization, LAPD SWAT. As part of this elite tactical organization, you and your team have the weapons and all the training necessary to protect, to serve, and "When needed" to use deadly force to keep the peace. It takes more than weapons to make it through each mission. Your arsenal includes C2 charges, flashbangs, tactical grenades. opti-Wand mini-video cameras, and other devices critical to meeting your objectives and keeping your men free of injury. Uncompromised Duty, Honor and Valor!', 'www.swat3.com', 0),
(21, 2, 'SWAT 3: Close Quarters Battle', '<strong>Windows 95/98</strong><br /><br />211 in progress with shots fired. Officer down. Armed suspects with hostages. Respond Code 3! Los Angles, 2005, In the next seven days, representatives from every nation around the world will converge on Las Angles to witness the signing of the United Nations Nuclear Abolishment Treaty. The protection of these dignitaries falls on the shoulders of one organization, LAPD SWAT. As part of this elite tactical organization, you and your team have the weapons and all the training necessary to protect, to serve, and "When needed" to use deadly force to keep the peace. It takes more than weapons to make it through each mission. Your arsenal includes C2 charges, flashbangs, tactical grenades. opti-Wand mini-video cameras, and other devices critical to meeting your objectives and keeping your men free of injury. Uncompromised Duty, Honor and Valor!', 'www.swat3.com', 0),
(22, 1, 'Unreal Tournament', 'From the creators of the best-selling Unreal, comes Unreal Tournament. A new kind of single player experience. A ruthless multiplayer revolution.<br /><br />This stand-alone game showcases completely new team-based gameplay, groundbreaking multi-faceted single player action or dynamic multi-player mayhem. It''s a fight to the finish for the title of Unreal Grand Master in the gladiatorial arena. A single player experience like no other! Guide your team of ''bots'' (virtual teamates) against the hardest criminals in the galaxy for the ultimate title - the Unreal Grand Master.', 'www.unrealtournament.net', 0),
(22, 2, 'Unreal Tournament', 'From the creators of the best-selling Unreal, comes Unreal Tournament. A new kind of single player experience. A ruthless multiplayer revolution.<br /><br />This stand-alone game showcases completely new team-based gameplay, groundbreaking multi-faceted single player action or dynamic multi-player mayhem. It''s a fight to the finish for the title of Unreal Grand Master in the gladiatorial arena. A single player experience like no other! Guide your team of ''bots'' (virtual teamates) against the hardest criminals in the galaxy for the ultimate title - the Unreal Grand Master.', 'www.unrealtournament.net', 0),
(23, 1, 'The Wheel Of Time', 'The world in which The Wheel of Time takes place is lifted directly out of Jordan''s pages; it''s huge and consists of many different environments. How you navigate the world will depend largely on which game - single player or multipayer - you''re playing. The single player experience, with a few exceptions, will see Elayna traversing the world mainly by foot (with a couple notable exceptions). In the multiplayer experience, your character will have more access to travel via Ter''angreal, Portal Stones, and the Ways. However you move around, though, you''ll quickly discover that means of locomotion can easily become the least of the your worries...<br /><br />During your travels, you quickly discover that four locations are crucial to your success in the game. Not surprisingly, these locations are the homes of The Wheel of Time''s main characters. Some of these places are ripped directly from the pages of Jordan''s books, made flesh with Legend''s unparalleled pixel-pushing ways. Other places are specific to the game, conceived and executed with the intent of expanding this game world even further. Either way, they provide a backdrop for some of the most intense first person action and strategy you''ll have this year.', 'www.wheeloftime.com', 0),
(23, 2, 'The Wheel Of Time', 'The world in which The Wheel of Time takes place is lifted directly out of Jordan''s pages; it''s huge and consists of many different environments. How you navigate the world will depend largely on which game - single player or multipayer - you''re playing. The single player experience, with a few exceptions, will see Elayna traversing the world mainly by foot (with a couple notable exceptions). In the multiplayer experience, your character will have more access to travel via Ter''angreal, Portal Stones, and the Ways. However you move around, though, you''ll quickly discover that means of locomotion can easily become the least of the your worries...<br /><br />During your travels, you quickly discover that four locations are crucial to your success in the game. Not surprisingly, these locations are the homes of The Wheel of Time''s main characters. Some of these places are ripped directly from the pages of Jordan''s books, made flesh with Legend''s unparalleled pixel-pushing ways. Other places are specific to the game, conceived and executed with the intent of expanding this game world even further. Either way, they provide a backdrop for some of the most intense first person action and strategy you''ll have this year.', 'www.wheeloftime.com', 0),
(24, 1, 'Disciples: Sacred Lands', 'A new age is dawning...<br /><br />Enter the realm of the Sacred Lands, where the dawn of a New Age has set in motion the most momentous of wars. As the prophecies long foretold, four races now clash with swords and sorcery in a desperate bid to control the destiny of their gods. Take on the quest as a champion of the Empire, the Mountain Clans, the Legions of the Damned, or the Undead Hordes and test your faith in battles of brute force, spellbinding magic and acts of guile. Slay demons, vanquish giants and combat merciless forces of the dead and undead. But to ensure the salvation of your god, the hero within must evolve.<br /><br />The day of reckoning has come... and only the chosen will survive.', '', 0),
(24, 2, 'Disciples: Sacred Lands', 'A new age is dawning...<br /><br />Enter the realm of the Sacred Lands, where the dawn of a New Age has set in motion the most momentous of wars. As the prophecies long foretold, four races now clash with swords and sorcery in a desperate bid to control the destiny of their gods. Take on the quest as a champion of the Empire, the Mountain Clans, the Legions of the Damned, or the Undead Hordes and test your faith in battles of brute force, spellbinding magic and acts of guile. Slay demons, vanquish giants and combat merciless forces of the dead and undead. But to ensure the salvation of your god, the hero within must evolve.<br /><br />The day of reckoning has come... and only the chosen will survive.', '', 0),
(25, 1, 'Microsoft Internet Keyboard PS/2', 'The Internet Keyboard has 10 Hot Keys on a comfortable standard keyboard design that also includes a detachable palm rest. The Hot Keys allow you to browse the web, or check e-mail directly from your keyboard. The IntelliType Pro software also allows you to customize your hot keys - make the Internet Keyboard work the way you want it to!', '', 0),
(25, 2, 'Microsoft Internet Keyboard PS/2', 'Hola Productos', '', 2),
(26, 1, 'Microsoft IntelliMouse Explorer', 'Microsoft introduces its most advanced mouse, the IntelliMouse Explorer! IntelliMouse Explorer features a sleek design, an industrial-silver finish, a glowing red underside and taillight, creating a style and look unlike any other mouse. IntelliMouse Explorer combines the accuracy and reliability of Microsoft IntelliEye optical tracking technology, the convenience of two new customizable function buttons, the efficiency of the scrolling wheel and the comfort of expert ergonomic design. All these great features make this the best mouse for the PC!', 'www.microsoft.com/hardware/mouse/explorer.asp', 0),
(26, 2, 'Microsoft IntelliMouse Explorer', 'Microsoft introduces its most advanced mouse, the IntelliMouse Explorer! IntelliMouse Explorer features a sleek design, an industrial-silver finish, a glowing red underside and taillight, creating a style and look unlike any other mouse. IntelliMouse Explorer combines the accuracy and reliability of Microsoft IntelliEye optical tracking technology, the convenience of two new customizable function buttons, the efficiency of the scrolling wheel and the comfort of expert ergonomic design. All these great features make this the best mouse for the PC!', 'www.microsoft.com/hardware/mouse/explorer.asp', 0),
(27, 1, 'Hewlett Packard LaserJet 1100Xi', 'HP has always set the pace in laser printing technology. The new generation HP LaserJet 1100 series sets another impressive pace, delivering a stunning 8 pages per minute print speed. The 600 dpi print resolution with HP''s Resolution Enhancement technology (REt) makes every document more professional.<br /><br />Enhanced print speed and laser quality results are just the beginning. With 2MB standard memory, HP LaserJet 1100xi users will be able to print increasingly complex pages. Memory can be increased to 18MB to tackle even more complex documents with ease. The HP LaserJet 1100xi supports key operating systems including Windows 3.1, 3.11, 95, 98, NT 4.0, OS/2 and DOS. Network compatibility available via the optional HP JetDirect External Print Servers.<br /><br />HP LaserJet 1100xi also features The Document Builder for the Web Era from Trellix Corp. (featuring software to create Web documents).', 'www.pandi.hp.com/pandi-db/prodinfo.main?product=laserjet1100', 0),
(27, 2, 'Hewlett Packard LaserJet 1100Xi', 'HP has always set the pace in laser printing technology. The new generation HP LaserJet 1100 series sets another impressive pace, delivering a stunning 8 pages per minute print speed. The 600 dpi print resolution with HP''s Resolution Enhancement technology (REt) makes every document more professional.<br /><br />Enhanced print speed and laser quality results are just the beginning. With 2MB standard memory, HP LaserJet 1100xi users will be able to print increasingly complex pages. Memory can be increased to 18MB to tackle even more complex documents with ease. The HP LaserJet 1100xi supports key operating systems including Windows 3.1, 3.11, 95, 98, NT 4.0, OS/2 and DOS. Network compatibility available via the optional HP JetDirect External Print Servers.<br /><br />HP LaserJet 1100xi also features The Document Builder for the Web Era from Trellix Corp. (featuring software to create Web documents).', 'www.pandi.hp.com/pandi-db/prodinfo.main?product=laserjet1100', 0),
(28, 1, 'Samsung Galaxy Tab', '<p>Powered by a Cortex A8 1.0GHz application processor, the Samsung GALAXY Tab is designed to deliver high performance whenever and wherever you are. At the same time, HD video contents are supported by a wide range of multimedia formats (DivX, XviD, MPEG4, H.263, H.264 and more), which maximizes the joy of entertainment.</p><p>With 3G HSPA connectivity, 802.11n Wi-Fi, and Bluetooth 3.0, the Samsung GALAXY Tab enhances users'' mobile communication on a whole new level. Video conferencing and push email on the large 7-inch display make communication more smooth and efficient. For voice telephony, the Samsung GALAXY Tab turns out to be a perfect speakerphone on the desk, or a mobile phone on the move via Bluetooth headset.</p>', 'http://galaxytab.samsungmobile.com', 0),
(28, 2, 'Samsung Galaxy Tab', '<p>Powered by a Cortex A8 1.0GHz application processor, the Samsung GALAXY Tab is designed to deliver high performance whenever and wherever you are. At the same time, HD video contents are supported by a wide range of multimedia formats (DivX, XviD, MPEG4, H.263, H.264 and more), which maximizes the joy of entertainment.</p><p>With 3G HSPA connectivity, 802.11n Wi-Fi, and Bluetooth 3.0, the Samsung GALAXY Tab enhances users'' mobile communication on a whole new level. Video conferencing and push email on the large 7-inch display make communication more smooth and efficient. For voice telephony, the Samsung GALAXY Tab turns out to be a perfect speakerphone on the desk, or a mobile phone on the move via Bluetooth headset.</p>', 'http://galaxytab.samsungmobile.com', 1),
(29, 1, 'sam', 'Novedoso producto', '', 2),
(29, 2, 'sam', 'Novedoso producto', '', 3),
(30, 1, 'Shoot', '', '', 0),
(30, 2, 'Shoot', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_images`
--

CREATE TABLE IF NOT EXISTS `products_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_images_prodid` (`products_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 28, 'samsung/galaxy_tab_1.jpg', NULL, 1),
(2, 28, 'samsung/galaxy_tab_2.jpg', NULL, 2),
(3, 28, 'samsung/galaxy_tab_3.jpg', NULL, 3),
(4, 28, 'samsung/galaxy_tab_4.jpg', '<object type="application/x-shockwave-flash" width="640" height="385" data="http://www.youtube.com/v/tAbsmHMAhrQ?fs=1&amp;autoplay=1"><param name="movie" value="http://www.youtube.com/v/tAbsmHMAhrQ?fs=1&amp;autoplay=1" /><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="wmode" value="transparent" /></object>', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_notifications`
--

CREATE TABLE IF NOT EXISTS `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`products_id`,`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products_notifications`
--

INSERT INTO `products_notifications` (`products_id`, `customers_id`, `date_added`) VALUES
(29, 1, '2014-08-27 18:07:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_options`
--

CREATE TABLE IF NOT EXISTS `products_options` (
  `products_options_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`products_options_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `language_id`, `products_options_name`) VALUES
(1, 1, 'Color'),
(1, 2, 'Color'),
(2, 1, 'Size'),
(2, 2, 'Size'),
(3, 1, 'Model'),
(3, 2, 'Model'),
(4, 1, 'Memory'),
(4, 2, 'Memory'),
(5, 1, 'Version'),
(5, 2, 'Version'),
(6, 1, 'Libro'),
(6, 2, 'Libro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_options_values`
--

CREATE TABLE IF NOT EXISTS `products_options_values` (
  `products_options_values_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_values_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`products_options_values_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `language_id`, `products_options_values_name`) VALUES
(1, 1, '4 mb'),
(1, 2, '4 mb'),
(2, 1, '8 mb'),
(2, 2, '8 mb'),
(3, 1, '16 mb'),
(3, 2, '16 mb'),
(4, 1, '32 mb'),
(4, 2, '32 mb'),
(5, 1, 'Value'),
(5, 2, 'Value'),
(6, 1, 'Premium'),
(6, 2, 'Premium'),
(7, 1, 'Deluxe'),
(7, 2, 'Deluxe'),
(8, 1, 'PS/2'),
(8, 2, 'PS/2'),
(9, 1, 'USB'),
(9, 2, 'USB'),
(10, 1, 'Download: Windows - English'),
(10, 2, 'Download: Windows - English'),
(13, 1, 'Box: Windows - English'),
(13, 2, 'Box: Windows - English'),
(14, 1, '0.1'),
(14, 2, '0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_options_values_to_products_options`
--

CREATE TABLE IF NOT EXISTS `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  PRIMARY KEY (`products_options_values_to_products_options_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `products_options_values_to_products_options`
--

INSERT INTO `products_options_values_to_products_options` (`products_options_values_to_products_options_id`, `products_options_id`, `products_options_values_id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 4, 3),
(4, 4, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 5, 10),
(13, 5, 13),
(14, 6, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_to_categories`
--

CREATE TABLE IF NOT EXISTS `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`products_id`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES
(1, 4),
(2, 4),
(3, 9),
(4, 10),
(5, 11),
(6, 10),
(7, 12),
(8, 13),
(9, 10),
(10, 10),
(11, 10),
(12, 10),
(13, 10),
(14, 15),
(15, 14),
(16, 15),
(17, 10),
(18, 10),
(19, 12),
(20, 15),
(21, 18),
(22, 19),
(23, 20),
(24, 20),
(25, 8),
(26, 9),
(27, 5),
(28, 21),
(29, 2),
(30, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `reviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reviews_id`),
  KEY `idx_reviews_products_id` (`products_id`),
  KEY `idx_reviews_customers_id` (`customers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `reviews`
--

INSERT INTO `reviews` (`reviews_id`, `products_id`, `customers_id`, `customers_name`, `reviews_rating`, `date_added`, `last_modified`, `reviews_status`, `reviews_read`) VALUES
(1, 19, 0, 'John Doe', 5, '2014-08-25 17:51:18', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews_description`
--

CREATE TABLE IF NOT EXISTS `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`reviews_id`,`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `reviews_description`
--

INSERT INTO `reviews_description` (`reviews_id`, `languages_id`, `reviews_text`) VALUES
(1, 1, 'This has to be one of the funniest movies released for 1999!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sec_directory_whitelist`
--

CREATE TABLE IF NOT EXISTS `sec_directory_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `sec_directory_whitelist`
--

INSERT INTO `sec_directory_whitelist` (`id`, `directory`) VALUES
(1, 'admin/backups'),
(2, 'admin/images/graphs'),
(3, 'images'),
(4, 'images/banners'),
(5, 'images/dvd'),
(6, 'images/gt_interactive'),
(7, 'images/hewlett_packard'),
(8, 'images/matrox'),
(9, 'images/microsoft'),
(10, 'images/samsung'),
(11, 'images/sierra'),
(12, 'includes/work'),
(13, 'pub');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `sesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sesskey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`sesskey`, `expiry`, `value`) VALUES
('77u1l5ej9b9ublnmb4dban2fv0', 1409182903, 'sessiontoken|s:32:"09eef96cb02ca89b8b62b5e09c25a8c5";cart|O:12:"shoppingCart":5:{s:8:"contents";a:1:{i:29;a:1:{s:3:"qty";i:1;}}s:5:"total";d:0.1000000000000000055511151231257827021181583404541015625;s:6:"weight";d:0;s:6:"cartID";s:5:"65144";s:12:"content_type";s:8:"physical";}language|s:7:"espanol";languages_id|s:1:"2";currency|s:3:"USD";navigation|O:17:"navigationHistory":2:{s:4:"path";a:1:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:1:{s:8:"language";s:2:"es";}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}customer_id|s:1:"1";customer_default_address_id|s:1:"1";customer_first_name|s:6:"Daniel";customer_country_id|s:3:"138";customer_zone_id|s:1:"0";sendto|s:1:"1";cartID|s:5:"65144";comments|N;shipping|a:3:{s:2:"id";s:9:"flat_flat";s:5:"title";s:20:"Flat Rate (Best Way)";s:4:"cost";s:4:"5.00";}billto|s:1:"1";payment|s:15:"paypal_standard";cart_PayPal_Standard_ID|s:7:"65144-2";'),
('7qj4jltb1ccrcr3rtore11m6g4', 1409354661, 'sessiontoken|s:32:"bb6cd0adedb8e3ec356ac75645f832b1";cart|O:12:"shoppingCart":5:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:6:"cartID";N;s:12:"content_type";b:0;}language|s:7:"espanol";languages_id|s:1:"2";currency|s:3:"USD";navigation|O:17:"navigationHistory":2:{s:4:"path";a:1:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:4:{s:4:"page";s:11:"account.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}'),
('8eiievpkgdmcaqqmd746jqerj6', 1409196675, 'sessiontoken|s:32:"f0dcb9ff5789f21a6b2837c798239c54";cart|O:12:"shoppingCart":5:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:6:"cartID";N;s:12:"content_type";b:0;}language|s:7:"espanol";languages_id|s:1:"2";currency|s:3:"USD";navigation|O:17:"navigationHistory":2:{s:4:"path";a:1:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}'),
('d12fv2s3358o6gd8pv9uef40r3', 1409196694, 'language|s:7:"english";languages_id|s:1:"1";admin|a:2:{s:2:"id";s:1:"1";s:8:"username";s:7:"juan420";}'),
('ddi4rgme3crs5drocem1ghq8m4', 1409184976, 'sessiontoken|s:32:"4cb3a9ce5bb196c661b098bb6a2a20e1";cart|O:12:"shoppingCart":5:{s:8:"contents";a:0:{}s:5:"total";d:139.979999999999989768184605054557323455810546875;s:6:"weight";d:16;s:6:"cartID";s:5:"83524";s:12:"content_type";b:0;}language|s:7:"espanol";languages_id|s:1:"2";currency|s:3:"MXN";navigation|O:17:"navigationHistory":2:{s:4:"path";a:1:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:1:{s:8:"currency";s:3:"MXN";}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}sendto|i:0;billto|i:0;customer_id|s:1:"1";customer_default_address_id|s:1:"1";customer_first_name|s:6:"Daniel";customer_country_id|s:3:"138";customer_zone_id|s:1:"0";'),
('f98nhs0nf1938pkp8f3d6n3fh0', 1409196660, 'sessiontoken|s:32:"70f5c04578015c9a33657a726f0d00c3";cart|O:12:"shoppingCart":4:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:12:"content_type";b:0;}language|s:7:"english";languages_id|s:1:"1";currency|s:3:"USD";navigation|O:17:"navigationHistory":2:{s:4:"path";a:1:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}'),
('m4h71t6t8l9n9jeu1c4rm0pkb4', 1409184948, 'language|s:7:"english";languages_id|s:1:"1";admin|a:2:{s:2:"id";s:1:"1";s:8:"username";s:7:"juan420";}'),
('pa9g69mkh84fk2nijvpvs614k2', 1409196612, 'language|s:7:"english";languages_id|s:1:"1";redirect_origin|a:2:{s:4:"page";s:9:"index.php";s:3:"get";a:0:{}}'),
('prt5i8qjt0fqchnegkrba2pph3', 1409182982, 'language|s:7:"english";languages_id|s:1:"1";admin|a:2:{s:2:"id";s:1:"1";s:8:"username";s:7:"juan420";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specials`
--

CREATE TABLE IF NOT EXISTS `specials` (
  `specials_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,4) NOT NULL,
  `specials_date_added` datetime DEFAULT NULL,
  `specials_last_modified` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`specials_id`),
  KEY `idx_specials_products_id` (`products_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(1, 3, '39.9900', '2014-08-25 17:51:18', NULL, NULL, NULL, 1),
(2, 5, '30.0000', '2014-08-25 17:51:18', NULL, NULL, NULL, 1),
(3, 6, '30.0000', '2014-08-25 17:51:18', NULL, NULL, NULL, 1),
(4, 16, '29.9900', '2014-08-25 17:51:18', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_class`
--

CREATE TABLE IF NOT EXISTS `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(1, 'Taxable Goods', 'The following types of products are included non-food, services, etc', '2014-08-25 17:51:18', '2014-08-25 17:51:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_rates`
--

CREATE TABLE IF NOT EXISTS `tax_rates` (
  `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,4) NOT NULL,
  `tax_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`tax_rates_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(1, 1, 1, 1, '7.0000', 'FL TAX 7.0%', '2014-08-25 17:51:18', '2014-08-25 17:51:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `whos_online`
--

CREATE TABLE IF NOT EXISTS `whos_online` (
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `idx_whos_online_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(0, 'Guest', '7qj4jltb1ccrcr3rtore11m6g4', '', '1409352100', '1409353221', '/tienda/catalog/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `idx_zones_country_id` (`zone_country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=182 ;

--
-- Volcado de datos para la tabla `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zones_to_geo_zones`
--

CREATE TABLE IF NOT EXISTS `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`association_id`),
  KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `zones_to_geo_zones`
--

INSERT INTO `zones_to_geo_zones` (`association_id`, `zone_country_id`, `zone_id`, `geo_zone_id`, `last_modified`, `date_added`) VALUES
(1, 223, 18, 1, NULL, '2014-08-25 17:51:18');
--
-- Base de datos: `webauth`
--
CREATE DATABASE IF NOT EXISTS `webauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `webauth`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
