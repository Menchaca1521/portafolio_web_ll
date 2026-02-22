-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2026 a las 14:52:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin_futbol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `codigo` varchar(20) NOT NULL,
  `nombre_eq` varchar(20) DEFAULT NULL,
  `año_fundation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`codigo`, `nombre_eq`, `año_fundation`) VALUES
('EQ001', 'Real Madrid', '1902-03-06'),
('EQ002', 'Barcelona', '1899-11-29'),
('EQ003', 'Atletico Madrid', '1903-04-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juega`
--

CREATE TABLE `juega` (
  `id_juga` varchar(20) NOT NULL,
  `id_equipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `cod.jugador` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido_p` varchar(20) NOT NULL,
  `apellido_m` varchar(20) NOT NULL,
  `fecha_naci` date NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `posicion` varchar(20) NOT NULL,
  `goles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`cod.jugador`, `nombre`, `apellido_p`, `apellido_m`, `fecha_naci`, `telefono`, `posicion`, `goles`) VALUES
('J001', 'Karim', 'Benzema', '', '1987-12-19', '600111222', 'Delantero', 0),
('J002', 'Luka', 'Modric', '', '1985-09-09', '600333444', 'Centrocampista', 3),
('J003', 'Thibaut', 'Courtois', '', '1992-05-11', '600555666', 'Portero', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `juega`
--
ALTER TABLE `juega`
  ADD KEY `id_juga` (`id_juga`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`cod.jugador`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juega`
--
ALTER TABLE `juega`
  ADD CONSTRAINT `juega_ibfk_1` FOREIGN KEY (`id_juga`) REFERENCES `jugador` (`cod.jugador`),
  ADD CONSTRAINT `juega_ibfk_2` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
