-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2026 a las 12:51:18
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
-- Base de datos: `agencia_tiempo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes_temporales`
--

CREATE TABLE `viajes_temporales` (
  `id` int(11) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `precio_creditos` int(11) NOT NULL,
  `paradoja_resuelta` tinyint(1) NOT NULL,
  `fecha_viaje` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `viajes_temporales`
--

INSERT INTO `viajes_temporales` (`id`, `destino`, `precio_creditos`, `paradoja_resuelta`, `fecha_viaje`) VALUES
(1, 'Firma de la Declaracion', 5000, 1, '1776-07-04'),
(2, 'Construccion Piramide', 8500, 0, '2560-01-01'),
(3, 'Concierto Live Aid', 3000, 1, '1985-07-13'),
(4, 'Caida Imperio Romano', 4500, 1, '0476-09-04'),
(5, 'Descubrimiento Fuego', 10000, 0, '0000-01-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `viajes_temporales`
--
ALTER TABLE `viajes_temporales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `viajes_temporales`
--
ALTER TABLE `viajes_temporales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
